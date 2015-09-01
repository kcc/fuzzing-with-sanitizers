



























































define i64 @test() nounwind ssp uwtable {
entry:
  call anyregcc void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 0, i32 15, i8* null, i32 2, i32 1, i32 2, i64 3)
  ret i64 0
}
















define i64 @property_access1(i8* %obj) nounwind ssp uwtable {
entry:
  %f = inttoptr i64 12297829382473034410 to i8*
  %ret = call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 1, i32 15, i8* %f, i32 1, i8* %obj)
  ret i64 %ret
}
















define i64 @property_access2() nounwind ssp uwtable {
entry:
  %obj = alloca i64, align 8
  %f = inttoptr i64 12297829382473034410 to i8*
  %ret = call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 2, i32 15, i8* %f, i32 1, i64* %obj)
  ret i64 %ret
}
















define i64 @property_access3() nounwind ssp uwtable {
entry:
  %obj = alloca i64, align 8
  %f = inttoptr i64 12297829382473034410 to i8*
  %ret = call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 3, i32 15, i8* %f, i32 0, i64* %obj)
  ret i64 %ret
}












































































define i64 @anyreg_test1(i8* %a1, i8* %a2, i8* %a3, i8* %a4, i8* %a5, i8* %a6, i8* %a7, i8* %a8, i8* %a9, i8* %a10, i8* %a11, i8* %a12, i8* %a13) nounwind ssp uwtable {
entry:
  %f = inttoptr i64 12297829382473034410 to i8*
  %ret = call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 4, i32 15, i8* %f, i32 13, i8* %a1, i8* %a2, i8* %a3, i8* %a4, i8* %a5, i8* %a6, i8* %a7, i8* %a8, i8* %a9, i8* %a10, i8* %a11, i8* %a12, i8* %a13)
  ret i64 %ret
}












































































define i64 @anyreg_test2(i8* %a1, i8* %a2, i8* %a3, i8* %a4, i8* %a5, i8* %a6, i8* %a7, i8* %a8, i8* %a9, i8* %a10, i8* %a11, i8* %a12, i8* %a13) nounwind ssp uwtable {
entry:
  %f = inttoptr i64 12297829382473034410 to i8*
  %ret = call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 5, i32 15, i8* %f, i32 8, i8* %a1, i8* %a2, i8* %a3, i8* %a4, i8* %a5, i8* %a6, i8* %a7, i8* %a8, i8* %a9, i8* %a10, i8* %a11, i8* %a12, i8* %a13)
  ret i64 %ret
}























define i64 @patchpoint_spilldef(i64 %p1, i64 %p2, i64 %p3, i64 %p4) {
entry:
  %result = tail call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 12, i32 15, i8* inttoptr (i64 0 to i8*), i32 2, i64 %p1, i64 %p2)
  tail call void asm sideeffect "nop", "~{ax},~{bx},~{cx},~{dx},~{bp},~{si},~{di},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"() nounwind
  ret i64 %result
}

































define i64 @patchpoint_spillargs(i64 %p1, i64 %p2, i64 %p3, i64 %p4) {
entry:
  tail call void asm sideeffect "nop", "~{ax},~{bx},~{cx},~{dx},~{bp},~{si},~{di},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"() nounwind
  %result = tail call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 13, i32 15, i8* inttoptr (i64 0 to i8*), i32 2, i64 %p1, i64 %p2, i64 %p3, i64 %p4)
  ret i64 %result
}


define anyregcc void @anyregcc1() {
entry:
































































  call void asm sideeffect "", "~{rax},~{rbx},~{rcx},~{rdx},~{rsi},~{rdi},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15},~{rbp},~{xmm0},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15}"()
  ret void
}


declare anyregcc void @foo()
define void @anyregcc2() {
entry:




  %a0 = call <2 x double> asm sideeffect "", "={xmm0}"() nounwind
  %a1 = call <2 x double> asm sideeffect "", "={xmm1}"() nounwind
  %a2 = call <2 x double> asm sideeffect "", "={xmm2}"() nounwind
  %a3 = call <2 x double> asm sideeffect "", "={xmm3}"() nounwind
  %a4 = call <2 x double> asm sideeffect "", "={xmm4}"() nounwind
  %a5 = call <2 x double> asm sideeffect "", "={xmm5}"() nounwind
  %a6 = call <2 x double> asm sideeffect "", "={xmm6}"() nounwind
  %a7 = call <2 x double> asm sideeffect "", "={xmm7}"() nounwind
  %a8 = call <2 x double> asm sideeffect "", "={xmm8}"() nounwind
  %a9 = call <2 x double> asm sideeffect "", "={xmm9}"() nounwind
  %a10 = call <2 x double> asm sideeffect "", "={xmm10}"() nounwind
  %a11 = call <2 x double> asm sideeffect "", "={xmm11}"() nounwind
  %a12 = call <2 x double> asm sideeffect "", "={xmm12}"() nounwind
  %a13 = call <2 x double> asm sideeffect "", "={xmm13}"() nounwind
  %a14 = call <2 x double> asm sideeffect "", "={xmm14}"() nounwind
  %a15 = call <2 x double> asm sideeffect "", "={xmm15}"() nounwind
  call anyregcc void @foo()
  call void asm sideeffect "", "{xmm0},{xmm1},{xmm2},{xmm3},{xmm4},{xmm5},{xmm6},{xmm7},{xmm8},{xmm9},{xmm10},{xmm11},{xmm12},{xmm13},{xmm14},{xmm15}"(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, <2 x double> %a3, <2 x double> %a4, <2 x double> %a5, <2 x double> %a6, <2 x double> %a7, <2 x double> %a8, <2 x double> %a9, <2 x double> %a10, <2 x double> %a11, <2 x double> %a12, <2 x double> %a13, <2 x double> %a14, <2 x double> %a15)
  ret void
}

declare void @llvm.experimental.patchpoint.void(i64, i32, i8*, i32, ...)
declare i64 @llvm.experimental.patchpoint.i64(i64, i32, i8*, i32, ...)
