













target datalayout = "e-m:x-p:32:32-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i686-pc-windows-msvc"







define void @test() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  invoke void @may_throw()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  br label %try.cont







lpad:                                             
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  br label %catch




catch:                                            
  %exn = load i8*, i8** %exn.slot
  call void @llvm.eh.begincatch(i8* %exn, i8* null) #1
  call void @handle_exception()
  call void @llvm.eh.endcatch() #1
  br label %try.cont

try.cont:                                         
  ret void


}









declare void @may_throw() #0

declare i32 @__CxxFrameHandler3(...)


declare void @llvm.eh.begincatch(i8* nocapture, i8* nocapture) #1

declare void @handle_exception() #0


declare void @llvm.eh.endcatch() #1

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
