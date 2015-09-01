


















target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%rtti.TypeDescriptor2 = type { i8**, i8*, [3 x i8] }

$"\01??_R0M@8" = comdat any

$"\01??_R0H@8" = comdat any

@"\01??_7type_info@@6B@" = external constant i8*
@"\01??_R0M@8" = linkonce_odr global %rtti.TypeDescriptor2 { i8** @"\01??_7type_info@@6B@", i8* null, [3 x i8] c".M\00" }, comdat
@"\01??_R0H@8" = linkonce_odr global %rtti.TypeDescriptor2 { i8** @"\01??_7type_info@@6B@", i8* null, [3 x i8] c".H\00" }, comdat










define void @"\01?test@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %i = alloca i32, align 4
  %f = alloca float, align 4
  invoke void @"\01?may_throw@@YAXXZ"()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  br label %try.cont








lpad:                                             
  %0 = landingpad { i8*, i32 }
          catch i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)
          catch i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0M@8" to i8*)
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  br label %catch.dispatch


catch.dispatch:                                   
  %sel = load i32, i32* %ehselector.slot
  %3 = call i32 @llvm.eh.typeid.for(i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)) #3
  %matches = icmp eq i32 %sel, %3
  br i1 %matches, label %catch, label %catch.dispatch3


catch:                                            
  %exn = load i8*, i8** %exn.slot
  %4 = bitcast i32* %i to i8*
  call void @llvm.eh.begincatch(i8* %exn, i8* %4) #3
  %5 = load i32, i32* %i, align 4
  invoke void @"\01?handle_int@@YAXH@Z"(i32 %5)
          to label %invoke.cont2 unwind label %lpad1


invoke.cont2:                                     
  call void @llvm.eh.endcatch() #3
  br label %try.cont

try.cont:                                         
  br label %try.cont10


lpad1:                                            
  %6 = landingpad { i8*, i32 }
          catch i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0M@8" to i8*)
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  call void @llvm.eh.endcatch() #3
  br label %catch.dispatch3


catch.dispatch3:                                  
  %sel4 = load i32, i32* %ehselector.slot
  %9 = call i32 @llvm.eh.typeid.for(i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0M@8" to i8*)) #3
  %matches5 = icmp eq i32 %sel4, %9
  br i1 %matches5, label %catch6, label %eh.resume


catch6:                                           
  %exn7 = load i8*, i8** %exn.slot
  %10 = bitcast float* %f to i8*
  call void @llvm.eh.begincatch(i8* %exn7, i8* %10) #3
  %11 = load float, float* %f, align 4
  call void @"\01?handle_float@@YAXM@Z"(float %11)
  call void @llvm.eh.endcatch() #3
  br label %try.cont10

try.cont10:                                       
  call void @"\01?done@@YAXXZ"()
  ret void


eh.resume:                                        
  %exn11 = load i8*, i8** %exn.slot
  %sel12 = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn11, 0
  %lpad.val13 = insertvalue { i8*, i32 } %lpad.val, i32 %sel12, 1
  resume { i8*, i32 } %lpad.val13

}






























declare void @"\01?may_throw@@YAXXZ"() #1

declare i32 @__CxxFrameHandler3(...)


declare i32 @llvm.eh.typeid.for(i8*) #2


declare void @llvm.eh.begincatch(i8* nocapture, i8* nocapture) #3

declare void @"\01?handle_int@@YAXH@Z"(i32) #1


declare void @llvm.eh.endcatch() #3

declare void @"\01?handle_float@@YAXM@Z"(float) #1

declare void @"\01?done@@YAXXZ"() #1

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (trunk 232069) (llvm/trunk 232070)"}
