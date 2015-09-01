
























define i32 @simple(i32* %a, i32* %b, i32 %x) nounwind {
entry:
  br label %loop
loop:
  %iv = phi i32* [ %a, %entry ], [ %iv4, %loop ]
  %s = phi i32 [ 0, %entry ], [ %s4, %loop ]
  %v = load i32, i32* %iv
  %iv1 = getelementptr inbounds i32, i32* %iv, i32 %x
  %v1 = load i32, i32* %iv1
  %iv2 = getelementptr inbounds i32, i32* %iv1, i32 %x
  %v2 = load i32, i32* %iv2
  %iv3 = getelementptr inbounds i32, i32* %iv2, i32 %x
  %v3 = load i32, i32* %iv3
  %s1 = add i32 %s, %v
  %s2 = add i32 %s1, %v1
  %s3 = add i32 %s2, %v2
  %s4 = add i32 %s3, %v3
  %iv4 = getelementptr inbounds i32, i32* %iv3, i32 %x
  %cmp = icmp eq i32* %iv4, %b
  br i1 %cmp, label %exit, label %loop
exit:
  ret i32 %s4
}



















define i32 @user(i32* %a, i32* %b, i32 %x) nounwind {
entry:
  br label %loop
loop:
  %iv = phi i32* [ %a, %entry ], [ %iv4, %loop ]
  %s = phi i32 [ 0, %entry ], [ %s4, %loop ]
  %v = load i32, i32* %iv
  %iv1 = getelementptr inbounds i32, i32* %iv, i32 %x
  %v1 = load i32, i32* %iv1
  %iv2 = getelementptr inbounds i32, i32* %iv1, i32 %x
  %v2 = load i32, i32* %iv2
  %iv3 = getelementptr inbounds i32, i32* %iv2, i32 %x
  %v3 = load i32, i32* %iv3
  %s1 = add i32 %s, %v
  %s2 = add i32 %s1, %v1
  %s3 = add i32 %s2, %v2
  %s4 = add i32 %s3, %v3
  %iv4 = getelementptr inbounds i32, i32* %iv3, i32 %x
  store i32 %s4, i32* %iv
  %cmp = icmp eq i32* %iv4, %b
  br i1 %cmp, label %exit, label %loop
exit:
  ret i32 %s4
}



















define void @extrastride(i8* nocapture %main, i32 %main_stride, i32* nocapture %res, i32 %x, i32 %y, i32 %z) nounwind {
entry:
  %cmp8 = icmp eq i32 %z, 0
  br i1 %cmp8, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   
  %add.ptr.sum = shl i32 %main_stride, 1 
  %add.ptr1.sum = add i32 %add.ptr.sum, %main_stride 
  %add.ptr2.sum = add i32 %x, %main_stride 
  %add.ptr4.sum = shl i32 %main_stride, 2 
  %add.ptr3.sum = add i32 %add.ptr2.sum, %add.ptr4.sum 
  br label %for.body

for.body:                                         
  %main.addr.011 = phi i8* [ %main, %for.body.lr.ph ], [ %add.ptr6, %for.body ]
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %res.addr.09 = phi i32* [ %res, %for.body.lr.ph ], [ %add.ptr7, %for.body ]
  %0 = bitcast i8* %main.addr.011 to i32*
  %1 = load i32, i32* %0, align 4
  %add.ptr = getelementptr inbounds i8, i8* %main.addr.011, i32 %main_stride
  %2 = bitcast i8* %add.ptr to i32*
  %3 = load i32, i32* %2, align 4
  %add.ptr1 = getelementptr inbounds i8, i8* %main.addr.011, i32 %add.ptr.sum
  %4 = bitcast i8* %add.ptr1 to i32*
  %5 = load i32, i32* %4, align 4
  %add.ptr2 = getelementptr inbounds i8, i8* %main.addr.011, i32 %add.ptr1.sum
  %6 = bitcast i8* %add.ptr2 to i32*
  %7 = load i32, i32* %6, align 4
  %add.ptr3 = getelementptr inbounds i8, i8* %main.addr.011, i32 %add.ptr4.sum
  %8 = bitcast i8* %add.ptr3 to i32*
  %9 = load i32, i32* %8, align 4
  %add = add i32 %3, %1
  %add4 = add i32 %add, %5
  %add5 = add i32 %add4, %7
  %add6 = add i32 %add5, %9
  store i32 %add6, i32* %res.addr.09, align 4
  %add.ptr6 = getelementptr inbounds i8, i8* %main.addr.011, i32 %add.ptr3.sum
  %add.ptr7 = getelementptr inbounds i32, i32* %res.addr.09, i32 %y
  %inc = add i32 %i.010, 1
  %cmp = icmp eq i32 %inc, %z
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          
  ret void
}













define void @foldedidx(i8* nocapture %a, i8* nocapture %b, i8* nocapture %c) nounwind ssp {
entry:
  br label %for.body

for.body:                                         
  %i.07 = phi i32 [ 0, %entry ], [ %inc.3, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %a, i32 %i.07
  %0 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds i8, i8* %b, i32 %i.07
  %1 = load i8, i8* %arrayidx1, align 1
  %conv26 = zext i8 %1 to i32
  %add = add nsw i32 %conv26, %conv5
  %conv3 = trunc i32 %add to i8
  %arrayidx4 = getelementptr inbounds i8, i8* %c, i32 %i.07
  store i8 %conv3, i8* %arrayidx4, align 1
  %inc1 = or i32 %i.07, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %a, i32 %inc1
  %2 = load i8, i8* %arrayidx.1, align 1
  %conv5.1 = zext i8 %2 to i32
  %arrayidx1.1 = getelementptr inbounds i8, i8* %b, i32 %inc1
  %3 = load i8, i8* %arrayidx1.1, align 1
  %conv26.1 = zext i8 %3 to i32
  %add.1 = add nsw i32 %conv26.1, %conv5.1
  %conv3.1 = trunc i32 %add.1 to i8
  %arrayidx4.1 = getelementptr inbounds i8, i8* %c, i32 %inc1
  store i8 %conv3.1, i8* %arrayidx4.1, align 1
  %inc.12 = or i32 %i.07, 2
  %arrayidx.2 = getelementptr inbounds i8, i8* %a, i32 %inc.12
  %4 = load i8, i8* %arrayidx.2, align 1
  %conv5.2 = zext i8 %4 to i32
  %arrayidx1.2 = getelementptr inbounds i8, i8* %b, i32 %inc.12
  %5 = load i8, i8* %arrayidx1.2, align 1
  %conv26.2 = zext i8 %5 to i32
  %add.2 = add nsw i32 %conv26.2, %conv5.2
  %conv3.2 = trunc i32 %add.2 to i8
  %arrayidx4.2 = getelementptr inbounds i8, i8* %c, i32 %inc.12
  store i8 %conv3.2, i8* %arrayidx4.2, align 1
  %inc.23 = or i32 %i.07, 3
  %arrayidx.3 = getelementptr inbounds i8, i8* %a, i32 %inc.23
  %6 = load i8, i8* %arrayidx.3, align 1
  %conv5.3 = zext i8 %6 to i32
  %arrayidx1.3 = getelementptr inbounds i8, i8* %b, i32 %inc.23
  %7 = load i8, i8* %arrayidx1.3, align 1
  %conv26.3 = zext i8 %7 to i32
  %add.3 = add nsw i32 %conv26.3, %conv5.3
  %conv3.3 = trunc i32 %add.3 to i8
  %arrayidx4.3 = getelementptr inbounds i8, i8* %c, i32 %inc.23
  store i8 %conv3.3, i8* %arrayidx4.3, align 1
  %inc.3 = add nsw i32 %i.07, 4
  %exitcond.3 = icmp eq i32 %inc.3, 400
  br i1 %exitcond.3, label %for.end, label %for.body

for.end:                                          
  ret void
}























define void @multioper(i32* %a, i32 %n) nounwind {
entry:
  br label %for.body

for.body:
  %p = phi i32* [ %p.next, %for.body ], [ %a, %entry ]
  %i = phi i32 [ %inc4, %for.body ], [ 0, %entry ]
  store i32 %i, i32* %p, align 4
  %inc1 = or i32 %i, 1
  %add.ptr.i1 = getelementptr inbounds i32, i32* %p, i32 1
  store i32 %inc1, i32* %add.ptr.i1, align 4
  %inc2 = add nsw i32 %i, 2
  %add.ptr.i2 = getelementptr inbounds i32, i32* %p, i32 2
  store i32 %inc2, i32* %add.ptr.i2, align 4
  %inc3 = add nsw i32 %i, 3
  %add.ptr.i3 = getelementptr inbounds i32, i32* %p, i32 3
  store i32 %inc3, i32* %add.ptr.i3, align 4
  %p.next = getelementptr inbounds i32, i32* %p, i32 4
  %inc4 = add nsw i32 %i, 4
  %cmp = icmp slt i32 %inc4, %n
  br i1 %cmp, label %for.body, label %exit

exit:
  ret void
}









define void @testCmpZero(i8* %src, i8* %dst, i32 %srcidx, i32 %dstidx, i32 %len) nounwind ssp {
entry:
  %dest0 = getelementptr inbounds i8, i8* %src, i32 %srcidx
  %source0 = getelementptr inbounds i8, i8* %dst, i32 %dstidx
  %add.ptr79.us.sum = add i32 %srcidx, %len
  %lftr.limit = getelementptr i8, i8* %src, i32 %add.ptr79.us.sum
  br label %for.body82.us

for.body82.us:
  %dest = phi i8* [ %dest0, %entry ], [ %incdec.ptr91.us, %for.body82.us ]
  %source = phi i8* [ %source0, %entry ], [ %add.ptr83.us, %for.body82.us ]
  %0 = bitcast i8* %source to i32*
  %1 = load i32, i32* %0, align 4
  %trunc = trunc i32 %1 to i8
  %add.ptr83.us = getelementptr inbounds i8, i8* %source, i32 4
  %incdec.ptr91.us = getelementptr inbounds i8, i8* %dest, i32 1
  store i8 %trunc, i8* %dest, align 1
  %exitcond = icmp eq i8* %incdec.ptr91.us, %lftr.limit
  br i1 %exitcond, label %return, label %for.body82.us

return:
  ret void
}
