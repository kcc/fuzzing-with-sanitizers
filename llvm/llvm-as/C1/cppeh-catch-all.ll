
















target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"








define void @_Z4testv() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  invoke void @_Z9may_throwv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  br label %try.cont







lpad:                                             
  %tmp = landingpad { i8*, i32 }
          catch i8* null
  %tmp1 = extractvalue { i8*, i32 } %tmp, 0
  store i8* %tmp1, i8** %exn.slot
  %tmp2 = extractvalue { i8*, i32 } %tmp, 1
  store i32 %tmp2, i32* %ehselector.slot
  br label %catch



catch:                                            
  %exn = load i8*, i8** %exn.slot
  call void @llvm.eh.begincatch(i8* %exn, i8* null) #2
  call void @_Z16handle_exceptionv()
  br label %invoke.cont2



invoke.cont2:                                     
  call void @llvm.eh.endcatch()
  br label %try.cont

try.cont:                                         
  ret void


}







declare void @_Z9may_throwv() #1

declare i32 @__CxxFrameHandler3(...)

declare void @llvm.eh.begincatch(i8*, i8*)

declare void @_Z16handle_exceptionv() #1

declare void @llvm.eh.endcatch()

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (trunk 226027)"}
