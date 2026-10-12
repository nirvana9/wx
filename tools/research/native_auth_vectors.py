#!/usr/bin/env python3
"""Synthetic auth evidence only: no client startup, account input or network.

Requires the pinned ELF and OpenSSL CLI. The single-thread guest model supplies
locks/once/TLS, an empty environment, fixed PID/time, synthetic entropy and memory
comparisons. All guest syscalls remain refused. No ECC, MD5, AES or protobuf
implementation is replaced. Scalars1/2 and every token/key/identity are synthetic.
Product Go code does not run this tool or depend on OpenSSL/the client.
"""
from pathlib import Path
import sys,struct,hashlib
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from native_crypto_vectors import NativeCrypto
import argparse,subprocess,json
ap=argparse.ArgumentParser(description='Replay synthetic pinned native auth key and serializer vectors')
ap.add_argument('--elf',type=Path,required=True)
ap.add_argument('--output',type=Path,required=True)
args=ap.parse_args();r=args.output;r.mkdir(parents=True,exist_ok=True)
n=NativeCrypto(args.elf.read_bytes())
for name,d in [('client',1),('server',2)]:
 sec=bytes.fromhex('020101041c')+d.to_bytes(28,'big')+bytes.fromhex('a00706052b81040021')
 p=r/(name+'-bare.der');p.write_bytes(bytes([0x30,len(sec)])+sec)
 for extra,target in [([],name+'.der'),(['-pubout'],name+'-pub.der')]:
  subprocess.run(['openssl','ec','-inform','DER','-in',str(p),*extra,'-outform','DER','-out',str(r/target)],check=True,capture_output=True)
 subprocess.run(['openssl','ec','-inform','DER','-in',str(p),'-out',str(r/(name+'.pem'))],check=True,capture_output=True)
 pub=(r/(name+'-pub.der')).read_bytes()[-57:];assert pub[0]==4;(r/(name+'-point.bin')).write_bytes(pub)
subprocess.run(['openssl','pkeyutl','-derive','-inkey',str(r/'client.pem'),'-peerkey',str(r/'server-pub.der'),'-peerform','DER','-out',str(r/'openssl-shared.bin')],check=True,capture_output=True)
base_import=n.import_call
once_stack=[]
thread_keys={}
thread_values={}
def finish_once(*_):
 a=once_stack.pop();n.cpu.mem_write(a,struct.pack('<I',2));n._return(0)
n.cpu.hook_add(n.u.UC_HOOK_CODE,finish_once,begin=n.RETURN+0x100,end=n.RETURN+0x100)
# Single guest thread: lock imports have no competing owner. No crypto is shimmed.
def imports(name):
 if name in ('pthread_rwlock_init','pthread_rwlock_destroy','pthread_rwlock_rdlock','pthread_rwlock_wrlock','pthread_rwlock_unlock','pthread_mutex_init','pthread_mutex_destroy','pthread_mutex_lock','pthread_mutex_unlock'):
  n.import_counts[name]=n.import_counts.get(name,0)+1;n._return(0)
 elif name=='memcmp':
  x=n.x;a=n.cpu.reg_read(x.UC_X86_REG_RDI);b=n.cpu.reg_read(x.UC_X86_REG_RSI);c=n.cpu.reg_read(x.UC_X86_REG_RDX)
  if c>1<<20:raise ValueError('guest compare budget')
  left=bytes(n.cpu.mem_read(a,c));right=bytes(n.cpu.mem_read(b,c));n.import_counts[name]=n.import_counts.get(name,0)+1;n._return((left>right)-(left<right))
 elif name=='getentropy':
  x=n.x;a=n.cpu.reg_read(x.UC_X86_REG_RDI);b=n.cpu.reg_read(x.UC_X86_REG_RSI)
  if b>256:raise ValueError('guest entropy budget')
  n.cpu.mem_write(a,bytes((i+1)%256 for i in range(b)));n.import_counts[name]=n.import_counts.get(name,0)+1;n._return(0)
 elif name=='time':
  x=n.x;a=n.cpu.reg_read(x.UC_X86_REG_RDI)
  if a:n._write_u64(a,1700000000)
  n.import_counts[name]=n.import_counts.get(name,0)+1;n._return(1700000000)
 elif name=='clock_gettime':
  x=n.x;a=n.cpu.reg_read(x.UC_X86_REG_RSI);n.cpu.mem_write(a,struct.pack('<QQ',1700000000,0));n.import_counts[name]=n.import_counts.get(name,0)+1;n._return(0)
 elif name=='pthread_self':
  n.import_counts[name]=n.import_counts.get(name,0)+1;n._return(1)
 elif name=='getpid':
  n.import_counts[name]=n.import_counts.get(name,0)+1;n._return(42)
 elif name=='__cxa_atexit':
  n.import_counts[name]=n.import_counts.get(name,0)+1;n._return(0)
 elif name=='getenv':
  n.import_counts[name]=n.import_counts.get(name,0)+1;n._return(0)
 elif name in ('pthread_key_create','pthread_getspecific','pthread_setspecific'):
  x=n.x;a=n.cpu.reg_read(x.UC_X86_REG_RDI);b=n.cpu.reg_read(x.UC_X86_REG_RSI);n.import_counts[name]=n.import_counts.get(name,0)+1
  if name=='pthread_key_create':
   k=len(thread_keys)+1;thread_keys[k]=b;n.cpu.mem_write(a,struct.pack('<I',k));n._return(0)
  elif name=='pthread_getspecific':n._return(thread_values.get(a,0))
  else:thread_values[a]=b;n._return(0)
 elif name=='pthread_once':
  x=n.x;a=n.cpu.reg_read(x.UC_X86_REG_RDI);b=n.cpu.reg_read(x.UC_X86_REG_RSI)
  n.import_counts[name]=n.import_counts.get(name,0)+1
  if int.from_bytes(n.cpu.mem_read(a,4),'little')==2:n._return(0)
  else:
   once_stack.append(a);sp=n.cpu.reg_read(x.UC_X86_REG_RSP)-8;n._write_u64(sp,n.RETURN+0x100);n.cpu.reg_write(x.UC_X86_REG_RSP,sp);n.cpu.reg_write(x.UC_X86_REG_RIP,b)
 else:base_import(name)
n.import_call=imports
def invoke(entry,args):
 if entry not in (0x8b1c600,0x8b1c3f0,0x79c67e0,0x8f50740,0x77ccdd0):raise ValueError('unsupported native entry')
 x=n.x;sp=n.STACK+(1<<20)-8;n._write_u64(sp,n.RETURN)
 for reg,value in zip((x.UC_X86_REG_RDI,x.UC_X86_REG_RSI,x.UC_X86_REG_RDX,x.UC_X86_REG_RCX,x.UC_X86_REG_R8,x.UC_X86_REG_R9),args):n.cpu.reg_write(reg,value)
 for i,value in enumerate(args[6:]):n._write_u64(sp+8+i*8,value)
 n.cpu.reg_write(x.UC_X86_REG_RSP,sp);n.cpu.emu_start(entry,n.RETURN,timeout=30_000_000,count=50_000_000)
 if n.cpu.reg_read(x.UC_X86_REG_RIP)!=n.RETURN:raise ValueError('CPU budget at '+hex(n.cpu.reg_read(x.UC_X86_REG_RIP))+' imports '+str(n.import_counts))
 return n.cpu.reg_read(x.UC_X86_REG_RAX)
# No CPU math/hash hooks are installed. Inputs are deliberately synthetic.
shared=(r/'openssl-shared.bin').read_bytes();out=n.allocate(16);outlen=n.allocate(8);n._write_u64(outlen,16)
invoke(0x8b1c600,[n._bytes(shared),len(shared),out,outlen]);key=bytes(n.cpu.mem_read(out,16));assert key==hashlib.md5(shared).digest();(r/'native-derived.bin').write_bytes(key);print('Native callback matches MD5 of padded P224 shared coordinate')
result=n._string(b'');res=invoke(0x8b1c3f0,[713,n._string((r/'server-point.bin').read_bytes()),n._string((r/'client.der').read_bytes()),result,0]);actual=n._read_string(result);assert res>0 and actual==key;print('Native full ECDH/KDF matches OpenSSL + native callback; imports',n.import_counts)

import subprocess,json
plain=b'synthetic-sess16';assert len(plain)==16
(r/'plain-session.bin').write_bytes(plain)
subprocess.run(['openssl','enc','-aes-128-cbc','-K',key.hex(),'-iv',key.hex(),'-in',str(r/'plain-session.bin'),'-out',str(r/'encrypted-session.bin')],check=True,capture_output=True)
ct=(r/'encrypted-session.bin').read_bytes();buf=n.allocate(24);res=invoke(0x79c67e0,[n._bytes(ct),len(ct),buf,n._bytes(key),len(key)]);value=bytes(n.cpu.mem_read(n._read_u64(buf),int.from_bytes(n.cpu.mem_read(buf+8,4),'little')));assert res==0 and value==plain
print('Native CBC unwrap recovered expected synthetic 16-byte session key')
maps={x['type']:int(x['vtable_address_point'],16) for x in json.load(open(Path(__file__).resolve().parents[2]/'docs/reverse/evidence/message-function-map.json'))};maps['micromsg.AcctSectResp']=0xa9a2028
def obj(name,size):
 a=n.allocate(size);n._write_u64(a,maps['micromsg.'+name]);return a
def w32(a,v):n.cpu.mem_write(a,struct.pack('<I',v&0xffffffff))
def buffer(data):
 a=obj('SKBuiltinBuffer_t',0x20);n._write_u64(a+8,n._string(data));w32(a+0x10,len(data));w32(a+0x18,3);return a
ecdh=obj('ECDHKey',0x20);n._write_u64(ecdh+8,buffer((r/'server-point.bin').read_bytes()));w32(ecdh+0x10,713);w32(ecdh+0x18,3)
auth=obj('AuthSectResp',0xc8);w32(auth+8,12345678);n._write_u64(auth+0x10,ecdh);n._write_u64(auth+0x18,buffer(ct));n._write_u64(auth+0x20,buffer(b'synthetic-auto-token'));n._write_u64(auth+0x60,buffer(b'synthetic-a2-token'));n._write_u64(auth+0x98,buffer(b'client-key16byte'));n._write_u64(auth+0xa0,buffer(b'server-key16byte'));w32(auth+0x84,4);w32(auth+0xc0,(1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<11)|(1<<17)|(1<<21)|(1<<22))
base=obj('BaseResponse',0x20);w32(base+0x10,0);w32(base+0x18,1)
acct=obj('AcctSectResp',0x90);n._write_u64(acct+8,n._string(b'wxid_synthetic'));w32(acct+0x8c,1)
resp=obj('UnifyAuthResponse',0x40);n._write_u64(resp+8,base);n._write_u64(resp+0x10,auth);n._write_u64(resp+0x18,acct);w32(resp+0x30,1);w32(resp+0x38,15)
# Save serializer output separately; mask offsets are checked against native asm.
out=n._string(b'');invoke(0x8f50740,[out,resp]);encoded=n._read_string(out);(r/'native-auth-response.bin').write_bytes(encoded)
result=n.allocate(0x30);n._write_u64(result+0x20,resp)
outs=[n._string(b'') for _ in range(4)];invoke(0x77ccdd0,[result,n._string((r/'client.der').read_bytes()),*outs]);got=[n._read_string(x) for x in outs];print('Synthetic native output lengths:',[len(x) for x in got]);print('Synthetic native output comparison:',[x==y for x,y in zip(got,[plain,key,b'client-key16byte',b'server-key16byte'])]);assert got==[plain,key,b'client-key16byte',b'server-key16byte'];print('Native whole response key routine recovered four distinct outputs')
v={'elf_sha256':n.elf_sha256,'provenance':'Synthetic P224 scalar1/2; actual native ComputeDh, MD5 KDF, AES-CBC and complete response key routine replayed in a single-thread CPU emulator with explicit guest OS/entropy models, no crypto math/hash shims.','private_der':(r/'client.der').read_bytes().hex(),'peer_point':(r/'server-point.bin').read_bytes().hex(),'derived_key':key.hex(),'session_cipher':ct.hex(),'session_key':plain.hex(),'client_session_key':got[2].hex(),'server_session_key':got[3].hex(),'auth_response':encoded.hex(),'imports':n.import_counts}
def response_bytes(ret):
 w32(base+0x10,ret);out=n._string(b'');invoke(0x8f50740,[out,resp]);return n._read_string(out).hex()
v['rejected_response']=response_bytes(-8);
rsa=obj('ManualAuthRsaReqData',0x38);n._write_u64(rsa+8,buffer(b'random-key16byte'));pub=obj('ECDHKey',0x20);n._write_u64(pub+8,buffer((r/'client-point.bin').read_bytes()));w32(pub+0x10,713);w32(pub+0x18,3);n._write_u64(rsa+0x10,pub);n._write_u64(rsa+0x18,n._string(b'wxid_synthetic'));n._write_u64(rsa+0x20,n._string(b'qr-proof-synthetic'));n._write_u64(rsa+0x28,n._string(b'qr-proof-synthetic'));w32(rsa+0x34,31)
out=n._string(b'');invoke(0x8f50740,[out,rsa]);v['auth_core']=n._read_string(out).hex();v['client_point']=(r/'client-point.bin').read_bytes().hex();v['random_key']=b'random-key16byte'.hex()
(r/'auth-native-vectors.json').write_text(json.dumps(v,indent=2)+'\n')
