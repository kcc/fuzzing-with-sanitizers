








































target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%rtti.TypeDescriptor2 = type { i8**, i8*, [3 x i8] }
%struct.SomeData = type { i32, i32 }

$"\01??_R0H@8" = comdat any

@"\01??_7type_info@@6B@" = external constant i8*
@"\01??_R0H@8" = linkonce_odr global %rtti.TypeDescriptor2 { i8** @"\01??_7type_info@@6B@", i8* null, [3 x i8] c".H\00" }, comdat























define void @"\01?test@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %e = alloca i32, align 4
  %ExceptionVal = alloca [10 x i32], align 16
  %Data = alloca i64, align 8
  %tmpcast = bitcast i64* %Data to %struct.SomeData*
  %0 = bitcast [10 x i32]* %ExceptionVal to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  store i64 0, i64* %Data, align 8
  %a = bitcast i64* %Data to i32*
  %b = getelementptr inbounds %struct.SomeData, %struct.SomeData* %tmpcast, i64 0, i32 1
  br label %for.body







for.body:                                         
  %NumExceptions.020 = phi i32 [ 0, %entry ], [ %NumExceptions.1, %try.cont ]
  %i.019 = phi i32 [ 0, %entry ], [ %inc5, %try.cont ]
  invoke void @"\01?may_throw@@YAXXZ"()
          to label %invoke.cont unwind label %lpad









invoke.cont:                                      
  %1 = load i32, i32* %a, align 8, !tbaa !2
  %add = add nsw i32 %1, %i.019
  store i32 %add, i32* %a, align 8, !tbaa !2
  br label %try.cont







lpad:                                             
  %2 = landingpad { i8*, i32 }
          catch i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)
  %3 = extractvalue { i8*, i32 } %2, 1
  %4 = tail call i32 @llvm.eh.typeid.for(i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)) #1
  %matches = icmp eq i32 %3, %4
  br i1 %matches, label %catch, label %eh.resume



catch:                                            
  %5 = extractvalue { i8*, i32 } %2, 0
  %e.i8 = bitcast i32* %e to i8*
  call void @llvm.eh.begincatch(i8* %5, i8* %e.i8) #1
  %tmp8 = load i32, i32* %e, align 4, !tbaa !7
  %idxprom = sext i32 %NumExceptions.020 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %ExceptionVal, i64 0, i64 %idxprom
  store i32 %tmp8, i32* %arrayidx, align 4, !tbaa !7
  %inc = add nsw i32 %NumExceptions.020, 1
  %cmp1 = icmp eq i32 %tmp8, %i.019
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          
  %tmp9 = load i32, i32* %b, align 4, !tbaa !8
  %add2 = add nsw i32 %tmp9, %i.019
  store i32 %add2, i32* %b, align 4, !tbaa !8
  br label %if.end



if.else:                                          
  %tmp10 = load i32, i32* %a, align 8, !tbaa !2
  %add4 = add nsw i32 %tmp10, %tmp8
  store i32 %add4, i32* %a, align 8, !tbaa !2
  br label %if.end






if.end:                                           
  tail call void @llvm.eh.endcatch() #1
  br label %try.cont









try.cont:                                         
  %NumExceptions.1 = phi i32 [ %NumExceptions.020, %invoke.cont ], [ %inc, %if.end ]
  tail call void @"\01?does_not_throw@@YAXH@Z"(i32 %NumExceptions.1)
  %inc5 = add nuw nsw i32 %i.019, 1
  %cmp = icmp slt i32 %inc5, 10
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  %NumExceptions.1.lcssa = phi i32 [ %NumExceptions.1, %try.cont ]
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %ExceptionVal, i64 0, i64 0
  call void @"\01?dump@@YAXPEAHHAEAUSomeData@@@Z"(i32* %arraydecay, i32 %NumExceptions.1.lcssa, %struct.SomeData* dereferenceable(8) %tmpcast)
  call void @llvm.lifetime.end(i64 40, i8* %0) #1
  ret void

eh.resume:                                        
  %.lcssa = phi { i8*, i32 } [ %2, %lpad ]
  resume { i8*, i32 } %.lcssa
}



















































declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @"\01?may_throw@@YAXXZ"() #2

declare i32 @__CxxFrameHandler3(...)


declare i32 @llvm.eh.typeid.for(i8*) #3

declare void @llvm.eh.begincatch(i8*, i8*)

declare void @llvm.eh.endcatch()

declare void @"\01?does_not_throw@@YAXH@Z"(i32) #2

declare void @"\01?dump@@YAXPEAHHAEAUSomeData@@@Z"(i32*, i32, %struct.SomeData* dereferenceable(8)) #2


declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (trunk 228868)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"?AUSomeData@@", !4, i64 0, !4, i64 4}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!4, !4, i64 0}
!8 = !{!3, !4, i64 4}
