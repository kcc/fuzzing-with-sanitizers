














%rtti.TypeDescriptor2 = type { i8**, i8*, [3 x i8] }
%eh.CatchableType = type { i32, i8*, i32, i32, i32, i32, i8* }
%eh.CatchableTypeArray.1 = type { i32, [1 x %eh.CatchableType*] }
%eh.ThrowInfo = type { i32, i8*, i8*, i8* }
%eh.CatchHandlerType = type { i32, i8* }

$"\01??_R0H@8" = comdat any

@"\01??_7type_info@@6B@" = external constant i8*
@"\01??_R0H@8" = linkonce_odr global %rtti.TypeDescriptor2 { i8** @"\01??_7type_info@@6B@", i8* null, [3 x i8] c".H\00" }, comdat

@llvm.eh.handlertype.H.0 = private unnamed_addr constant %eh.CatchHandlerType { i32 0, i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*) }, section "llvm.metadata"
@llvm.eh.handlertype.H.1 = private unnamed_addr constant %eh.CatchHandlerType { i32 1, i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*) }, section "llvm.metadata"

declare void @f(i32 %p)
declare i32 @__CxxFrameHandler3(...)

define i32 @try_catch_catch() personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  invoke void @f(i32 1)
          to label %try.cont unwind label %catch.dispatch

catch.dispatch:                                   
  %0 = catchpad [%eh.CatchHandlerType* @llvm.eh.handlertype.H.0, i8* null]
          to label %catch unwind label %catch.dispatch.2

catch:                                            
  invoke void @f(i32 2)
          to label %invoke.cont.2 unwind label %catchendblock

invoke.cont.2:                                    
  catchret %0 to label %try.cont

catch.dispatch.2:                                   
  %1 = catchpad [%eh.CatchHandlerType* @llvm.eh.handlertype.H.0, i8* null]
          to label %catch.2 unwind label %catchendblock

catch.2:                                            
  invoke void @f(i32 3)
          to label %invoke.cont.3 unwind label %catchendblock

invoke.cont.3:                                    
  catchret %1 to label %try.cont

try.cont:                                         
  ret i32 0

catchendblock:                                    
  catchendpad unwind to caller
}

































































