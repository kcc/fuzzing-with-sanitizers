



























































































































define void @constantargs() {
entry:
  %0 = inttoptr i64 12345 to i8*
  tail call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 1, i32 15, i8* %0, i32 0, i16 65535, i16 -1, i32 65536, i32 2000000000, i32 2147483647, i32 -1, i32 4294967295, i32 4294967296, i64 2147483648, i64 4294967295, i64 4294967296, i64 -1)
  ret void
}














define void @osrinline(i64 %a, i64 %b) {
entry:
  
  call void inttoptr (i64 -559038737 to void ()*)()
  
  call void (i64, i32, ...) @llvm.experimental.stackmap(i64 3, i32 12, i64 %a, i64 %b)
  ret void
}
















define void @osrcold(i64 %a, i64 %b) {
entry:
  %test = icmp slt i64 %a, %b
  br i1 %test, label %ret, label %cold
cold:
  
  %thunk = inttoptr i64 -559038737 to i8*
  call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 4, i32 15, i8* %thunk, i32 0, i64 %a, i64 %b)
  unreachable
ret:
  ret void
}













define i64 @propertyRead(i64* %obj) {
entry:
  %resolveRead = inttoptr i64 -559038737 to i8*
  %result = call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 5, i32 15, i8* %resolveRead, i32 1, i64* %obj)
  %add = add i64 %result, 3
  ret i64 %add
}













define void @propertyWrite(i64 %dummy1, i64* %obj, i64 %dummy2, i64 %a) {
entry:
  %resolveWrite = inttoptr i64 -559038737 to i8*
  call anyregcc void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 6, i32 15, i8* %resolveWrite, i32 2, i64* %obj, i64 %a)
  ret void
}
















define void @jsVoidCall(i64 %dummy1, i64* %obj, i64 %arg, i64 %l1, i64 %l2) {
entry:
  %resolveCall = inttoptr i64 -559038737 to i8*
  call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 7, i32 15, i8* %resolveCall, i32 2, i64* %obj, i64 %arg, i64 %l1, i64 %l2)
  ret void
}
















define i64 @jsIntCall(i64 %dummy1, i64* %obj, i64 %arg, i64 %l1, i64 %l2) {
entry:
  %resolveCall = inttoptr i64 -559038737 to i8*
  %result = call i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 8, i32 15, i8* %resolveCall, i32 2, i64* %obj, i64 %arg, i64 %l1, i64 %l2)
  %add = add i64 %result, 3
  ret i64 %add
}














define void @spilledValue(i64 %arg0, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %l0, i64 %l1, i64 %l2, i64 %l3, i64 %l4, i64 %l5, i64 %l6, i64 %l7, i64 %l8, i64 %l9, i64 %l10, i64 %l11, i64 %l12, i64 %l13, i64 %l14, i64 %l15, i64 %l16) {
entry:
  call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 11, i32 15, i8* null, i32 5, i64 %arg0, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %l0, i64 %l1, i64 %l2, i64 %l3, i64 %l4, i64 %l5, i64 %l6, i64 %l7, i64 %l8, i64 %l9, i64 %l10, i64 %l11, i64 %l12, i64 %l13, i64 %l14, i64 %l15, i64 %l16)
  ret void
}














define webkit_jscc void @spilledStackMapValue(i64 %l0, i64 %l1, i64 %l2, i64 %l3, i64 %l4, i64 %l5, i64 %l6, i64 %l7, i64 %l8, i64 %l9, i64 %l10, i64 %l11, i64 %l12, i64 %l13, i64 %l14, i64 %l15, i64 %l16) {
entry:
  call void (i64, i32, ...) @llvm.experimental.stackmap(i64 12, i32 15, i64 %l0, i64 %l1, i64 %l2, i64 %l3, i64 %l4, i64 %l5, i64 %l6, i64 %l7, i64 %l8, i64 %l9, i64 %l10, i64 %l11, i64 %l12, i64 %l13, i64 %l14, i64 %l15, i64 %l16)
  ret void
}













define void @spillSubReg(i64 %arg) #0 {
bb:
  br i1 undef, label %bb1, label %bb2

bb1:
  unreachable

bb2:
  %tmp = load i64, i64* inttoptr (i64 140685446136880 to i64*)
  br i1 undef, label %bb16, label %bb17

bb16:
  unreachable

bb17:
  %tmp32 = trunc i64 %tmp to i32
  br i1 undef, label %bb60, label %bb61

bb60:
  tail call void asm sideeffect "nop", "~{ax},~{bx},~{cx},~{dx},~{bp},~{si},~{di},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"() nounwind
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 13, i32 5, i32 %tmp32)
  unreachable

bb61:
  unreachable
}





















define void @subRegOffset(i16 %arg) {
  %v = mul i16 %arg, 5
  %a0 = trunc i16 %v to i8
  tail call void asm sideeffect "nop", "~{bx}"() nounwind
  %arghi = lshr i16 %v, 8
  %a1 = trunc i16 %arghi to i8
  tail call void asm sideeffect "nop", "~{cx},~{dx},~{bp},~{si},~{di},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15}"() nounwind
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 14, i32 5, i8 %a0, i8 %a1)
  ret void
}













define void @liveConstant() {
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 15, i32 5, i32 33)
  ret void
}





























define void @directFrameIdx() {
entry:
  %metadata1 = alloca i64, i32 3, align 8
  store i64 11, i64* %metadata1
  store i64 12, i64* %metadata1
  store i64 13, i64* %metadata1
  call void (i64, i32, ...) @llvm.experimental.stackmap(i64 16, i32 0, i64* %metadata1)
  %metadata2 = alloca i8, i32 4, align 8
  %metadata3 = alloca i16, i32 4, align 8
  call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 17, i32 5, i8* null, i32 0, i8* %metadata2, i16* %metadata3)
  ret void
}











define void @longid() {
entry:
  tail call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 4294967295, i32 0, i8* null, i32 0)
  tail call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 4294967296, i32 0, i8* null, i32 0)
  tail call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 9223372036854775807, i32 0, i8* null, i32 0)
  tail call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 -1, i32 0, i8* null, i32 0)
  ret void
}













define void @clobberScratch(i32 %a) {
  tail call void asm sideeffect "nop", "~{ax},~{bx},~{cx},~{dx},~{bp},~{si},~{di},~{r8},~{r9},~{r10},~{r12},~{r13},~{r14},~{r15}"() nounwind
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 16, i32 8, i32 %a)
  ret void
}







define void @needsStackRealignment() {
  %val = alloca i64, i32 3, align 128
  tail call void (...) @escape_values(i64* %val)



  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 0, i32 0)
  ret void
}
declare void @escape_values(...)

declare void @llvm.experimental.stackmap(i64, i32, ...)
declare void @llvm.experimental.patchpoint.void(i64, i32, i8*, i32, ...)
declare i64 @llvm.experimental.patchpoint.i64(i64, i32, i8*, i32, ...)
