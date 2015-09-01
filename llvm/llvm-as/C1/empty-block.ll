


%0 = type opaque

declare i8* @objc_retain(i8*)

declare void @objc_release(i8*)

declare i8* @objc_autoreleaseReturnValue(i8*)










define %0* @test0(%0* %buffer) nounwind {
  %1 = bitcast %0* %buffer to i8*
  %2 = tail call i8* @objc_retain(i8* %1) nounwind
  br i1 undef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           
  br i1 false, label %.lr.ph, label %._crit_edge

._crit_edge:                                      
  %3 = tail call i8* @objc_retain(i8* %1) nounwind
  tail call void @objc_release(i8* %1) nounwind, !clang.imprecise_release !0
  %4 = tail call i8* @objc_autoreleaseReturnValue(i8* %1) nounwind
  ret %0* %buffer
}






define %0* @test1() nounwind {
  %buffer = call %0* @foo()
  %1 = bitcast %0* %buffer to i8*
  %2 = tail call i8* @objc_retain(i8* %1) nounwind
  br i1 undef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           
  br i1 false, label %.lr.ph, label %._crit_edge

._crit_edge:                                      
  %3 = tail call i8* @objc_retain(i8* %1) nounwind
  tail call void @objc_release(i8* %1) nounwind, !clang.imprecise_release !0
  %4 = tail call i8* @objc_autoreleaseReturnValue(i8* %1) nounwind
  ret %0* %buffer
}

declare %0* @foo()

!0 = !{}
