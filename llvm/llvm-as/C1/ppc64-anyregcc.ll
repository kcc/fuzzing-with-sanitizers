
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"















































































define i64 @test() nounwind ssp uwtable {
entry:
  call anyregcc void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 0, i32 40, i8* null, i32 2, i32 1, i32 2, i64 3)
  ret i64 0
}
















define i64 @property_access1(i8* %obj) nounwind ssp uwtable {
entry:
  %f = inttoptr i64 281474417671919 to i8*
  %ret = call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 1, i32 40, i8* %f, i32 1, i8* %obj)
  ret i64 %ret
}
















define i64 @property_access2() nounwind ssp uwtable {
entry:
  %obj = alloca i64, align 8
  %f = inttoptr i64 281474417671919 to i8*
  %ret = call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 2, i32 40, i8* %f, i32 1, i64* %obj)
  ret i64 %ret
}
















define i64 @property_access3() nounwind ssp uwtable {
entry:
  %obj = alloca i64, align 8
  %f = inttoptr i64 281474417671919 to i8*
  %ret = call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 3, i32 40, i8* %f, i32 0, i64* %obj)
  ret i64 %ret
}












































































define i64 @anyreg_test1(i8* %a1, i8* %a2, i8* %a3, i8* %a4, i8* %a5, i8* %a6, i8* %a7, i8* %a8, i8* %a9, i8* %a10, i8* %a11, i8* %a12, i8* %a13) nounwind ssp uwtable {
entry:
  %f = inttoptr i64 281474417671919 to i8*
  %ret = call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 4, i32 40, i8* %f, i32 13, i8* %a1, i8* %a2, i8* %a3, i8* %a4, i8* %a5, i8* %a6, i8* %a7, i8* %a8, i8* %a9, i8* %a10, i8* %a11, i8* %a12, i8* %a13)
  ret i64 %ret
}












































































define i64 @anyreg_test2(i8* %a1, i8* %a2, i8* %a3, i8* %a4, i8* %a5, i8* %a6, i8* %a7, i8* %a8, i8* %a9, i8* %a10, i8* %a11, i8* %a12, i8* %a13) nounwind ssp uwtable {
entry:
  %f = inttoptr i64 281474417671919 to i8*
  %ret = call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 5, i32 40, i8* %f, i32 8, i8* %a1, i8* %a2, i8* %a3, i8* %a4, i8* %a5, i8* %a6, i8* %a7, i8* %a8, i8* %a9, i8* %a10, i8* %a11, i8* %a12, i8* %a13)
  ret i64 %ret
}























define i64 @patchpoint_spilldef(i64 %p1, i64 %p2, i64 %p3, i64 %p4) {
entry:
  %result = tail call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 12, i32 40, i8* inttoptr (i64 0 to i8*), i32 2, i64 %p1, i64 %p2)
  tail call void asm sideeffect "nop", "~{r0},~{r3},~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r11},~{r12},~{r14},~{r15},~{r16},~{r17
},~{r18},~{r19},~{r20},~{r21},~{r22},~{r23},~{r24},~{r25},~{r26},~{r27},~{r28},~{r29},~{r30},~{r31}"() nounwind
  ret i64 %result
}

































define i64 @patchpoint_spillargs(i64 %p1, i64 %p2, i64 %p3, i64 %p4) {
entry:
  tail call void asm sideeffect "nop", "~{r0},~{r3},~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r11},~{r12},~{r14},~{r15},~{r16},~{r17
},~{r18},~{r19},~{r20},~{r21},~{r22},~{r23},~{r24},~{r25},~{r26},~{r27},~{r28},~{r29},~{r30},~{r31}"() nounwind
  %result = tail call anyregcc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 13, i32 40, i8* inttoptr (i64 0 to i8*), i32 2, i64 %p1, i64 %p2, i64 %p3, i64 %p4)
  ret i64 %result
}

declare void @llvm.experimental.patchpoint.void(i64, i32, i8*, i32, ...)
declare i64 @llvm.experimental.patchpoint.i64(i64, i32, i8*, i32, ...)
