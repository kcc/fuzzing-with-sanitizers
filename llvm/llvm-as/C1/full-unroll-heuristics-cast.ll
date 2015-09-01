
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"

@known_constant = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1], align 16














define i8 @const_load_trunc(i32* noalias nocapture readonly %src) {
entry:
  br label %loop

loop:                                                
  %iv = phi i64 [ 0, %entry ], [ %inc, %loop ]
  %r  = phi i8 [ 0, %entry ], [ %add, %loop ]
  %arrayidx = getelementptr inbounds i32, i32* %src, i64 %iv
  %src_element = load i32, i32* %arrayidx, align 4
  %array_const_idx = getelementptr inbounds [10 x i32], [10 x i32]* @known_constant, i64 0, i64 %iv
  %const_array_element = load i32, i32* %array_const_idx, align 4
  %x = trunc i32 %src_element to i8
  %y = trunc i32 %const_array_element to i8
  %mul = mul nsw i8 %x, %y
  %add = add nsw i8 %mul, %r
  %inc = add nuw nsw i64 %iv, 1
  %exitcond86.i = icmp eq i64 %inc, 10
  br i1 %exitcond86.i, label %loop.end, label %loop

loop.end:                                            
  %r.lcssa = phi i8 [ %r, %loop ]
  ret i8 %r.lcssa
}





define i64 @const_load_zext(i32* noalias nocapture readonly %src) {
entry:
  br label %loop

loop:                                                
  %iv = phi i64 [ 0, %entry ], [ %inc, %loop ]
  %r  = phi i64 [ 0, %entry ], [ %add, %loop ]
  %arrayidx = getelementptr inbounds i32, i32* %src, i64 %iv
  %src_element = load i32, i32* %arrayidx, align 4
  %array_const_idx = getelementptr inbounds [10 x i32], [10 x i32]* @known_constant, i64 0, i64 %iv
  %const_array_element = load i32, i32* %array_const_idx, align 4
  %x = zext i32 %src_element to i64
  %y = zext i32 %const_array_element to i64
  %mul = mul nsw i64 %x, %y
  %add = add nsw i64 %mul, %r
  %inc = add nuw nsw i64 %iv, 1
  %exitcond86.i = icmp eq i64 %inc, 10
  br i1 %exitcond86.i, label %loop.end, label %loop

loop.end:                                            
  %r.lcssa = phi i64 [ %r, %loop ]
  ret i64 %r.lcssa
}





define i64 @const_load_sext(i32* noalias nocapture readonly %src) {
entry:
  br label %loop

loop:                                                
  %iv = phi i64 [ 0, %entry ], [ %inc, %loop ]
  %r  = phi i64 [ 0, %entry ], [ %add, %loop ]
  %arrayidx = getelementptr inbounds i32, i32* %src, i64 %iv
  %src_element = load i32, i32* %arrayidx, align 4
  %array_const_idx = getelementptr inbounds [10 x i32], [10 x i32]* @known_constant, i64 0, i64 %iv
  %const_array_element = load i32, i32* %array_const_idx, align 4
  %x = sext i32 %src_element to i64
  %y = sext i32 %const_array_element to i64
  %mul = mul nsw i64 %x, %y
  %add = add nsw i64 %mul, %r
  %inc = add nuw nsw i64 %iv, 1
  %exitcond86.i = icmp eq i64 %inc, 10
  br i1 %exitcond86.i, label %loop.end, label %loop

loop.end:                                            
  %r.lcssa = phi i64 [ %r, %loop ]
  ret i64 %r.lcssa
}
