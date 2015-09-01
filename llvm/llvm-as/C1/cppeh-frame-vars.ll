




































target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%rtti.TypeDescriptor2 = type { i8**, i8*, [3 x i8] }
%struct.SomeData = type { i32, i32 }

$"\01??_R0H@8" = comdat any

@"\01??_7type_info@@6B@" = external constant i8*
@"\01??_R0H@8" = linkonce_odr global %rtti.TypeDescriptor2 { i8** @"\01??_7type_info@@6B@", i8* null, [3 x i8] c".H\00" }, comdat

















define void @"\01?test@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %NumExceptions = alloca i32, align 4
  %ExceptionVal = alloca [10 x i32], align 16
  %Data = alloca %struct.SomeData, align 4
  %i = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %e = alloca i32, align 4
  store i32 0, i32* %NumExceptions, align 4
  %tmp = bitcast %struct.SomeData* %Data to i8*
  call void @llvm.memset(i8* %tmp, i8 0, i64 8, i32 4, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         
  %tmp1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %tmp1, 10
  br i1 %cmp, label %for.body, label %for.end





for.body:                                         
  invoke void @"\01?may_throw@@YAXXZ"()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  %tmp2 = load i32, i32* %i, align 4
  %a = getelementptr inbounds %struct.SomeData, %struct.SomeData* %Data, i32 0, i32 0
  %tmp3 = load i32, i32* %a, align 4
  %add = add nsw i32 %tmp3, %tmp2
  store i32 %add, i32* %a, align 4
  br label %try.cont







lpad:                                             
  %tmp4 = landingpad { i8*, i32 }
          catch i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)
  %tmp5 = extractvalue { i8*, i32 } %tmp4, 0
  store i8* %tmp5, i8** %exn.slot
  %tmp6 = extractvalue { i8*, i32 } %tmp4, 1
  store i32 %tmp6, i32* %ehselector.slot
  br label %catch.dispatch



catch.dispatch:                                   
  %sel = load i32, i32* %ehselector.slot
  %tmp7 = call i32 @llvm.eh.typeid.for(i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)) #1
  %matches = icmp eq i32 %sel, %tmp7
  br i1 %matches, label %catch, label %eh.resume



catch:                                            
  %exn = load i8*, i8** %exn.slot
  %e.i8 = bitcast i32* %e to i8*
  call void @llvm.eh.begincatch(i8* %exn, i8* %e.i8) #1
  %tmp11 = load i32, i32* %e, align 4
  %tmp12 = load i32, i32* %NumExceptions, align 4
  %idxprom = sext i32 %tmp12 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %ExceptionVal, i32 0, i64 %idxprom
  store i32 %tmp11, i32* %arrayidx, align 4
  %tmp13 = load i32, i32* %NumExceptions, align 4
  %inc = add nsw i32 %tmp13, 1
  store i32 %inc, i32* %NumExceptions, align 4
  %tmp14 = load i32, i32* %e, align 4
  %tmp15 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %tmp14, %tmp15
  br i1 %cmp1, label %if.then, label %if.else



if.then:                                          
  %tmp16 = load i32, i32* %e, align 4
  %b = getelementptr inbounds %struct.SomeData, %struct.SomeData* %Data, i32 0, i32 1
  %tmp17 = load i32, i32* %b, align 4
  %add2 = add nsw i32 %tmp17, %tmp16
  store i32 %add2, i32* %b, align 4
  br label %if.end



if.else:                                          
  %tmp18 = load i32, i32* %e, align 4
  %a3 = getelementptr inbounds %struct.SomeData, %struct.SomeData* %Data, i32 0, i32 0
  %tmp19 = load i32, i32* %a3, align 4
  %add4 = add nsw i32 %tmp19, %tmp18
  store i32 %add4, i32* %a3, align 4
  br label %if.end



if.end:                                           
  call void @llvm.eh.endcatch() #1
  br label %try.cont

try.cont:                                         
  %tmp20 = load i32, i32* %NumExceptions, align 4
  call void @"\01?does_not_throw@@YAXH@Z"(i32 %tmp20)
  br label %for.inc

for.inc:                                          
  %tmp21 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %tmp21, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          
  %tmp22 = load i32, i32* %NumExceptions, align 4
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %ExceptionVal, i32 0, i32 0
  call void @"\01?dump@@YAXPEAHHAEAUSomeData@@@Z"(i32* %arraydecay, i32 %tmp22, %struct.SomeData* dereferenceable(8) %Data)
  ret void



eh.resume:                                        
  %exn6 = load i8*, i8** %exn.slot
  %sel7 = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn6, 0
  %lpad.val8 = insertvalue { i8*, i32 } %lpad.val, i32 %sel7, 1
  resume { i8*, i32 } %lpad.val8


}

















































declare void @llvm.memset(i8* nocapture, i8, i64, i32, i1) #1

declare void @"\01?may_throw@@YAXXZ"() #2

declare i32 @__CxxFrameHandler3(...)


declare i32 @llvm.eh.typeid.for(i8*) #3

declare void @llvm.eh.begincatch(i8*, i8*)

declare void @llvm.eh.endcatch()

declare void @"\01?does_not_throw@@YAXH@Z"(i32) #2

declare void @"\01?dump@@YAXPEAHHAEAUSomeData@@@Z"(i32*, i32, %struct.SomeData* dereferenceable(8)) #2

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (trunk 228868)"}
