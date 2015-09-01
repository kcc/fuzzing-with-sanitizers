







%struct.Foo = type { i8* }




define %struct.Foo* @foo(%struct.Foo* %this, i32 %acc) nounwind readonly align 2 {
entry:
  %scevgep = getelementptr %struct.Foo, %struct.Foo* %this, i32 1
  br label %tailrecurse

tailrecurse:                                      
  %lsr.iv2 = phi %struct.Foo* [ %scevgep3, %sw.bb ], [ %scevgep, %entry ]
  %lsr.iv = phi i32 [ %lsr.iv.next, %sw.bb ], [ 1, %entry ]
  %acc.tr = phi i32 [ %or, %sw.bb ], [ %acc, %entry ]
  %lsr.iv24 = bitcast %struct.Foo* %lsr.iv2 to i8**
  %scevgep5 = getelementptr i8*, i8** %lsr.iv24, i32 -1
  %tmp2 = load i8*, i8** %scevgep5
  %0 = ptrtoint i8* %tmp2 to i32












  %and = and i32 %0, 3
  %tst = icmp eq i32 %and, 0
  br i1 %tst, label %sw.bb, label %tailrecurse.switch

tailrecurse.switch:                               











  switch i32 %and, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb6
    i32 2, label %sw.bb8
  ], !prof !1

sw.bb:                                            
  %shl = shl i32 %acc.tr, 1
  %or = or i32 %and, %shl
  %lsr.iv.next = add i32 %lsr.iv, 1
  %scevgep3 = getelementptr %struct.Foo, %struct.Foo* %lsr.iv2, i32 1
  br label %tailrecurse

sw.bb6:                                           
  ret %struct.Foo* %lsr.iv2

sw.bb8:                                           
  %tmp1 = add i32 %acc.tr, %lsr.iv
  %add.ptr11 = getelementptr inbounds %struct.Foo, %struct.Foo* %this, i32 %tmp1
  ret %struct.Foo* %add.ptr11

sw.epilog:                                        
  ret %struct.Foo* undef
}





%struct.S = type { i8* (i8*)*, [1 x i8] }





define internal zeroext i8 @bar(%struct.S* %x, %struct.S* nocapture %y) nounwind readonly {
entry:
  %0 = getelementptr inbounds %struct.S, %struct.S* %x, i32 0, i32 1, i32 0
  %1 = load i8, i8* %0, align 1
  %2 = zext i8 %1 to i32





  %3 = and i32 %2, 112
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %return, label %bb

bb:                                               

  %5 = getelementptr inbounds %struct.S, %struct.S* %y, i32 0, i32 1, i32 0
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32





  %8 = and i32 %7, 112
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %return, label %bb2

bb2:                                              





  %10 = icmp eq i32 %3, 16
  %11 = icmp eq i32 %8, 16
  %or.cond = or i1 %10, %11
  br i1 %or.cond, label %bb4, label %return

bb4:                                              
  %12 = ptrtoint %struct.S* %x to i32
  %phitmp = trunc i32 %12 to i8
  ret i8 %phitmp

return:                                           
  ret i8 1
}











define i32 @test_tst_assessment(i1 %lhs, i1 %rhs) {
  %lhs32 = zext i1 %lhs to i32
  %rhs32 = zext i1 %rhs to i32
  %diff = sub nsw i32 %lhs32, %rhs32





  ret i32 %diff
}

!1 = !{!"branch_weights", i32 1, i32 1, i32 3, i32 2 }
