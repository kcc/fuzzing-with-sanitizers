

target datalayout = "e-m:x-p:32:32-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i686-pc-windows-msvc"

%rtti.TypeDescriptor2 = type { i8**, i8*, [3 x i8] }
%eh.CatchableType = type { i32, i8*, i32, i32, i32, i32, i8* }
%eh.CatchableTypeArray.1 = type { i32, [1 x %eh.CatchableType*] }
%eh.ThrowInfo = type { i32, i8*, i8*, i8* }

$"\01??_R0H@8" = comdat any

$"_CT??_R0H@84" = comdat any

$_CTA1H = comdat any

$_TI1H = comdat any

@"\01??_7type_info@@6B@" = external constant i8*
@"\01??_R0H@8" = linkonce_odr global %rtti.TypeDescriptor2 { i8** @"\01??_7type_info@@6B@", i8* null, [3 x i8] c".H\00" }, comdat
@"_CT??_R0H@84" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 1, i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*), i32 0, i32 -1, i32 0, i32 4, i8* null }, section ".xdata", comdat
@_CTA1H = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.1 { i32 1, [1 x %eh.CatchableType*] [%eh.CatchableType* @"_CT??_R0H@84"] }, section ".xdata", comdat
@_TI1H = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i8* null, i8* null, i8* bitcast (%eh.CatchableTypeArray.1* @_CTA1H to i8*) }, section ".xdata", comdat

define i32 @main() #0 personality i32 (...)* @__CxxFrameHandler3 {
entry:
  %tmp = alloca i32, align 4
  
  
  
  call void @g(i32 3)
  store i32 0, i32* %tmp, align 4
  %0 = bitcast i32* %tmp to i8*
  
  
  invoke void @_CxxThrowException(i8* %0, %eh.ThrowInfo* nonnull @_TI1H) #1
          to label %unreachable.for.entry unwind label %catch.dispatch

catch.dispatch:                                   
  %1 = catchpad [i8* null, i8* null] to label %catch unwind label %catchendblock

catch:                                            
  
  
  
  invoke void @_CxxThrowException(i8* null, %eh.ThrowInfo* null) #1
          to label %unreachable unwind label %catch.dispatch.1

catch.dispatch.1:                                 
  %2 = catchpad [i8* null, i8* null] to label %catch.3 unwind label %catchendblock.2

catch.3:                                          
  
  
  
  invoke void @g(i32 1)
          to label %invoke.cont unwind label %catchendblock.2

invoke.cont:                                      
  catchret %2 to label %try.cont

try.cont:                                         
  
  
  
  invoke void @g(i32 2)
          to label %invoke.cont.4 unwind label %catchendblock

invoke.cont.4:                                    
  unreachable

catchendblock.2:                                  
  catchendpad unwind label %catchendblock

catchendblock:                                    
  catchendpad unwind to caller

unreachable:                                      
  unreachable

unreachable.for.entry:                            
  unreachable
}

declare void @g(i32) #0

declare x86_stdcallcc void @_CxxThrowException(i8*, %eh.ThrowInfo*)

declare i32 @__CxxFrameHandler3(...)

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (trunk 245153) (llvm/trunk 245238)"}
