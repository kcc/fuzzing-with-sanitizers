
















target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%rtti.TypeDescriptor2 = type { i8**, i8*, [3 x i8] }
%eh.CatchHandlerType = type { i32, i8* }
%eh.ThrowInfo = type { i32, i32, i32, i32 }

$"\01??_R0H@8" = comdat any

@"\01??_7type_info@@6B@" = external constant i8*
@"\01??_R0H@8" = linkonce_odr global %rtti.TypeDescriptor2 { i8** @"\01??_7type_info@@6B@", i8* null, [3 x i8] c".H\00" }, comdat
@llvm.eh.handlertype.H.0 = private unnamed_addr constant %eh.CatchHandlerType { i32 0, i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*) }, section "llvm.metadata"







define void @"\01?f@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  invoke void @"\01?g@@YAXXZ"()
          to label %invoke.cont unwind label %lpad





invoke.cont:                                      
  invoke void @_CxxThrowException(i8* null, %eh.ThrowInfo* null) #4
          to label %unreachable unwind label %lpad1

lpad:                                             
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  br label %catch2










lpad1:                                            
  %2 = landingpad { i8*, i32 }
          catch %eh.CatchHandlerType* @llvm.eh.handlertype.H.0
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  br label %catch2

catch2:                                           
  %exn.slot.0 = phi i8* [ %3, %lpad1 ], [ %1, %lpad ]
  tail call void @llvm.eh.begincatch(i8* %exn.slot.0, i8* null) #3
  tail call void @llvm.eh.endcatch() #3
  br label %try.cont4

try.cont4:                                        
  ret void

unreachable:                                      
  unreachable


}

declare void @"\01?g@@YAXXZ"() #1

declare i32 @__CxxFrameHandler3(...)

declare void @_CxxThrowException(i8*, %eh.ThrowInfo*)


declare i32 @llvm.eh.typeid.for(i8*) #2


declare void @llvm.eh.begincatch(i8* nocapture, i8* nocapture) #3


declare void @llvm.eh.endcatch() #3

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (trunk 235112) (llvm/trunk 235121)"}
