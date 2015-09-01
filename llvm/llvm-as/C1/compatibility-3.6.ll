







target datalayout = "E"


target triple = "x86_64-apple-macosx10.10.0"



module asm "beep boop"



$comdat.any = comdat any

$comdat.exactmatch = comdat exactmatch

$comdat.largest = comdat largest

$comdat.noduplicates = comdat noduplicates

$comdat.samesize = comdat samesize



@comdat.any = global i32 0, comdat

@comdat.exactmatch = global i32 0, comdat

@comdat.largest = global i32 0, comdat

@comdat.noduplicates = global i32 0, comdat

@comdat.samesize = global i32 0, comdat



$comdat1 = comdat any
$comdat2 = comdat any
@g.comdat1 = global i32 0, section "SharedSection", comdat($comdat1)

@g.comdat2 = global i32 0, section "SharedSection", comdat($comdat2)



@const.true = constant i1 true

@const.false = constant i1 false

@const.int = constant i32 zeroinitializer

@const.float = constant double 0.0

@const.null = constant i8* null

%const.struct.type = type { i32, i8 }
%const.struct.type.packed = type <{ i32, i8 }>
@const.struct = constant %const.struct.type { i32 -1, i8 undef }

@const.struct.packed = constant %const.struct.type.packed <{ i32 -1, i8 1 }>

@const.array = constant [2 x i32] [i32 -3, i32 -4]

@const.vector = constant <2 x i32> <i32 -5, i32 -6>









@g1 = global i32 0

@g2 = constant i32 0



@g.private = private global i32 0

@g.internal = internal global i32 0

@g.available_externally = available_externally global i32 0

@g.linkonce = linkonce global i32 0

@g.weak = weak global i32 0

@g.common = common global i32 0

@g.appending = appending global [4 x i8] c"test"

@g.extern_weak = extern_weak global i32

@g.linkonce_odr = linkonce_odr global i32 0

@g.weak_odr = weak_odr global i32 0

@g.external = external global i32



@g.default = default global i32 0

@g.hidden = hidden global i32 0

@g.protected = protected global i32 0



@g.dlldefault = default global i32 0

@g.dllimport = external dllimport global i32

@g.dllexport = dllexport global i32 0



@g.notthreadlocal = global i32 0

@g.generaldynamic = thread_local global i32 0

@g.localdynamic = thread_local(localdynamic) global i32 0

@g.initialexec = thread_local(initialexec) global i32 0

@g.localexec = thread_local(localexec) global i32 0



@g.unnamed_addr = unnamed_addr global i32 0



@g.addrspace = addrspace(1) global i32 0



@g.externally_initialized = external externally_initialized global i32



@g.section = global i32 0, section "_DATA"



@g.align = global i32 0, align 4



%pri.func.data = type { i32, void ()*, i8* }
@g.used1 = global i32 0
@g.used2 = global i32 0
@g.used3 = global i8 0
declare void @g.f1()
@llvm.used = appending global [1 x i32*] [i32* @g.used1], section "llvm.metadata"

@llvm.compiler.used = appending global [1 x i32*] [i32* @g.used2], section "llvm.metadata"

@llvm.global_ctors = appending global [1 x %pri.func.data] [%pri.func.data { i32 0, void ()* @g.f1, i8* @g.used3 }], section "llvm.metadata"

@llvm.global_dtors = appending global [1 x %pri.func.data] [%pri.func.data { i32 0, void ()* @g.f1, i8* @g.used3 }], section "llvm.metadata"







@a.private = private alias i32* @g.private

@a.internal = internal alias i32* @g.internal

@a.linkonce = linkonce alias i32* @g.linkonce

@a.weak = weak alias i32* @g.weak

@a.linkonce_odr = linkonce_odr alias i32* @g.linkonce_odr

@a.weak_odr = weak_odr alias i32* @g.weak_odr

@a.external = external alias i32* @g1



@a.default = default alias i32* @g.default

@a.hidden = hidden alias i32* @g.hidden

@a.protected = protected alias i32* @g.protected



@a.dlldefault = default alias i32* @g.dlldefault

@a.dllimport = dllimport alias i32* @g1

@a.dllexport = dllexport alias i32* @g.dllexport



@a.notthreadlocal = alias i32* @g.notthreadlocal

@a.generaldynamic = thread_local alias i32* @g.generaldynamic

@a.localdynamic = thread_local(localdynamic) alias i32* @g.localdynamic

@a.initialexec = thread_local(initialexec) alias i32* @g.initialexec

@a.localexec = thread_local(localexec) alias i32* @g.localexec



@a.unnamed_addr = unnamed_addr alias i32* @g.unnamed_addr











declare void @f1 ()


define void @f2 () {

entry:
  ret void
}


define private void @f.private() {

entry:
  ret void
}
define internal void @f.internal() {

entry:
  ret void
}
define available_externally void @f.available_externally() {

entry:
  ret void
}
define linkonce void @f.linkonce() {

entry:
  ret void
}
define weak void @f.weak() {

entry:
  ret void
}
define linkonce_odr void @f.linkonce_odr() {

entry:
  ret void
}
define weak_odr void @f.weak_odr() {

entry:
  ret void
}
declare external void @f.external()

declare extern_weak void @f.extern_weak()



declare default void @f.default()

declare hidden void @f.hidden()

declare protected void @f.protected()



declare dllimport void @f.dllimport()

declare dllexport void @f.dllexport()



declare ccc void @f.ccc()

declare fastcc void @f.fastcc()

declare coldcc void @f.coldcc()

declare cc10 void @f.cc10()

declare ghccc void @f.ghccc()

declare cc11 void @f.cc11()

declare webkit_jscc void @f.webkit_jscc()

declare anyregcc void @f.anyregcc()

declare preserve_mostcc void @f.preserve_mostcc()

declare preserve_allcc void @f.preserve_allcc()

declare cc64 void @f.cc64()

declare x86_stdcallcc void @f.x86_stdcallcc()

declare cc65 void @f.cc65()

declare x86_fastcallcc void @f.x86_fastcallcc()

declare cc66 void @f.cc66()

declare arm_apcscc void @f.arm_apcscc()

declare cc67 void @f.cc67()

declare arm_aapcscc void @f.arm_aapcscc()

declare cc68 void @f.cc68()

declare arm_aapcs_vfpcc void @f.arm_aapcs_vfpcc()

declare cc69 void @f.cc69()

declare msp430_intrcc void @f.msp430_intrcc()

declare cc70 void @f.cc70()

declare x86_thiscallcc void @f.x86_thiscallcc()

declare cc71 void @f.cc71()

declare ptx_kernel void @f.ptx_kernel()

declare cc72 void @f.cc72()

declare ptx_device void @f.ptx_device()

declare cc75 void @f.cc75()

declare spir_func void @f.spir_func()

declare cc76 void @f.cc76()

declare spir_kernel void @f.spir_kernel()

declare cc77 void @f.cc77()

declare intel_ocl_bicc void @f.intel_ocl_bicc()

declare cc78 void @f.cc78()

declare x86_64_sysvcc void @f.x86_64_sysvcc()

declare cc79 void @f.cc79()

declare x86_64_win64cc void @f.x86_64_win64cc()

declare cc80 void @f.cc80()

declare x86_vectorcallcc void @f.x86_vectorcallcc()

declare cc8191 void @f.cc8191()



declare zeroext i64 @f.zeroext()

declare signext i64 @f.signext()

declare inreg i32* @f.inreg()

declare noalias i32* @f.noalias()

declare nonnull i32* @f.nonnull()

declare dereferenceable(4) i32* @f.dereferenceable4()

declare dereferenceable(8) i32* @f.dereferenceable8()

declare dereferenceable(16) i32* @f.dereferenceable16()



declare void @f.param.zeroext(i8 zeroext)

declare void @f.param.signext(i8 signext)

declare void @f.param.inreg(i8 inreg)

declare void @f.param.byval({ i8, i8 }* byval)

declare void @f.param.inalloca(i8* inalloca)

declare void @f.param.sret(i8* sret)

declare void @f.param.noalias(i8* noalias)

declare void @f.param.nocapture(i8* nocapture)

declare void @f.param.nest(i8* nest)

declare i8* @f.param.returned(i8* returned)

declare void @f.param.nonnull(i8* nonnull)

declare void @f.param.dereferenceable(i8* dereferenceable(4))



declare void @f.unnamed_addr() unnamed_addr



declare void @f.alignstack4() alignstack(4)

declare void @f.alignstack8() alignstack(8)

declare void @f.alwaysinline() alwaysinline

declare void @f.cold() cold

declare void @f.inlinehint() inlinehint

declare void @f.jumptable() unnamed_addr jumptable

declare void @f.minsize() minsize

declare void @f.naked() naked

declare void @f.nobuiltin() nobuiltin

declare void @f.noduplicate() noduplicate

declare void @f.noimplicitfloat() noimplicitfloat

declare void @f.noinline() noinline

declare void @f.nonlazybind() nonlazybind

declare void @f.noredzone() noredzone

declare void @f.noreturn() noreturn

declare void @f.nounwind() nounwind

declare void @f.optnone() noinline optnone

declare void @f.optsize() optsize

declare void @f.readnone() readnone

declare void @f.readonly() readonly

declare void @f.returns_twice() returns_twice

declare void @f.sanitize_address() sanitize_address

declare void @f.sanitize_memory() sanitize_memory

declare void @f.sanitize_thread() sanitize_thread

declare void @f.ssp() ssp

declare void @f.sspreq() sspreq

declare void @f.sspstrong() sspstrong

declare void @f.uwtable() uwtable

declare void @f.kvpair() "cpu"="cortex-a8"



declare void @f.section() section "80"



define void @f.comdat_any() comdat($comdat.any) {

entry:
  ret void
}
define void @f.comdat_exactmatch() comdat($comdat.exactmatch) {

entry:
  ret void
}
define void @f.comdat_largest() comdat($comdat.largest) {

entry:
  ret void
}
define void @f.comdat_noduplicates() comdat($comdat.noduplicates) {

entry:
  ret void
}
define void @f.comdat_samesize() comdat($comdat.samesize) {

entry:
  ret void
}


declare void @f.align2() align 2

declare void @f.align4() align 4

declare void @f.align8() align 8



declare void @f.gcshadow() gc "shadow-stack"



declare void @f.prefixi32() prefix i32 1684365668

declare void @f.prefixarray() prefix [4 x i32] [i32 0, i32 1, i32 2, i32 3]



define void @atomics(i32* %word) {
  %cmpxchg.0 = cmpxchg i32* %word, i32 0, i32 4 monotonic monotonic
  
  %cmpxchg.1 = cmpxchg i32* %word, i32 0, i32 5 acq_rel monotonic
  
  %cmpxchg.2 = cmpxchg i32* %word, i32 0, i32 6 acquire monotonic
  
  %cmpxchg.3 = cmpxchg i32* %word, i32 0, i32 7 release monotonic
  
  %cmpxchg.4 = cmpxchg i32* %word, i32 0, i32 8 seq_cst monotonic
  
  %cmpxchg.5 = cmpxchg weak i32* %word, i32 0, i32 9 seq_cst monotonic
  
  %cmpxchg.6 = cmpxchg volatile i32* %word, i32 0, i32 10 seq_cst monotonic
  
  %cmpxchg.7 = cmpxchg weak volatile i32* %word, i32 0, i32 11 singlethread seq_cst monotonic
  
  %atomicrmw.xchg = atomicrmw xchg i32* %word, i32 12 monotonic
  
  %atomicrmw.add = atomicrmw add i32* %word, i32 13 monotonic
  
  %atomicrmw.sub = atomicrmw sub i32* %word, i32 14 monotonic
  
  %atomicrmw.and = atomicrmw and i32* %word, i32 15 monotonic
  
  %atomicrmw.nand = atomicrmw nand i32* %word, i32 16 monotonic
  
  %atomicrmw.or = atomicrmw or i32* %word, i32 17 monotonic
  
  %atomicrmw.xor = atomicrmw xor i32* %word, i32 18 monotonic
  
  %atomicrmw.max = atomicrmw max i32* %word, i32 19 monotonic
  
  %atomicrmw.min = atomicrmw volatile min i32* %word, i32 20 monotonic
  
  %atomicrmw.umax = atomicrmw umax i32* %word, i32 21 singlethread monotonic
  
  %atomicrmw.umin = atomicrmw volatile umin i32* %word, i32 22 singlethread monotonic
  
  fence acquire
  
  fence release
  
  fence acq_rel
  
  fence singlethread seq_cst
  

  
  %ld.1 = load atomic i32* %word monotonic, align 4
  
  %ld.2 = load atomic volatile i32* %word acquire, align 8
  
  %ld.3 = load atomic volatile i32* %word singlethread seq_cst, align 16
  

  store atomic i32 23, i32* %word monotonic, align 4
  
  store atomic volatile i32 24, i32* %word monotonic, align 4
  
  store atomic volatile i32 25, i32* %word singlethread monotonic, align 4
  
  ret void
}


define void @fastmathflags(float %op1, float %op2) {
  %f.nnan = fadd nnan float %op1, %op2
  
  %f.ninf = fadd ninf float %op1, %op2
  
  %f.nsz = fadd nsz float %op1, %op2
  
  %f.arcp = fadd arcp float %op1, %op2
  
  %f.fast = fadd fast float %op1, %op2
  
  ret void
}


%opaquety = type opaque
define void @typesystem() {
  %p0 = bitcast i8* null to i32 (i32)*
  
  %p1 = bitcast i8* null to void (i8*)*
  
  %p2 = bitcast i8* null to i32 (i8*, ...)*
  
  %p3 = bitcast i8* null to { i32, i8 } (i8*, ...)*
  
  %p4 = bitcast i8* null to <{ i32, i8 }> (i8*, ...)*
  
  %p5 = bitcast i8* null to <{ i32, i8 }> (<{ i8*, i64 }>*, ...)*
  

  %t0 = alloca i1942652
  
  %t1 = alloca half
  
  %t2 = alloca float
  
  %t3 = alloca double
  
  %t4 = alloca fp128
  
  %t5 = alloca x86_fp80
  
  %t6 = alloca ppc_fp128
  
  %t7 = alloca x86_mmx
  
  %t8 = alloca %opaquety*
  

  ret void
}


define void @inlineasm(i32 %arg) {
  call i32 asm "bswap $0", "=r,r"(i32 %arg)
  
  call i32 asm sideeffect "blt $1, $2, $3", "=r,r,rm"(i32 %arg, i32 %arg)
  
  ret void
}




define void @instructions.terminators(i8 %val) { 


  br i1 false, label %iftrue, label %iffalse
  
  br label %iftrue
  
iftrue:
  ret void
  
iffalse:

  switch i8 %val, label %defaultdest [
  
         i8 0, label %defaultdest.0
         
         i8 1, label %defaultdest.1
         
         i8 2, label %defaultdest.2
         
  ]
  
defaultdest:
  ret void
defaultdest.0:
  ret void
defaultdest.1:
  ret void
defaultdest.2:

  indirectbr i8* blockaddress(@instructions.terminators, %defaultdest.2), [label %defaultdest.2]
  
  indirectbr i8* blockaddress(@instructions.terminators, %defaultdest.2), [label %defaultdest.2, label %defaultdest.2]
  

  invoke fastcc void @f.fastcc()
  
         to label %defaultdest unwind label %exc
         
exc:
  %cleanup = landingpad i32 personality i32()* @personality_handler cleanup

  resume i32 undef
  
  unreachable
  

  ret void
}


define void @instructions.binops(i8 %op1, i8 %op2) {
  
  add i8 %op1, %op2
  
  add nuw i8 %op1, %op2
  
  add nsw i8 %op1, %op2
  
  add nuw nsw i8 %op1, %op2
  
  sub i8 %op1, %op2
  
  sub nuw i8 %op1, %op2
  
  sub nsw i8 %op1, %op2
  
  sub nuw nsw i8 %op1, %op2
  
  mul i8 %op1, %op2
  
  mul nuw i8 %op1, %op2
  
  mul nsw i8 %op1, %op2
  
  mul nuw nsw i8 %op1, %op2
  

  
  udiv i8 %op1, %op2
  
  udiv exact i8 %op1, %op2
  
  sdiv i8 %op1, %op2
  
  sdiv exact i8 %op1, %op2
  

  
  urem i8 %op1, %op2
  
  srem i8 %op1, %op2
  

  ret void
}


define void @instructions.bitwise_binops(i8 %op1, i8 %op2) {
  
  shl i8 %op1, %op2
  
  shl nuw i8 %op1, %op2
  
  shl nsw i8 %op1, %op2
  
  shl nuw nsw i8 %op1, %op2
  

  
  lshr i8 %op1, %op2
  
  lshr exact i8 %op1, %op2
  
  ashr i8 %op1, %op2
  
  ashr exact i8 %op1, %op2
  

  
  and i8 %op1, %op2
  
  or i8 %op1, %op2
  
  xor i8 %op1, %op2
  

  ret void
}


define void @instructions.vectorops(<4 x float> %vec, <4 x float> %vec2) {
  extractelement <4 x float> %vec, i8 0
  
  insertelement <4 x float> %vec, float 3.500000e+00, i8 0
  
  shufflevector <4 x float> %vec, <4 x float> %vec2, <2 x i32> zeroinitializer
  

  ret void
}


define void @instructions.aggregateops({ i8, i32 } %up, <{ i8, i32 }> %p,
                                       [3 x i8] %arr, { i8, { i32 }} %n,
                                       <2 x i8*> %pvec, <2 x i64> %offsets) {
  extractvalue { i8, i32 } %up, 0
  
  extractvalue <{ i8, i32 }> %p, 1
  
  extractvalue [3 x i8] %arr, 2
  
  extractvalue { i8, { i32 } } %n, 1, 0
  

  insertvalue { i8, i32 } %up, i8 1, 0
  
  insertvalue <{ i8, i32 }> %p, i32 2, 1
  
  insertvalue [3 x i8] %arr, i8 0, 0
  
  insertvalue { i8, { i32 } } %n, i32 0, 1, 0
  

  %up.ptr = alloca { i8, i32 }
  %p.ptr = alloca <{ i8, i32 }>
  %arr.ptr = alloca [3 x i8]
  %n.ptr = alloca { i8, { i32 } }

  
  getelementptr { i8, i32 }* %up.ptr, i8 0
  
  getelementptr <{ i8, i32 }>* %p.ptr, i8 1
  
  getelementptr [3 x i8]* %arr.ptr, i8 2
  
  getelementptr { i8, { i32 } }* %n.ptr, i32 0, i32 1
  
  getelementptr inbounds { i8, { i32 } }* %n.ptr, i32 1, i32 0
  
  getelementptr <2 x i8*> %pvec, <2 x i64> %offsets
  

  ret void
}


!7 = !{i32 1}
!8 = !{}
!9 = !{i64 4}
define void @instructions.memops(i32** %base) {
  alloca i32, i8 4, align 4
  
  alloca inalloca i32, i8 4, align 4
  

  load i32** %base, align 8, !invariant.load !7, !nontemporal !8, !nonnull !7, !dereferenceable !9
  
  load volatile i32** %base, align 8, !invariant.load !7, !nontemporal !8, !nonnull !7, !dereferenceable !9
  

  store i32* null, i32** %base, align 4, !nontemporal !8
  
  store volatile i32* null, i32** %base, align 4, !nontemporal !8
  

  ret void
}


define void @instructions.conversions() {
  trunc i32 -1 to i1
  
  zext i32 -1 to i64
  
  sext i32 -1 to i64
  
  fptrunc float undef to half
  
  fpext half undef to float
  
  fptoui float undef to i32
  
  fptosi float undef to i32
  
  uitofp i32 1 to float
  
  sitofp i32 -1 to float
  
  ptrtoint i8* null to i64
  
  inttoptr i64 0 to i8*
  
  bitcast i32 0 to i32
  
  addrspacecast i32* null to i32 addrspace(1)*
  

  ret void
}


define void @instructions.other(i32 %op1, i32 %op2, half %fop1, half %fop2) {
entry:
  icmp eq  i32 %op1, %op2
  
  icmp ne  i32 %op1, %op2
  
  icmp ugt i32 %op1, %op2
  
  icmp uge i32 %op1, %op2
  
  icmp ult i32 %op1, %op2
  
  icmp ule i32 %op1, %op2
  
  icmp sgt i32 %op1, %op2
  
  icmp sge i32 %op1, %op2
  
  icmp slt i32 %op1, %op2
  
  icmp sle i32 %op1, %op2
  

  fcmp false half %fop1, %fop2
  
  fcmp oeq   half %fop1, %fop2
  
  fcmp ogt   half %fop1, %fop2
  
  fcmp oge   half %fop1, %fop2
  
  fcmp olt   half %fop1, %fop2
  
  fcmp ole   half %fop1, %fop2
  
  fcmp one   half %fop1, %fop2
  
  fcmp ord   half %fop1, %fop2
  
  fcmp ueq   half %fop1, %fop2
  
  fcmp ugt   half %fop1, %fop2
  
  fcmp uge   half %fop1, %fop2
  
  fcmp ult   half %fop1, %fop2
  
  fcmp ule   half %fop1, %fop2
  
  fcmp une   half %fop1, %fop2
  
  fcmp uno   half %fop1, %fop2
  
  fcmp true  half %fop1, %fop2
  

  br label %exit
L1:
  %v1 = add i32 %op1, %op2
  br label %exit
L2:
  %v2 = add i32 %op1, %op2
  br label %exit
exit:
  phi i32 [ %v1, %L1 ], [ %v2, %L2 ], [ %op1, %entry ]
  

  select i1 true, i32 0, i32 1
  
  select <2 x i1> <i1 true, i1 false>, <2 x i8> <i8 2, i8 3>, <2 x i8> <i8 3, i8 2>
  

  call void @f.nobuiltin() builtin
  

  call fastcc noalias i32* @f.noalias() noinline
  
  tail call ghccc nonnull i32* @f.nonnull() minsize
  

  ret void
}

define void @instructions.call_musttail(i8* inalloca %val) {
  musttail call void @f.param.inalloca(i8* inalloca %val)
  

  ret void
}

declare void @llvm.donothing() nounwind readnone

declare i32 @personality_handler()

define void @instructions.landingpad() {


  invoke void @llvm.donothing() to label %proceed unwind label %catch1
  invoke void @llvm.donothing() to label %proceed unwind label %catch2
  invoke void @llvm.donothing() to label %proceed unwind label %catch3
  invoke void @llvm.donothing() to label %proceed unwind label %catch4

catch1:
  landingpad i32
  
             personality i32()* @personality_handler
             cleanup
             
  br label %proceed

catch2:
  landingpad i32
  
             personality i32()* @personality_handler
             cleanup
             
             catch i32* null
             
  br label %proceed

catch3:
  landingpad i32
  
             personality i32()* @personality_handler
             cleanup
             
             catch i32* null
             
             catch i32* null
             
  br label %proceed

catch4:
  landingpad i32
  
             personality i32()* @personality_handler
             filter [2 x i32] zeroinitializer
             
  br label %proceed

proceed:
  ret void
}




declare void @llvm.va_start(i8*)
declare void @llvm.va_copy(i8*, i8*)
declare void @llvm.va_end(i8*)
define void @instructions.va_arg(i8* %v, ...) {
  %ap = alloca i8*
  %ap2 = bitcast i8** %ap to i8*

  call void @llvm.va_start(i8* %ap2)
  

  va_arg i8* %ap2, i32
  

  call void @llvm.va_copy(i8* %v, i8* %ap2)
  

  call void @llvm.va_end(i8* %ap2)
  

  ret void
}


declare void @llvm.gcroot(i8**, i8*)
declare i8* @llvm.gcread(i8*, i8**)
declare void @llvm.gcwrite(i8*, i8*, i8**)
define void @intrinsics.gc() gc "shadow-stack" {
  %ptrloc = alloca i8*
  call void @llvm.gcroot(i8** %ptrloc, i8* null)
  

  call i8* @llvm.gcread(i8* null, i8** %ptrloc)
  

  %ref = alloca i8
  call void @llvm.gcwrite(i8* %ref, i8* null, i8** %ptrloc)
  

  ret void
}


declare i8* @llvm.returnaddress(i32)
declare i8* @llvm.frameaddress(i32)
declare i32 @llvm.read_register.i32(metadata)
declare i64 @llvm.read_register.i64(metadata)
declare void @llvm.write_register.i32(metadata, i32)
declare void @llvm.write_register.i64(metadata, i64)
declare i8* @llvm.stacksave()
declare void @llvm.stackrestore(i8*)
declare void @llvm.prefetch(i8*, i32, i32, i32)
declare void @llvm.pcmarker(i32)
declare i64 @llvm.readcyclecounter()
declare void @llvm.clear_cache(i8*, i8*)
declare void @llvm.instrprof_increment(i8*, i64, i32, i32)

!10 = !{!"rax"}
define void @intrinsics.codegen() {
  call i8* @llvm.returnaddress(i32 1)
  
  call i8* @llvm.frameaddress(i32 1)
  

  call i32 @llvm.read_register.i32(metadata !10)
  
  call i64 @llvm.read_register.i64(metadata !10)
  
  call void @llvm.write_register.i32(metadata !10, i32 0)
  
  call void @llvm.write_register.i64(metadata !10, i64 0)
  

  %stack = call i8* @llvm.stacksave()
  
  call void @llvm.stackrestore(i8* %stack)
  

  call void @llvm.prefetch(i8* %stack, i32 0, i32 3, i32 0)
  

  call void @llvm.pcmarker(i32 1)
  

  call i64 @llvm.readcyclecounter()
  

  call void @llvm.clear_cache(i8* null, i8* null)
  

  call void @llvm.instrprof_increment(i8* null, i64 0, i32 0, i32 0)
  

  ret void
}







































!llvm.module.flags = !{!0, !1, !2, !4, !5, !6}


!0 = !{i32 1, !"mod1", i32 0}

!1 = !{i32 2, !"mod2", i32 0}

!2 = !{i32 3, !"mod3", !3}

!3 = !{!"mod6", !0}

!4 = !{i32 4, !"mod4", i32 0}

!5 = !{i32 5, !"mod5", !0}

!6 = !{i32 6, !"mod6", !0}

