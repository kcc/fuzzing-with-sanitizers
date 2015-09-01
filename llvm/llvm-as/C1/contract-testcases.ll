


%0 = type opaque
%1 = type opaque
%2 = type { i64, i64 }
%4 = type opaque

declare %0* @"\01-[NSAttributedString(Terminal) pathAtIndex:effectiveRange:]"(%1*, i8* nocapture, i64, %2*) optsize
declare i8* @objc_retainAutoreleasedReturnValue(i8*)
declare i8* @objc_msgSend_fixup(i8*, i8*, ...)
declare i8* @objc_msgSend(i8*, i8*, ...)
declare void @objc_release(i8*)
declare %2 @NSUnionRange(i64, i64, i64, i64) optsize
declare i8* @objc_autoreleaseReturnValue(i8*)
declare i8* @objc_autorelease(i8*)
declare i32 @__gxx_personality_sj0(...)




define void @test0() {
bb:
  %tmp = bitcast %4* undef to i8*
  %tmp1 = tail call i8* @objc_retainAutoreleasedReturnValue(i8* %tmp) nounwind
  br label %bb3

bb3:                                              
  br i1 undef, label %bb6, label %bb4

bb4:                                              
  switch i64 undef, label %bb5 [
    i64 9223372036854775807, label %bb6
    i64 0, label %bb6
  ]

bb5:                                              
  br label %bb6

bb6:                                              
  %tmp7 = phi %4* [ undef, %bb5 ], [ undef, %bb4 ], [ undef, %bb3 ], [ undef, %bb4 ]
  unreachable
}










define void @test1() {
bb:
  %tmp = tail call %0* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to %0* ()*)()
  %tmp2 = bitcast %0* %tmp to i8*
  %tmp3 = tail call i8* @objc_retainAutoreleasedReturnValue(i8* %tmp2) nounwind
  br i1 undef, label %bb7, label %bb7

bb7:                                              
  %tmp8 = phi %0* [ %tmp, %bb ], [ %tmp, %bb ]
  unreachable
}










define void @_Z6doTestP8NSString() personality i8* bitcast (i32 (...)* @__gxx_personality_sj0 to i8*) {
entry:
  %call = invoke i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* ()*)()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  %tmp = tail call i8* @objc_retainAutoreleasedReturnValue(i8* %call) nounwind
  unreachable

lpad:                                             
  %tmp1 = landingpad { i8*, i32 }
          cleanup
  resume { i8*, i32 } undef
}

!clang.arc.retainAutoreleasedReturnValueMarker = !{!0}

!0 = !{!"mov\09r7, r7\09\09@ marker for objc_retainAutoreleaseReturnValue"}



