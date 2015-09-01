



target datalayout = "n8:16:32:64"

define void @t(i32 %c) nounwind optsize {
entry:
  br label %bb6

bb1:                                              
  %tmp = icmp eq i32 %c_addr.1, 20                
  br i1 %tmp, label %bb2, label %bb3

bb2:                                              
  %tmp1 = tail call i32 @f20(i32 %c_addr.1) nounwind 
  br label %bb7

bb3:                                              
  %tmp2 = icmp slt i32 %c_addr.1, 10              
  %tmp3 = add nsw i32 %c_addr.1, 1                
  %tmp4 = add i32 %c_addr.1, -1                   
  %c_addr.1.be = select i1 %tmp2, i32 %tmp3, i32 %tmp4 
  %indvar.next = add i32 %indvar, 1               

  br label %bb6

bb6:                                              
  %indvar = phi i32 [ %indvar.next, %bb3 ], [ 0, %entry ] 
  %c_addr.1 = phi i32 [ %c_addr.1.be, %bb3 ], [ %c, %entry ] 
  %tmp5 = icmp eq i32 %indvar, 9999               

  %tmp6 = icmp eq i32 %c_addr.1, 100              
  %or.cond = or i1 %tmp5, %tmp6                   
  br i1 %or.cond, label %bb7, label %bb1

bb7:                                              
  %c_addr.0 = phi i32 [ %tmp1, %bb2 ], [ %c_addr.1, %bb6 ] 
  tail call void @bar(i32 %c_addr.0) nounwind
  ret void
}

declare i32 @f20(i32)

declare void @bar(i32)
