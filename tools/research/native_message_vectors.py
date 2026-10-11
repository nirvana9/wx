#!/usr/bin/env python3
"""Offline, synthetic serializer evidence. This does not run the client or log in.

Construct guest message objects at independently recovered member offsets and
call the real generic/native size and serialization routines. NativeCrypto
refuses a different ELF, all guest syscalls and every non-memory import.
Only malloc/memset/memcpy were used by this experiment. No network or account
input is accepted. Product Go code does not import or execute this tool.
"""
from pathlib import Path
import sys,struct,json
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from native_crypto_vectors import NativeCrypto
import argparse
ap=argparse.ArgumentParser(description='Generate synthetic body vectors using only the pinned ELF serializers')
ap.add_argument('--elf',type=Path,required=True)
ap.add_argument('--output',type=Path,required=True)
args=ap.parse_args()
r=args.output;r.mkdir(parents=True,exist_ok=True)
n=NativeCrypto(args.elf.read_bytes())
def call(entry,*args):
 if entry not in (0x79ec8f0,0x7ba09f0,0x8f50740):raise ValueError('unsupported serializer entry')
 x=n.x;sp=n.STACK+(1<<20)-8;n._write_u64(sp,n.RETURN)
 for reg,value in zip((x.UC_X86_REG_RDI,x.UC_X86_REG_RSI,x.UC_X86_REG_RDX,x.UC_X86_REG_RCX,x.UC_X86_REG_R8,x.UC_X86_REG_R9),args):n.cpu.reg_write(reg,value)
 n.cpu.reg_write(x.UC_X86_REG_RSP,sp);n.cpu.emu_start(entry,n.RETURN,timeout=10_000_000,count=2_000_000)
 if n.cpu.reg_read(x.UC_X86_REG_RIP)!=n.RETURN:raise ValueError('CPU budget')
 return n.cpu.reg_read(x.UC_X86_REG_RAX)
def w32(a,v):n.cpu.mem_write(a,struct.pack('<I',v))
msg=n.allocate(0x38);call(0x79ec8f0,msg)
to=n.allocate(0x18);call(0x7ba09f0,to)
n._write_u64(to+8,n._string(b'wxid_synthetic'));w32(to+0x14,1)
n._write_u64(msg+8,to);n._write_u64(msg+0x10,n._string('synthetic 你好'.encode()))
w32(msg+0x18,1);w32(msg+0x1c,1700000000);w32(msg+0x28,123456);w32(msg+0x34,0x1f)

def serialize(msg):
 out=n._string(b'');call(0x8f50740,out,msg);return n._read_string(out)
def array(item):
 a=n.allocate(8);n._write_u64(a,item);return a
maps={x['type']:int(x['vtable_address_point'],16) for x in json.load(open(Path(__file__).resolve().parents[2]/'docs/reverse/evidence/message-function-map.json'))}
def object(name,size):
 a=n.allocate(size);n._write_u64(a,maps['micromsg.'+name]);return a
req=object('SendMsgRequestNew',0x30)
n._write_u64(req+8,array(msg));w32(req+0x10,1);w32(req+0x20,1);w32(req+0x28,1)
request=serialize(req)
print('Native request:',request.hex())
# Response fields 3--7 are deliberately unmapped; values below are synthetic.
def response(ret=0,parent=0,field3=123456,recipient=to,serverid=9876543210987654321):
 b=object('BaseResponse',0x20);w32(b+0x10,parent&0xffffffff);w32(b+0x18,1)
 m=object('MicroMsgResponseNew',0x38)
 n._write_u64(m+8,recipient);w32(m+0x10,ret&0xffffffff);w32(m+0x14,field3);w32(m+0x18,1700000001);w32(m+0x1c,123);w32(m+0x20,1);w32(m+0x24,0);n._write_u64(m+0x28,serverid);w32(m+0x34,0xff)
 resp=object('SendMsgResponseNew',0x38);n._write_u64(resp+8,b);n._write_u64(resp+0x10,array(m));w32(resp+0x18,1);w32(resp+0x28,1);w32(resp+0x30,3)
 return serialize(resp)
v={'elf_sha256':n.elf_sha256,'provenance':'Pinned ELF virtual size and serialization routines executed in an isolated x86_64 CPU emulator; synthetic inputs only, no client startup, syscalls or network.','request':{'to':'wxid_synthetic','text':'synthetic 你好','client_id':123456,'created_at':1700000000,'hex':request.hex()},'replies':[{ 'name':name,'hex':response(**args).hex()} for name,args in [('accepted',{}),('child_rejected',{'ret':-5}),('parent_rejected',{'parent':-8}),('alternate_field3',{'field3':123457})]],'imports':n.import_counts}
(r/'send-body-vectors.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
print('Native replies generated:',len(v['replies']),'imports:',n.import_counts)

def buffer(data):
 b=object('SKBuiltinBuffer_t',0x20);n._write_u64(b+8,n._string(data));w32(b+0x10,len(data));w32(b+0x18,3);return b
def sync_response(code=0):
 items=[]
 for cid,data in [(7,b'synthetic opaque A'),(2147483647,b'synthetic opaque B')]:
  c=object('CmdItem',0x20);n._write_u64(c+8,buffer(data));w32(c+0x10,cid);w32(c+0x18,3);items.append(c)
 a=n.allocate(len(items)*8)
 for i,item in enumerate(items):n._write_u64(a+i*8,item)
 cmds=object('CmdList',0x30);n._write_u64(cmds+8,a);w32(cmds+0x10,len(items));w32(cmds+0x20,len(items));w32(cmds+0x28,1)
 resp=object('NewSyncResponse',0x38);n._write_u64(resp+8,cmds);w32(resp+0x10,code&0xffffffff);w32(resp+0x14,1);w32(resp+0x30,7)
 return serialize(resp)
v={'elf_sha256':n.elf_sha256,'provenance':'Isolated pinned ELF serializers with synthetic opaque command buffers; no account message or network sample.','response_hex':sync_response().hex(),'rejected_hex':sync_response(-8).hex(),'imports':n.import_counts}
(r/'sync-body-vectors.json').write_text(json.dumps(v,indent=2)+'\n');print('Native sync vector generated')
