

target datalayout = "e-m:e-i64:64-n32:64"
target triple = "powerpc64le-unknown-linux-gnu"

@g = common global ppc_fp128 0xM00000000000000000000000000000000, align 16

define void @callee(ppc_fp128 %x) {
entry:
  %x.addr = alloca ppc_fp128, align 16
  store ppc_fp128 %x, ppc_fp128* %x.addr, align 16
  %0 = load ppc_fp128, ppc_fp128* %x.addr, align 16
  store ppc_fp128 %0, ppc_fp128* @g, align 16
  ret void
}






define void @caller() {
entry:
  %0 = load ppc_fp128, ppc_fp128* @g, align 16
  call void @test(ppc_fp128 %0)
  ret void
}






declare void @test(ppc_fp128)

define void @caller_const() {
entry:
  call void @test(ppc_fp128 0xM3FF00000000000000000000000000000)
  ret void
}











define ppc_fp128 @result() {
entry:
  %0 = load ppc_fp128, ppc_fp128* @g, align 16
  ret ppc_fp128 %0
}






define void @use_result() {
entry:
  %call = tail call ppc_fp128 @test_result() #3
  store ppc_fp128 %call, ppc_fp128* @g, align 16
  ret void
}







declare ppc_fp128 @test_result()

define void @caller_result() {
entry:
  %call = tail call ppc_fp128 @test_result()
  tail call void @test(ppc_fp128 %call)
  ret void
}






define i128 @convert_from(ppc_fp128 %x) {
entry:
  %0 = bitcast ppc_fp128 %x to i128
  ret i128 %0
}







define ppc_fp128 @convert_to(i128 %x) {
entry:
  %0 = bitcast i128 %x to ppc_fp128
  ret ppc_fp128 %0
}







define ppc_fp128 @convert_to2(i128 %x) {
entry:
  %shl = shl i128 %x, 1
  %0 = bitcast i128 %shl to ppc_fp128
  ret ppc_fp128 %0
}








define double @convert_vector(<4 x i32> %x) {
entry:
  %cast = bitcast <4 x i32> %x to ppc_fp128
  %conv = fptrunc ppc_fp128 %cast to double
  ret double %conv
}






declare void @llvm.va_start(i8*)

define double @vararg(i32 %a, ...) {
entry:
  %va = alloca i8*, align 8
  %va1 = bitcast i8** %va to i8*
  call void @llvm.va_start(i8* %va1)
  %arg = va_arg i8** %va, ppc_fp128
  %conv = fptrunc ppc_fp128 %arg to double
  ret double %conv
}




