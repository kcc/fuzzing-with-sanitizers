




define i64 @trivial_patchpoint_codegen(i64 %p1, i64 %p2, i64 %p3, i64 %p4) {
entry:









  %resolveCall2 = inttoptr i64 -559038736 to i8*
  %result = tail call i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 2, i32 15, i8* %resolveCall2, i32 4, i64 %p1, i64 %p2, i64 %p3, i64 %p4)
  %resolveCall3 = inttoptr i64 -559038737 to i8*
  tail call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 3, i32 15, i8* %resolveCall3, i32 2, i64 %p1, i64 %result)
  ret i64 %result
}




declare i64 @foo(i64 %p1, i64 %p2)
define i64 @trivial_symbolic_patchpoint_codegen(i64 %p1, i64 %p2) {
entry:





  %result = tail call i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 9, i32 15, i8* bitcast (i64 (i64, i64)* @foo to i8*), i32 2, i64 %p1, i64 %p2)
  ret i64 %result
}










define void @caller_meta_leaf() {
entry:
  %metadata = alloca i64, i32 3, align 8
  store i64 11, i64* %metadata
  store i64 12, i64* %metadata
  store i64 13, i64* %metadata
  call void (i64, i32, ...) @llvm.experimental.stackmap(i64 4, i32 0, i64* %metadata)
  ret void
}





define i64 @testLowerConstant(i64 %arg, i64 %tmp2, i64 %tmp10, i64* %tmp33, i64 %tmp79) {
entry:
  %tmp80 = add i64 %tmp79, -16
  %tmp81 = inttoptr i64 %tmp80 to i64*
  %tmp82 = load i64, i64* %tmp81, align 8
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 14, i32 5, i64 %arg, i64 %tmp2, i64 %tmp10, i64 %tmp82)
  tail call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 15, i32 30, i8* null, i32 3, i64 %arg, i64 %tmp10, i64 %tmp82)
  %tmp83 = load i64, i64* %tmp33, align 8
  %tmp84 = add i64 %tmp83, -24
  %tmp85 = inttoptr i64 %tmp84 to i64*
  %tmp86 = load i64, i64* %tmp85, align 8
  tail call void (i64, i32, ...) @llvm.experimental.stackmap(i64 17, i32 5, i64 %arg, i64 %tmp10, i64 %tmp86)
  tail call void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 18, i32 30, i8* null, i32 3, i64 %arg, i64 %tmp10, i64 %tmp86)
  ret i64 10
}


define void @small_patchpoint_codegen(i64 %p1, i64 %p2, i64 %p3, i64 %p4) {
entry:





  %result = tail call i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 5, i32 5, i8* null, i32 2, i64 %p1, i64 %p2)
  ret void
}


define i64 @large_target_address_patchpoint_codegen() {
entry:



  %resolveCall2 = inttoptr i64 6153737369414576827 to i8*
  %result = tail call i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 2, i32 15, i8* %resolveCall2, i32 0)
  ret i64 %result
}

declare void @llvm.experimental.stackmap(i64, i32, ...)
declare void @llvm.experimental.patchpoint.void(i64, i32, i8*, i32, ...)
declare i64 @llvm.experimental.patchpoint.i64(i64, i32, i8*, i32, ...)
