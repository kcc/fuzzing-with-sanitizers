




















target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%rtti.TypeDescriptor2 = type { i8**, i8*, [3 x i8] }
%class.SomeClass = type { i8 }

$"\01??_R0H@8" = comdat any

@"\01??_7type_info@@6B@" = external constant i8*
@"\01??_R0H@8" = linkonce_odr global %rtti.TypeDescriptor2 { i8** @"\01??_7type_info@@6B@", i8* null, [3 x i8] c".H\00" }, comdat












define void @"\01?test@@YAXXZ"() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %obj = alloca %class.SomeClass, align 1
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  %call = invoke %class.SomeClass* @"\01??0SomeClass@@QEAA@XZ"(%class.SomeClass* %obj)
          to label %invoke.cont unwind label %lpad





invoke.cont:                                      
  invoke void @"\01?may_throw@@YAXXZ"()
          to label %invoke.cont2 unwind label %lpad1





invoke.cont2:                                     
  invoke void @"\01?may_throw@@YAXXZ"()
          to label %try.cont unwind label %lpad3







lpad:                                             
  %2 = landingpad { i8*, i32 }
          catch i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  br label %catch.dispatch7








lpad1:                                            
  %5 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  br label %ehcleanup








lpad3:                                            
  %8 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = call i32 @llvm.eh.typeid.for(i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)) #3
  %matches = icmp eq i32 %10, %11
  br i1 %matches, label %catch, label %ehcleanup


catch:                                            
  %12 = bitcast i32* %0 to i8*
  call void @llvm.eh.begincatch(i8* %9, i8* %12) #3
  invoke void @"\01?handle_exception@@YAXXZ"()
          to label %invoke.cont6 unwind label %lpad5


invoke.cont6:                                     
  call void @llvm.eh.endcatch() #3
  br label %try.cont

try.cont:                                         
  call void @"\01??1SomeClass@@QEAA@XZ"(%class.SomeClass* %obj) #3
  br label %try.cont15


lpad5:                                            
  %13 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = extractvalue { i8*, i32 } %13, 1
  call void @llvm.eh.endcatch() #3
  br label %ehcleanup


ehcleanup:                                        
  %exn.slot.0 = phi i8* [ %14, %lpad5 ], [ %9, %lpad3 ], [ %6, %lpad1 ]
  %ehselector.slot.0 = phi i32 [ %15, %lpad5 ], [ %10, %lpad3 ], [ %7, %lpad1 ]
  call void @"\01??1SomeClass@@QEAA@XZ"(%class.SomeClass* %obj) #3
  br label %catch.dispatch7


catch.dispatch7:                                  
  %exn.slot.1 = phi i8* [ %exn.slot.0, %ehcleanup ], [ %3, %lpad ]
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %ehcleanup ], [ %4, %lpad ]
  %16 = call i32 @llvm.eh.typeid.for(i8* bitcast (%rtti.TypeDescriptor2* @"\01??_R0H@8" to i8*)) #3
  %matches9 = icmp eq i32 %ehselector.slot.1, %16
  br i1 %matches9, label %catch10, label %eh.resume


catch10:                                          
  %17 = bitcast i32* %1 to i8*
  call void @llvm.eh.begincatch(i8* %exn.slot.1, i8* %17) #3
  call void @"\01?handle_exception@@YAXXZ"()
  br label %invoke.cont13


invoke.cont13:                                    
  call void @llvm.eh.endcatch() #3
  br label %try.cont15

try.cont15:                                       
  ret void


eh.resume:                                        
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.1, 0
  %lpad.val18 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1
  resume { i8*, i32 } %lpad.val18


}

































declare %class.SomeClass* @"\01??0SomeClass@@QEAA@XZ"(%class.SomeClass* returned) #1

declare i32 @__CxxFrameHandler3(...)

declare void @"\01?may_throw@@YAXXZ"() #1


declare i32 @llvm.eh.typeid.for(i8*) #2


declare void @llvm.eh.begincatch(i8* nocapture, i8* nocapture) #3

declare void @"\01?handle_exception@@YAXXZ"() #1


declare void @llvm.eh.endcatch() #3


declare void @"\01??1SomeClass@@QEAA@XZ"(%class.SomeClass*) #4

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (trunk 232069) (llvm/trunk 232070)"}
