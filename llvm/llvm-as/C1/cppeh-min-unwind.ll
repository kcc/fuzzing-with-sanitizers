
















target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%class.SomeClass = type { [28 x i32] }











define void @_Z4testv() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %obj = alloca %class.SomeClass, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  call void @_ZN9SomeClassC1Ev(%class.SomeClass* %obj)
  invoke void @_Z9may_throwv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  call void @_ZN9SomeClassD1Ev(%class.SomeClass* %obj)
  ret void







lpad:                                             
  %tmp = landingpad { i8*, i32 }
          cleanup
  %tmp1 = extractvalue { i8*, i32 } %tmp, 0
  store i8* %tmp1, i8** %exn.slot
  %tmp2 = extractvalue { i8*, i32 } %tmp, 1
  store i32 %tmp2, i32* %ehselector.slot
  call void @_ZN9SomeClassD1Ev(%class.SomeClass* %obj)
  br label %eh.resume



eh.resume:                                        
  %exn = load i8*, i8** %exn.slot
  %sel = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2


}










declare void @_ZN9SomeClassC1Ev(%class.SomeClass*) #1

declare void @_Z9may_throwv() #1

declare i32 @__CxxFrameHandler3(...)

declare void @_ZN9SomeClassD1Ev(%class.SomeClass*) #1

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (trunk 226027)"}
