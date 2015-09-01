

target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"










declare void @may_throw() #1
declare i32 @__CxxFrameHandler3(...)
declare void @llvm.eh.begincatch(i8* nocapture, i8* nocapture) #2
declare void @llvm.eh.endcatch() #2


define void @test_catch_all() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  invoke void @may_throw()
          to label %try.cont unwind label %lpad

lpad:                                             
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  tail call void @llvm.eh.begincatch(i8* %1, i8* null) #2
  tail call void @llvm.eh.endcatch() #2
  br label %try.cont

try.cont:                                         
  ret void
}








attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
