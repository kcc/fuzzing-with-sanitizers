
















target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@_ZTIi = external constant i8*










define void @_Z4testv() #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %i = alloca i32, align 4
  invoke void @_Z9may_throwv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  br label %try.cont







lpad:                                             
  %tmp = landingpad { i8*, i32 }
          catch i8* bitcast (i8** @_ZTIi to i8*)
  %tmp1 = extractvalue { i8*, i32 } %tmp, 0
  store i8* %tmp1, i8** %exn.slot
  %tmp2 = extractvalue { i8*, i32 } %tmp, 1
  store i32 %tmp2, i32* %ehselector.slot
  br label %catch.dispatch



catch.dispatch:                                   
  %sel = load i32, i32* %ehselector.slot
  %tmp3 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) #3
  %matches = icmp eq i32 %sel, %tmp3
  br i1 %matches, label %catch, label %eh.resume



catch:                                            
  %exn11 = load i8*, i8** %exn.slot
  %i.i8 = bitcast i32* %i to i8*
  call void @llvm.eh.begincatch(i8* %exn11, i8* %i.i8) #3
  %tmp7 = load i32, i32* %i, align 4
  call void @_Z10handle_inti(i32 %tmp7)
  br label %invoke.cont2



invoke.cont2:                                     
  call void @llvm.eh.endcatch() #3
  br label %try.cont

try.cont:                                         
  ret void



eh.resume:                                        
  %exn3 = load i8*, i8** %exn.slot
  %sel4 = load i32, i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn3, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel4, 1
  resume { i8*, i32 } %lpad.val5


}










declare void @_Z9may_throwv() #1

declare i32 @__CxxFrameHandler3(...)


declare i32 @llvm.eh.typeid.for(i8*) #2

declare void @llvm.eh.begincatch(i8*, i8*)

declare void @llvm.eh.endcatch()

declare void @_Z10handle_inti(i32) #1

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (trunk 227474) (llvm/trunk 227508)"}
