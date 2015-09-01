




define zeroext i16 @t1(i16 zeroext %c, i16 zeroext %k) nounwind ssp {
entry:








  %0 = icmp eq i16 %k, %c                         
  %1 = add i16 %k, 1                              
  br i1 %0, label %bb, label %bb1

bb:                                               
  tail call void @foo(i16 zeroext %1) nounwind
  ret i16 %1

bb1:                                              
  ret i16 %1
}

define zeroext i16 @t2(i16 zeroext %c, i16 zeroext %k) nounwind ssp {
entry:









  %0 = icmp eq i16 %k, %c                         
  %1 = add i16 %k, -1                             
  br i1 %0, label %bb, label %bb1

bb:                                               
  tail call void @foo(i16 zeroext %1) nounwind
  ret i16 %1

bb1:                                              
  ret i16 %1
}

declare void @foo(i16 zeroext)

define zeroext i16 @t3(i16 zeroext %c, i16 zeroext %k) nounwind ssp {
entry:








  %0 = add i16 %k, 2                              
  %1 = icmp eq i16 %k, %c                         
  br i1 %1, label %bb, label %bb1

bb:                                               
  tail call void @foo(i16 zeroext %0) nounwind
  ret i16 %0

bb1:                                              
  ret i16 %0
}

define zeroext i16 @t4(i16 zeroext %c, i16 zeroext %k) nounwind ssp {
entry:









  %0 = add i16 %k, %c                             
  %1 = icmp eq i16 %k, %c                         
  br i1 %1, label %bb, label %bb1

bb:                                               
  tail call void @foo(i16 zeroext %0) nounwind
  ret i16 %0

bb1:                                              
  ret i16 %0
}
