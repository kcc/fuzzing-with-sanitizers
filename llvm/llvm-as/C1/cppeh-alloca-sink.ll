

































target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

declare void @may_throw() #1
declare i32 @__CxxFrameHandler3(...)
declare i32 @llvm.eh.typeid.for(i8*) #2
declare void @llvm.eh.begincatch(i8* nocapture, i8* nocapture) #3
declare void @llvm.eh.endcatch() #3

%rtti.TypeDescriptor2 = type { i8**, i8*, [3 x i8] }
%eh.CatchHandlerType = type { i32, i8* }

$"\01??_R0H@8" = comdat any

@"\01??_7type_info@@6B@" = external constant i8*
@"\01??_R0H@8" = linkonce_odr global %rtti.TypeDescriptor2 { i8** @"\01??_7type_info@@6B@", i8* null, [3 x i8] c".H\00" }, comdat
@llvm.eh.handlertype.H.0 = private unnamed_addr constant %eh.CatchHandlerType { i32 0, i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*) }, section "llvm.metadata"


define void @sink_alloca_to_catch() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %0 = alloca i32
  %only_used_in_catch = alloca i32, align 4
  invoke void @may_throw()
          to label %try.cont unwind label %lpad

lpad:                                             
  %1 = landingpad { i8*, i32 }
          catch %eh.CatchHandlerType* @llvm.eh.handlertype.H.0
  %2 = extractvalue { i8*, i32 } %1, 1
  %3 = tail call i32 @llvm.eh.typeid.for(i8* bitcast (%eh.CatchHandlerType* @llvm.eh.handlertype.H.0 to i8*)) #3
  %matches = icmp eq i32 %2, %3
  br i1 %matches, label %catch, label %eh.resume

catch:                                            
  %4 = extractvalue { i8*, i32 } %1, 0
  call void @llvm.eh.begincatch(i8* %4, i8* null) #3
  store volatile i32 42, i32* %only_used_in_catch, align 4
  tail call void @llvm.eh.endcatch() #3
  br label %try.cont

try.cont:                                         
  ret void

eh.resume:                                        
  resume { i8*, i32 } %1
}




declare void @use_catch_var(i32*) #1


define void @dont_sink_alloca_to_catch(i32 %n) #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %0 = alloca i32
  %n.addr = alloca i32, align 4
  %live_in_out_catch = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i32 %n, i32* %n.addr, align 4
  br label %while.cond

while.cond:                                       
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       
  invoke void @may_throw()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  br label %try.cont

lpad:                                             
  %2 = landingpad { i8*, i32 }
          catch i8* bitcast (%eh.CatchHandlerType* @llvm.eh.handlertype.H.0 to i8*)
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  br label %catch.dispatch

catch.dispatch:                                   
  %sel = load i32, i32* %ehselector.slot
  %5 = call i32 @llvm.eh.typeid.for(i8* bitcast (%eh.CatchHandlerType* @llvm.eh.handlertype.H.0 to i8*)) #3
  %matches = icmp eq i32 %sel, %5
  br i1 %matches, label %catch, label %eh.resume

catch:                                            
  %exn = load i8*, i8** %exn.slot
  call void @llvm.eh.begincatch(i8* %exn, i8* null) #3
  invoke void @use_catch_var(i32* %live_in_out_catch)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     
  call void @llvm.eh.endcatch() #3
  br label %try.cont

try.cont:                                         
  %6 = load i32, i32* %0
  %7 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %while.cond

lpad1:                                            
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot
  call void @llvm.eh.endcatch() #3
  br label %eh.resume

while.end:                                        
  ret void

eh.resume:                                        
  %exn3 = load i8*, i8** %exn.slot
  %sel4 = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn3, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel4, 1
  resume { i8*, i32 } %lpad.val5
}














attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
