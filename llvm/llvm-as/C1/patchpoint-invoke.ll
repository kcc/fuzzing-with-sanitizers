



define i64 @patchpoint_invoke(i64 %p1, i64 %p2) personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:













  %resolveCall = inttoptr i64 -559038736 to i8*
  %result = invoke i64 (i64, i32, i8*, i32, ...) @llvm.experimental.patchpoint.i64(i64 2, i32 15, i8* %resolveCall, i32 1, i64 %p1, i64 %p2)
            to label %success unwind label %threw

success:
  ret i64 %result

threw:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  ret i64 0
}




























declare void @llvm.experimental.stackmap(i64, i32, ...)
declare void @llvm.experimental.patchpoint.void(i64, i32, i8*, i32, ...)
declare i64 @llvm.experimental.patchpoint.i64(i64, i32, i8*, i32, ...)
declare i32 @__gxx_personality_v0(...)
