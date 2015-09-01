


declare void @g1()
declare void @g2()
declare void @g3()
declare void @g4()

define void @test1(i32 %a, i32 %b) {
entry:
  br label %do.body


do.body:
  %i.0 = phi i32 [ 0, %entry ], [ %inc3, %do.end ]
  call void @g1()
  br label %do.body1


do.body1:
  %j.0 = phi i32 [ 0, %do.body ], [ %inc, %do.body1 ]
  call void @g2()
  %inc = add nsw i32 %j.0, 1
  %cmp = icmp slt i32 %inc, %b
  br i1 %cmp, label %do.body1, label %do.end



do.end:
  call void @g3()
  %inc3 = add nsw i32 %i.0, 1
  %cmp4 = icmp slt i32 %inc3, %a
  br i1 %cmp4, label %do.body, label %do.end5



do.end5:
  call void @g4()
  ret void
}

define void @test2(i32 %a, i32 %b) {
entry:
  %cmp9 = icmp sgt i32 %a, 0
  br i1 %cmp9, label %for.body.lr.ph, label %for.end6



for.body.lr.ph:
  %cmp27 = icmp sgt i32 %b, 0
  br label %for.body


for.body:
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc5, %for.end ]
  call void @g1()
  br i1 %cmp27, label %for.body3, label %for.end



for.body3:
  %j.08 = phi i32 [ %inc, %for.body3 ], [ 0, %for.body ]
  call void @g2()
  %inc = add nsw i32 %j.08, 1
  %exitcond = icmp eq i32 %inc, %b
  br i1 %exitcond, label %for.end, label %for.body3



for.end:
  call void @g3()
  %inc5 = add nsw i32 %i.010, 1
  %exitcond11 = icmp eq i32 %inc5, %a
  br i1 %exitcond11, label %for.end6, label %for.body



for.end6:
  call void @g4()
  ret void
}

define void @test3(i32 %a, i32 %b, i32* %c) {
entry:
  br label %do.body


do.body:
  %i.0 = phi i32 [ 0, %entry ], [ %inc4, %if.end ]
  call void @g1()
  %0 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %0, 42
  br i1 %cmp, label %do.body1, label %if.end



do.body1:
  %j.0 = phi i32 [ %inc, %do.body1 ], [ 0, %do.body ]
  call void @g2()
  %inc = add nsw i32 %j.0, 1
  %cmp2 = icmp slt i32 %inc, %b
  br i1 %cmp2, label %do.body1, label %if.end



if.end:
  call void @g3()
  %inc4 = add nsw i32 %i.0, 1
  %cmp5 = icmp slt i32 %inc4, %a
  br i1 %cmp5, label %do.body, label %do.end6



do.end6:
  call void @g4()
  ret void
}

define void @test4(i32 %a, i32 %b, i32* %c) {
entry:
  br label %do.body


do.body:
  %i.0 = phi i32 [ 0, %entry ], [ %inc4, %do.end ]
  call void @g1()
  %0 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %0, 42
  br i1 %cmp, label %return, label %do.body1



do.body1:
  %j.0 = phi i32 [ %inc, %do.body1 ], [ 0, %do.body ]
  call void @g2()
  %inc = add nsw i32 %j.0, 1
  %cmp2 = icmp slt i32 %inc, %b
  br i1 %cmp2, label %do.body1, label %do.end



do.end:
  call void @g3()
  %inc4 = add nsw i32 %i.0, 1
  %cmp5 = icmp slt i32 %inc4, %a
  br i1 %cmp5, label %do.body, label %do.end6



do.end6:
  call void @g4()
  br label %return


return:
  ret void
}

define void @test5(i32 %a, i32 %b, i32* %c) {
entry:
  br label %do.body


do.body:
  %i.0 = phi i32 [ 0, %entry ], [ %inc4, %do.end ]
  call void @g1()
  br label %do.body1


do.body1:
  %j.0 = phi i32 [ 0, %do.body ], [ %inc, %if.end ]
  %0 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %0, 42
  br i1 %cmp, label %return, label %if.end



if.end:
  call void @g2()
  %inc = add nsw i32 %j.0, 1
  %cmp2 = icmp slt i32 %inc, %b
  br i1 %cmp2, label %do.body1, label %do.end



do.end:
  call void @g3()
  %inc4 = add nsw i32 %i.0, 1
  %cmp5 = icmp slt i32 %inc4, %a
  br i1 %cmp5, label %do.body, label %do.end6



do.end6:
  call void @g4()
  br label %return


return:
  ret void
}

define void @test6(i32 %a, i32 %b, i32* %c) {
entry:
  br label %do.body


do.body:
  %i.0 = phi i32 [ 0, %entry ], [ %inc4, %do.end ]
  call void @g1()
  br label %do.body1


do.body1:
  %j.0 = phi i32 [ 0, %do.body ], [ %inc, %do.cond ]
  call void @g2()
  %0 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %0, 42
  br i1 %cmp, label %return, label %do.cond



do.cond:
  %inc = add nsw i32 %j.0, 1
  %cmp2 = icmp slt i32 %inc, %b
  br i1 %cmp2, label %do.body1, label %do.end



do.end:
  call void @g3()
  %inc4 = add nsw i32 %i.0, 1
  %cmp5 = icmp slt i32 %inc4, %a
  br i1 %cmp5, label %do.body, label %do.end6



do.end6:
  call void @g4()
  br label %return


return:
  ret void
}

define void @test7(i32 %a, i32 %b, i32* %c) {
entry:
  %cmp10 = icmp sgt i32 %a, 0
  br i1 %cmp10, label %for.body.lr.ph, label %for.end7



for.body.lr.ph:
  %cmp38 = icmp sgt i32 %b, 0
  br label %for.body


for.body:
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc6, %for.inc5 ]
  %0 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %0, %i.011
  br i1 %cmp1, label %for.inc5, label %if.end



if.end:
  call void @g1()
  br i1 %cmp38, label %for.body4, label %for.end



for.body4:
  %j.09 = phi i32 [ %inc, %for.body4 ], [ 0, %if.end ]
  call void @g2()
  %inc = add nsw i32 %j.09, 1
  %exitcond = icmp eq i32 %inc, %b
  br i1 %exitcond, label %for.end, label %for.body4



for.end:
  call void @g3()
  br label %for.inc5


for.inc5:
  %inc6 = add nsw i32 %i.011, 1
  %exitcond12 = icmp eq i32 %inc6, %a
  br i1 %exitcond12, label %for.end7, label %for.body



for.end7:
  call void @g4()
  ret void
}

define void @test8(i32 %a, i32 %b, i32* %c) {
entry:
  %cmp18 = icmp sgt i32 %a, 0
  br i1 %cmp18, label %for.body.lr.ph, label %for.end15



for.body.lr.ph:
  %cmp216 = icmp sgt i32 %b, 0
  %arrayidx5 = getelementptr inbounds i32, i32* %c, i64 1
  %arrayidx9 = getelementptr inbounds i32, i32* %c, i64 2
  br label %for.body


for.body:
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14, %for.end ]
  call void @g1()
  br i1 %cmp216, label %for.body3, label %for.end



for.body3:
  %j.017 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %0 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %0, %j.017
  br i1 %cmp4, label %for.inc, label %if.end



if.end:
  %1 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp eq i32 %1, %j.017
  br i1 %cmp6, label %for.inc, label %if.end8



if.end8:
  %2 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp eq i32 %2, %j.017
  br i1 %cmp10, label %for.inc, label %if.end12



if.end12:
  call void @g2()
  br label %for.inc


for.inc:
  %inc = add nsw i32 %j.017, 1
  %exitcond = icmp eq i32 %inc, %b
  br i1 %exitcond, label %for.end, label %for.body3



for.end:
  call void @g3()
  %inc14 = add nsw i32 %i.019, 1
  %exitcond20 = icmp eq i32 %inc14, %a
  br i1 %exitcond20, label %for.end15, label %for.body



for.end15:
  call void @g4()
  ret void
}
