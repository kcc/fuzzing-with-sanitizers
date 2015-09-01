

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
declare i8* @objc_unretainedObject(i8*)
declare i8* @objc_retainAutoreleasedReturnValue(i8*)
declare i8* @objc_autoreleaseReturnValue(i8*)
declare i8* @objc_msgSend(i8*, i8*, ...)
declare void @objc_release(i8*)











define i8* @test0(i8* %p) {
entry:
  %call = tail call i8* @objc_unretainedObject(i8* %p)
  %0 = tail call i8* @objc_retainAutoreleasedReturnValue(i8* %call) nounwind
  %1 = tail call i8* @objc_autoreleaseReturnValue(i8* %call) nounwind
  ret i8* %call
}










define void @test1(i8* %call88) nounwind personality i32 (...)* @__gxx_personality_v0 {
entry:
  %tmp1 = call i8* @objc_retainAutoreleasedReturnValue(i8* %call88) nounwind
  %call94 = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*)*)(i8* %tmp1)
          to label %invoke.cont93 unwind label %lpad91

invoke.cont93:                                    
  %tmp2 = call i8* @objc_retainAutoreleasedReturnValue(i8* %call94) nounwind
  call void @objc_release(i8* %tmp1) nounwind
  invoke void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*)*)(i8* %tmp2)
          to label %invoke.cont102 unwind label %lpad100

invoke.cont102:                                   
  call void @objc_release(i8* %tmp2) nounwind, !clang.imprecise_release !0
  unreachable

lpad91:                                           
  %exn91 = landingpad {i8*, i32}
              cleanup
  unreachable

lpad100:                                          
  %exn100 = landingpad {i8*, i32}
              cleanup
  call void @objc_release(i8* %tmp2) nounwind, !clang.imprecise_release !0
  unreachable
}

declare i32 @__gxx_personality_v0(...)

!0 = !{}


