#!/usr/bin/env python3
"""Replay isolated cipher functions from ONE pinned ELF in a CPU emulator.

No host execution, guest syscalls, network, accounts, AES/HMAC/HKDF shims or
client initialization. Entropy and the unused manager accessor are explicit
hooks; five memory-allocation/copy imports are modeled inside guest memory.
"""
import argparse
import hashlib
import io
import json
from pathlib import Path
import struct

PINNED_ELF_SHA256='2ca28ea56b1a400543d0128ebaf0b93f88172dd66dc0426d3d74fdb971eab959'
INPUT_LIMIT=1<<20

class NativeCrypto:
    STACK=0x40000000
    HEAP=0x50000000
    TLS=0x60000000
    RETURN=0x70000000
    IMPORTS=0x71000000
    HEAP_BYTES=16<<20

    def __init__(self,data):
        self.elf_sha256=hashlib.sha256(data).hexdigest()
        if self.elf_sha256!=PINNED_ELF_SHA256:
            raise ValueError('ELF hash mismatch; only the pinned sample is supported')
        from elftools.elf.elffile import ELFFile
        import unicorn as u
        from unicorn import x86_const as x
        self.x=x
        self.u=u
        self.cpu=u.Uc(u.UC_ARCH_X86,u.UC_MODE_64)
        elf=ELFFile(io.BytesIO(data))
        segments=[s for s in elf.iter_segments() if s['p_type']=='PT_LOAD']
        end=max(s['p_vaddr']+s['p_memsz'] for s in segments)
        self.cpu.mem_map(0,(end+4095)&-4096)
        for segment in segments:
            self.cpu.mem_write(segment['p_vaddr'],data[segment['p_offset']:segment['p_offset']+segment['p_filesz']])
        for address,size in [(self.STACK,2<<20),(self.HEAP,self.HEAP_BYTES),(self.TLS,1<<20),(self.RETURN,4096),(self.IMPORTS,1<<20)]:
            self.cpu.mem_map(address,size)
        self.cpu.reg_write(x.UC_X86_REG_FS_BASE,self.TLS)
        self._heap_next=self.HEAP
        self._nonce=None
        self.import_counts={}
        self.entropy_calls=0
        symbols=elf.get_section_by_name('.dynsym')
        index=0
        for name in ('.rela.dyn','.rela.plt'):
            for r in elf.get_section_by_name(name).iter_relocations():
                kind=r['r_info_type']
                if kind==8:
                    self._write_u64(r['r_offset'],r['r_addend'])
                elif kind in (6,7) and r['r_info_sym']:
                    symbol=symbols.get_symbol(r['r_info_sym']).name
                    entry=self.IMPORTS+index*16
                    index+=1
                    self._write_u64(r['r_offset'],entry)
                    def hook(cpu,address,size,user,symbol=symbol):
                        self.import_call(symbol)
                    self.cpu.hook_add(u.UC_HOOK_CODE,hook,begin=entry,end=entry)
        # This accessor supplies an unused argument to the two raw GCM helpers.
        self.cpu.hook_add(u.UC_HOOK_CODE,lambda *args:self._return(0),begin=0x8b1eb00,end=0x8b1eb00)
        self.cpu.hook_add(u.UC_HOOK_CODE,self._entropy,begin=0x8b1eb60,end=0x8b1eb60)
        self.cpu.hook_add(u.UC_HOOK_INSN,self._syscall,None,1,0,x.UC_X86_INS_SYSCALL)

    def _syscall(self,*args):
        raise ValueError('guest syscall refused')

    def _write_u64(self,address,value):
        self.cpu.mem_write(address,struct.pack('<Q',value&((1<<64)-1)))

    def _read_u64(self,address):
        return struct.unpack('<Q',self.cpu.mem_read(address,8))[0]

    def allocate(self,size):
        if size<0 or size>self.HEAP_BYTES:
            raise ValueError('guest allocation budget exceeded')
        address=self._heap_next
        end=(address+max(16,size)+15)&-16
        if end>self.HEAP+self.HEAP_BYTES:
            raise ValueError('guest heap budget exceeded')
        self._heap_next=end
        return address

    def _bytes(self,data):
        address=self.allocate(len(data)+1)
        self.cpu.mem_write(address,data+b'\0')
        return address

    def _string(self,data):
        address=self.allocate(24)
        if len(data)<=22:
            raw=bytes([len(data)*2])+data+b'\0'
            self.cpu.mem_write(address,raw+b'\0'*(24-len(raw)))
        else:
            capacity=(len(data)+16)&-16
            buffer=self.allocate(capacity)
            self.cpu.mem_write(buffer,data+b'\0')
            self.cpu.mem_write(address,struct.pack('<QQQ',capacity|1,len(data),buffer))
        return address

    def _read_string(self,address):
        tag=self.cpu.mem_read(address,1)[0]
        if tag&1:
            length=self._read_u64(address+8)
            pointer=self._read_u64(address+16)
        else:
            length=tag>>1
            pointer=address+1
        if length>INPUT_LIMIT+28:
            raise ValueError('guest output limit exceeded')
        return bytes(self.cpu.mem_read(pointer,length))

    def _return(self,result):
        x=self.x
        sp=self.cpu.reg_read(x.UC_X86_REG_RSP)
        self.cpu.reg_write(x.UC_X86_REG_RAX,result&((1<<64)-1))
        self.cpu.reg_write(x.UC_X86_REG_RIP,self._read_u64(sp))
        self.cpu.reg_write(x.UC_X86_REG_RSP,sp+8)

    def import_call(self,name):
        x=self.x
        a,b,c=(self.cpu.reg_read(r) for r in (x.UC_X86_REG_RDI,x.UC_X86_REG_RSI,x.UC_X86_REG_RDX))
        self.import_counts[name]=self.import_counts.get(name,0)+1
        if name=='malloc':
            self._return(self.allocate(a))
        elif name=='free':
            self._return(0)
        elif name in ('memcpy','memmove','memset'):
            if c>self.HEAP_BYTES:
                raise ValueError('guest copy budget exceeded')
            data=bytes([b&255])*c if name=='memset' else bytes(self.cpu.mem_read(b,c))
            if c:
                self.cpu.mem_write(a,data)
            self._return(a)
        else:
            raise ValueError('unsupported import '+name)

    def _entropy(self,*args):
        x=self.x
        length=self.cpu.reg_read(x.UC_X86_REG_RSI)
        destination=self.cpu.reg_read(x.UC_X86_REG_RDX)
        if length!=12 or self._nonce is None:
            raise ValueError('unexpected native entropy request')
        self.cpu.mem_write(destination,b'\x18'+self._nonce+b'\0'*11)
        self.entropy_calls+=1
        self._return(0)

    def _invoke(self,entry,args):
        x=self.x
        if entry not in (0x8b1c710,0x8b1c950,0x8b211c0):
            raise ValueError('unsupported native entry')
        registers=(x.UC_X86_REG_RDI,x.UC_X86_REG_RSI,x.UC_X86_REG_RDX,x.UC_X86_REG_RCX,x.UC_X86_REG_R8,x.UC_X86_REG_R9)
        sp=self.STACK+(1<<20)-8
        self._write_u64(sp,self.RETURN)
        for reg,value in zip(registers,args):
            self.cpu.reg_write(reg,value)
        for i,value in enumerate(args[6:]):
            self._write_u64(sp+8+8*i,value)
        self.cpu.reg_write(x.UC_X86_REG_RSP,sp)
        self.cpu.emu_start(entry,self.RETURN,timeout=10_000_000,count=2_000_000)
        if self.cpu.reg_read(x.UC_X86_REG_RIP)!=self.RETURN:
            raise ValueError('native CPU budget exceeded')
        return self.cpu.reg_read(x.UC_X86_REG_RAX)&0xffffffff

    def _check_inputs(self,*inputs):
        if any(len(data)>INPUT_LIMIT for data in inputs):
            raise ValueError('native vector input limit exceeded')

    def seal(self,key,nonce,aad,plain):
        self._check_inputs(key,nonce,aad,plain)
        if len(key) not in (16,24,32) or len(nonce)!=12:
            raise ValueError('invalid GCM vector material')
        self._nonce=nonce
        out=self._string(b'')
        try:
            result=self._invoke(0x8b1c710,[self._bytes(key),len(key),self._bytes(aad),len(aad),self._bytes(plain),len(plain),out])
        finally:
            self._nonce=None
        return result,self._read_string(out) if result==0 else b''

    def open(self,key,aad,envelope):
        self._check_inputs(key,aad,envelope)
        if len(key) not in (16,24,32):
            raise ValueError('invalid GCM vector key')
        out=self._string(b'')
        result=self._invoke(0x8b1c950,[self._bytes(key),len(key),self._bytes(aad),len(aad),self._bytes(envelope),len(envelope),out])
        # Native EVP may have written unauthenticated bytes before returning an
        # error. The research API deliberately does not expose those bytes.
        return result,self._read_string(out) if result==0 else b''

    def hkdf(self,salt,ikm,info,length):
        self._check_inputs(salt,ikm,info)
        if length<0 or length>INPUT_LIMIT:
            raise ValueError('invalid HKDF vector size')
        out=self._string(b'')
        result=self._invoke(0x8b211c0,[0,self._string(salt),self._string(ikm),self._string(info),out,length])
        return result,self._read_string(out) if result==0 else b''


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--elf',type=Path,required=True,help='extracted pinned ELF, not an executable to launch')
    parser.add_argument('--vectors',type=Path,default=Path(__file__).resolve().parents[1]/'testdata/crypto/native_vectors.json')
    args=parser.parse_args()
    vm=NativeCrypto(args.elf.read_bytes())
    vectors=json.loads(args.vectors.read_text())
    for v in vectors['aes_gcm']:
        key,nonce,aad,plain=(bytes.fromhex(v[n]) for n in ('key_hex','nonce_hex','aad_hex','plain_hex'))
        envelope=bytes.fromhex(v['envelope_hex'])
        if vm.seal(key,nonce,aad,plain)!=(0,envelope) or vm.open(key,aad,envelope)!=(0,plain):
            raise ValueError('native AES vector mismatch: '+v['name'])
        bad=bytearray(envelope);bad[-1]^=1
        if vm.open(key,aad,bytes(bad))!=(0xffffffff,b''):
            raise ValueError('native corrupted-tag rejection mismatch: '+v['name'])
    for v in vectors['hkdf_sha256']:
        inputs=[bytes.fromhex(v[n]) for n in ('salt_hex','ikm_hex','info_hex')]
        if vm.hkdf(*inputs,v['length'])!=(v['result'],bytes.fromhex(v['output_hex'])):
            raise ValueError('native HKDF vector mismatch: '+v['name'])
    print(json.dumps({'elf_sha256':vm.elf_sha256,'aes_vectors':len(vectors['aes_gcm']),'hkdf_vectors':len(vectors['hkdf_sha256']),'entropy_calls':vm.entropy_calls,'imports':vm.import_counts,'live_verified':False},sort_keys=True))

if __name__=='__main__':
    main()
