





























target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%class.Outer = type { i8 }
%class.Inner = type { i8 }

@_ZTIf = external constant i8*
@_ZTIi = external constant i8*













define void @_Z4testv() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %outer = alloca %class.Outer, align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %inner = alloca %class.Inner, align 1
  %i = alloca i32, align 4
  %f = alloca float, align 4
  invoke void @_ZN5OuterC1Ev(%class.Outer* %outer)
          to label %invoke.cont unwind label %lpad





invoke.cont:                                      
  invoke void @_ZN5InnerC1Ev(%class.Inner* %inner)
          to label %invoke.cont2 unwind label %lpad1





invoke.cont2:                                     
  invoke void @_Z9may_throwv()
          to label %invoke.cont4 unwind label %lpad3





invoke.cont4:                                     
  invoke void @_ZN5InnerD1Ev(%class.Inner* %inner)
          to label %invoke.cont5 unwind label %lpad1




invoke.cont5:                                     
  br label %try.cont







lpad:                                             
  %tmp = landingpad { i8*, i32 }
          catch i8* bitcast (i8** @_ZTIf to i8*)
  %tmp1 = extractvalue { i8*, i32 } %tmp, 0
  store i8* %tmp1, i8** %exn.slot
  %tmp2 = extractvalue { i8*, i32 } %tmp, 1
  store i32 %tmp2, i32* %ehselector.slot
  br label %catch.dispatch11












lpad1:                                            
  %tmp3 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast (i8** @_ZTIi to i8*)
          catch i8* bitcast (i8** @_ZTIf to i8*)
  %tmp4 = extractvalue { i8*, i32 } %tmp3, 0
  store i8* %tmp4, i8** %exn.slot
  %tmp5 = extractvalue { i8*, i32 } %tmp3, 1
  store i32 %tmp5, i32* %ehselector.slot
  br label %catch.dispatch













lpad3:                                            
  %tmp6 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast (i8** @_ZTIi to i8*)
          catch i8* bitcast (i8** @_ZTIf to i8*)
  %tmp7 = extractvalue { i8*, i32 } %tmp6, 0
  store i8* %tmp7, i8** %exn.slot
  %tmp8 = extractvalue { i8*, i32 } %tmp6, 1
  store i32 %tmp8, i32* %ehselector.slot
  call void @_ZN5InnerD1Ev(%class.Inner* %inner)
  br label %catch.dispatch



catch.dispatch:                                   
  %sel = load i32, i32* %ehselector.slot
  %tmp9 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) #4
  %matches = icmp eq i32 %sel, %tmp9
  br i1 %matches, label %catch, label %ehcleanup



catch:                                            
  %exn = load i8*, i8** %exn.slot
  %i.i8 = bitcast i32* %i to i8*
  call void @llvm.eh.begincatch(i8* %exn, i8* %i.i8) #4
  %tmp13 = load i32, i32* %i, align 4
  invoke void @_Z10handle_inti(i32 %tmp13)
          to label %invoke.cont8 unwind label %lpad7



invoke.cont8:                                     
  call void @llvm.eh.endcatch() #4
  br label %try.cont





try.cont:                                         
  invoke void @_ZN5OuterD1Ev(%class.Outer* %outer)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     
  br label %try.cont19



lpad7:                                            
  %tmp14 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast (i8** @_ZTIf to i8*)
  %tmp15 = extractvalue { i8*, i32 } %tmp14, 0
  store i8* %tmp15, i8** %exn.slot
  %tmp16 = extractvalue { i8*, i32 } %tmp14, 1
  store i32 %tmp16, i32* %ehselector.slot
  call void @llvm.eh.endcatch() #4
  br label %ehcleanup



ehcleanup:                                        
  call void @_ZN5OuterD1Ev(%class.Outer* %outer)
  br label %catch.dispatch11



catch.dispatch11:                                 
  %sel12 = load i32, i32* %ehselector.slot
  %tmp17 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIf to i8*)) #4
  %matches13 = icmp eq i32 %sel12, %tmp17
  br i1 %matches13, label %catch14, label %eh.resume



catch14:                                          
  %exn15 = load i8*, i8** %exn.slot
  %f.i8 = bitcast float* %f to i8*
  call void @llvm.eh.begincatch(i8* %exn15, i8* %f.i8) #4
  %tmp21 = load float, float* %f, align 4
  call void @_Z12handle_floatf(float %tmp21)
  call void @llvm.eh.endcatch() #4
  br label %try.cont19

try.cont19:                                       
  call void @_Z4donev()
  ret void



eh.resume:                                        
  %exn20 = load i8*, i8** %exn.slot
  %sel21 = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn20, 0
  %lpad.val22 = insertvalue { i8*, i32 } %lpad.val, i32 %sel21, 1
  resume { i8*, i32 } %lpad.val22


}
















































declare void @_ZN5OuterC1Ev(%class.Outer*) #1

declare i32 @__CxxFrameHandler3(...)

declare void @_ZN5InnerC1Ev(%class.Inner*) #1

declare void @_Z9may_throwv() #1

declare void @_ZN5InnerD1Ev(%class.Inner*) #1

declare void @llvm.eh.begincatch(i8*, i8*)


declare i32 @llvm.eh.typeid.for(i8*) #3

declare void @_Z10handle_inti(i32) #1

declare void @llvm.eh.endcatch()

declare void @_ZN5OuterD1Ev(%class.Outer*) #1

declare void @_Z12handle_floatf(float) #1

declare void @_Z4donev() #1

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (trunk 226027)"}
