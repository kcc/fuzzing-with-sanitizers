





define void @jscall_patchpoint_codegen(i64 %p1, i64 %p2, i64 %p3, i64 %p4) {
entry:


















  %resolveCall2 = inttoptr i64 -559038736 to i8*
  %result = tail call webkit_jscc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 5, i32 15, i8* %resolveCall2, i32 2, i64 %p4, i64 %p2)
  %resolveCall3 = inttoptr i64 -559038737 to i8*
  tail call webkit_jscc void (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.void(i64 6, i32 15, i8* %resolveCall3, i32 2, i64 %p4, i64 %result)
  ret void
}


define i64 @jscall_patchpoint_codegen2(i64 %callee) {
entry:
















  %call = inttoptr i64 -559038736 to i8*
  %result = call webkit_jscc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 7, i32 15, i8* %call, i32 6, i64 %callee, i64 2, i64 undef, i32 4, i32 undef, i64 6)
  ret i64 %result
}


define i64 @jscall_patchpoint_codegen3(i64 %callee) {
entry:




















  %call = inttoptr i64 -559038736 to i8*
  %result = call webkit_jscc i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 7, i32 15, i8* %call, i32 10, i64 %callee, i64 2, i64 undef, i32 4, i32 undef, i64 6, i32 undef, i32 8, i32 undef, i64 10)
  ret i64 %result
}

declare void @llvm.experimental.patchpoint.void(i64, i32, i8*, i32, ...)
declare i64 @llvm.experimental.patchpoint.i64(i64, i32, i8*, i32, ...)

