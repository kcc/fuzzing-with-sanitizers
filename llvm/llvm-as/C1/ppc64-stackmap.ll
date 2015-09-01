





target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"







































































































define void @constantargs() {
entry:
  %0 = inttoptr i64 244837814094590 to i8*
  tail call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 1, i32 40, i8* %0, i32 0, i64 65535, i64 65536, i64 4294967295, i64 4294967296)
  ret void
}














define void @osrinline(i64 %a, i64 %b) {
entry:
  
  call void inttoptr (i64 244837814094590 to void ()*)()
  
  call void (i64, i32, ...) @llvm.experimental.stackmap(i64 3, i32 12, i64 %a, i64 %b)
  ret void
}
















define void @osrcold(i64 %a, i64 %b) {
entry:
  %test = icmp slt i64 %a, %b
  br i1 %test, label %ret, label %cold
cold:
  
  %thunk = inttoptr i64 244837814094590 to i8*
  call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 4, i32 40, i8* %thunk, i32 0, i64 %a, i64 %b)
  unreachable
ret:
  ret void
}








define i64 @propertyRead(i64* %obj) {
entry:
  %resolveRead = inttoptr i64 244837814094590 to i8*
  %result = call i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 5, i32 40, i8* %resolveRead, i32 1, i64* %obj)
  %add = add i64 %result, 3
  ret i64 %add
}













define void @propertyWrite(i64 %dummy1, i64* %obj, i64 %dummy2, i64 %a) {
entry:
  %resolveWrite = inttoptr i64 244837814094590 to i8*
  call anyregcc void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 6, i32 40, i8* %resolveWrite, i32 2, i64* %obj, i64 %a)
  ret void
}
















define void @jsVoidCall(i64 %dummy1, i64* %obj, i64 %arg, i64 %l1, i64 %l2) {
entry:
  %resolveCall = inttoptr i64 244837814094590 to i8*
  call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 7, i32 40, i8* %resolveCall, i32 2, i64* %obj, i64 %arg, i64 %l1, i64 %l2)
  ret void
}
















define i64 @jsIntCall(i64 %dummy1, i64* %obj, i64 %arg, i64 %l1, i64 %l2) {
entry:
  %resolveCall = inttoptr i64 244837814094590 to i8*
  %result = call i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 8, i32 40, i8* %resolveCall, i32 2, i64* %obj, i64 %arg, i64 %l1, i64 %l2)
  %add = add i64 %result, 3
  ret i64 %add
}














define void @spilledValue(i64 %arg0, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %l0, i64 %l1, i64 %l2, i64 %l3, i64 %l4, i64 %l5, i64 %l6, i64 %l7, i64 %l8, i64 %l9, i64 %l10, i64 %l11, i64 %l12, i64 %l13, i64 %l14, i64 %l15, i64 %l16, i64 %l17, i64 %l18, i64 %l19, i64 %l20, i64 %l21, i64 %l22, i64 %l23, i64 %l24, i64 %l25, i64 %l26, i64 %l27) {
entry:
  call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 11, i32 40, i8* null, i32 5, i64 %arg0, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %l0, i64 %l1, i64 %l2, i64 %l3, i64 %l4, i64 %l5, i64 %l6, i64 %l7, i64 %l8, i64 %l9, i64 %l10, i64 %l11, i64 %l12, i64 %l13, i64 %l14, i64 %l15, i64 %l16, i64 %l17, i64 %l18, i64 %l19, i64 %l20, i64 %l21, i64 %l22, i64 %l23, i64 %l24, i64 %l25, i64 %l26, i64 %l27)
  ret void
}














define webkit_jscc void @spilledStackMapValue(i64 %l0, i64 %l1, i64 %l2, i64 %l3, i64 %l4, i64 %l5, i64 %l6, i64 %l7, i64 %l8, i64 %l9, i64 %l10, i64 %l11, i64 %l12, i64 %l13, i64 %l14, i64 %l15, i64 %l16, i64 %l17, i64 %l18, i64 %l19, i64 %l20, i64 %l21, i64 %l22, i64 %l23, i64 %l24, i64 %l25, i64 %l26, i64 %l27, i64 %l28, i64 %l29) {
entry:
  call void (i64, i32, ...) @llvm.experimental.stackmap(i64 12, i32 16, i64 %l0, i64 %l1, i64 %l2, i64 %l3, i64 %l4, i64 %l5, i64 %l6, i64 %l7, i64 %l8, i64 %l9, i64 %l10, i64 %l11, i64 %l12, i64 %l13, i64 %l14, i64 %l15, i64 %l16, i64 %l17, i64 %l18, i64 %l19, i64 %l20, i64 %l21, i64 %l22, i64 %l23, i64 %l24, i64 %l25, i64 %l26, i64 %l27, i64 %l28, i64 %l29)
  ret void
}














define void @liveConstant() {
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 15, i32 8, i32 33)
  ret void
}












define void @clobberLR(i32 %a) {
  tail call void asm sideeffect "nop", "~{r0},~{r3},~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r11},~{r12},~{r14},~{r15},~{r16},~{r17},~{r18},~{r19},~{r20},~{r21},~{r22},~{r23},~{r24},~{r25},~{r26},~{r27},~{r28},~{r29},~{r30},~{r31}"() nounwind
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 16, i32 8, i32 %a)
  ret void
}

declare void @llvm.experimental.stackmap(i64, i32, ...)
declare void @llvm.experimental.patchpoint.void(i64, i32, i8*, i32, ...)
declare i64 @llvm.experimental.patchpoint.i64(i64, i32, i8*, i32, ...)
