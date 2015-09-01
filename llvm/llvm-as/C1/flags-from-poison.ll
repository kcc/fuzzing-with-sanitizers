





define void @foo() {
  ret void
}



define void @test-add-nsw(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = add nsw i32 %i, %offset



  %index64 = sext i32 %index32 to i64

  %ptr = getelementptr inbounds float, float* %input, i64 %index64
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  call void @foo()
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}


define void @test-add-nuw(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = add nuw i32 %i, %offset

  %ptr = getelementptr inbounds float, float* %input, i32 %index32
  %nexti = add nuw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop

exit:
  ret void
}


define void @test-add-no-load(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = add nsw i32 %i, %offset

  %ptr = getelementptr inbounds float, float* %input, i32 %index32
  %nexti = add nuw i32 %i, 1
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop

exit:
  ret void
}




define void @test-add-not-header(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop2 ], [ 0, %entry ]
  br label %loop2
loop2:



  %index32 = add nsw i32 %i, %offset

  %ptr = getelementptr inbounds float, float* %input, i32 %index32
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}



define void @test-add-not-header2(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop2 ], [ 0, %entry ]



  %index32 = add nsw i32 %i, %offset

  %ptr = getelementptr inbounds float, float* %input, i32 %index32
  %nexti = add nsw i32 %i, 1
  br label %loop2
loop2:
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}




define void @test-add-call(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  call void @foo()
  %index32 = add nsw i32 %i, %offset

  %ptr = getelementptr inbounds float, float* %input, i32 %index32
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}



define void @test-add-call2(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = add nsw i32 %i, %offset

  %ptr = getelementptr inbounds float, float* %input, i32 %index32
  %nexti = add nsw i32 %i, 1
  call void @foo()
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}



define void @test-add-no-inbounds(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = add nsw i32 %i, %offset

  %ptr = getelementptr float, float* %input, i32 %index32
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}



define void @test-add-mul-propagates(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = add nsw i32 %i, %offset

  %indexmul = mul nuw i32 %index32, 2
  %ptr = getelementptr inbounds float, float* %input, i32 %indexmul
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}



define void @test-add-mul-no-propagation(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = add nsw i32 %i, %offset

  %indexmul = mul nsw i32 %index32, %offset
  %ptr = getelementptr inbounds float, float* %input, i32 %indexmul
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}



define void @test-add-mul-no-propagation2(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = add nsw i32 %i, %offset

  %indexmul = mul i32 %index32, 2
  %ptr = getelementptr inbounds float, float* %input, i32 %indexmul
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}


define void @test-add-div(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %j = add nsw i32 %i, %offset

  %q = sdiv i32 %numIterations, %j
  %nexti = add nsw i32 %i, 1
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}


define void @test-add-div2(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %j = add nsw i32 %i, %offset

  %q = sdiv i32 %j, %numIterations
  %nexti = add nsw i32 %i, 1
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}


define void @test-add-store(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = add nsw i32 %i, %offset

  %ptr = getelementptr inbounds float, float* %input, i32 %index32
  %nexti = add nsw i32 %i, 1
  store float 1.0, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}





define void @test-add-twice(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop2:


  %seq = add nsw nuw i32 %index32, 1
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop

loop:
  %i = phi i32 [ %nexti, %loop2 ], [ 0, %entry ]

  %j = add nsw i32 %i, 1


  %index32 = add nsw i32 %j, %offset

  %ptr = getelementptr inbounds float, float* %input, i32 %index32
  %nexti = add nsw i32 %i, 1
  store float 1.0, float* %ptr, align 4
  br label %loop2
exit:
  ret void
}



define void @test-mul-nsw(float* %input, i32 %stride, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = mul nsw i32 %i, %stride



  %index64 = sext i32 %index32 to i64

  %ptr = getelementptr inbounds float, float* %input, i64 %index64
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}


define void @test-mul-nuw(float* %input, i32 %stride, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = mul nuw i32 %i, %stride

  %ptr = getelementptr inbounds float, float* %input, i32 %index32
  %nexti = add nuw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop

exit:
  ret void
}



define void @test-shl-nsw(float* %input, i32 %start, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ %start, %entry ]



  %index32 = shl nsw i32 %i, 8



  %index64 = sext i32 %index32 to i64

  %ptr = getelementptr inbounds float, float* %input, i64 %index64
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}


define void @test-shl-nuw(float* %input, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = shl nuw i32 %i, 9

  %ptr = getelementptr inbounds float, float* %input, i32 %index32
  %nexti = add nuw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop

exit:
  ret void
}




define void @test-sub-no-nsw(float* %input, i32 %start, i32 %sub, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ %start, %entry ]



  %index32 = sub nsw i32 %i, %sub
  %index64 = sext i32 %index32 to i64

  %ptr = getelementptr inbounds float, float* %input, i64 %index64
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}



define void @test-sub-nsw(float* %input, i32 %start, i32 %sub, i32 %numIterations) {

entry:
  %halfsub = ashr i32 %sub, 1
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ %start, %entry ]



  %index32 = sub nsw i32 %i, %halfsub
  %index64 = sext i32 %index32 to i64

  %ptr = getelementptr inbounds float, float* %input, i64 %index64
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}



define void @test-sub-nsw-lhs-non-negative(float* %input, i32 %sub, i32 %numIterations) {

entry:
  br label %loop
loop:
  %i = phi i32 [ %nexti, %loop ], [ 0, %entry ]



  %index32 = sub nsw i32 %i, %sub



  %index64 = sext i32 %index32 to i64

  %ptr = getelementptr inbounds float, float* %input, i64 %index64
  %nexti = add nsw i32 %i, 1
  %f = load float, float* %ptr, align 4
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop
exit:
  ret void
}





define void @test-sub-with-add(float* %input, i32 %offset, i32 %numIterations) {

entry:
  br label %loop
loop2:


  %seq = add nsw nuw i32 %index32, 1
  %exitcond = icmp eq i32 %nexti, %numIterations
  br i1 %exitcond, label %exit, label %loop

loop:
  %i = phi i32 [ %nexti, %loop2 ], [ 0, %entry ]

  %j = add nsw i32 %i, 1


  %index32 = sub nsw i32 %j, %offset

  %ptr = getelementptr inbounds float, float* %input, i32 %index32
  %nexti = add nsw i32 %i, 1
  store float 1.0, float* %ptr, align 4
  br label %loop2
exit:
  ret void
}





define void @subrecurrences(i32 %outer_l, i32 %inner_l, i32 %val) {

 entry:
  br label %outer

outer:
  %o_idx = phi i32 [ 0, %entry ], [ %o_idx.inc, %outer.be ]
  %o_idx.inc = add nsw i32 %o_idx, 1
  %cond = icmp eq i32 %o_idx, %val
  br i1 %cond, label %inner, label %outer.be

inner:
  %i_idx = phi i32 [ 0, %outer ], [ %i_idx.inc, %inner ]
  %i_idx.inc = add nsw i32 %i_idx, 1


  %v = sub nsw i32 %i_idx, %o_idx.inc
  %forub = udiv i32 1, %v
  %cond2 = icmp eq i32 %i_idx, %inner_l
  br i1 %cond2, label %outer.be, label %inner

outer.be:
  %cond3 = icmp eq i32 %o_idx, %outer_l
  br i1 %cond3, label %exit, label %outer

exit:
  ret void
}
