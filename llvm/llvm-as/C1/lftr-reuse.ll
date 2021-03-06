



target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"






define void @ptriv(i8* %base, i32 %n) nounwind {
entry:
  %idx.ext = sext i32 %n to i64
  %add.ptr = getelementptr inbounds i8, i8* %base, i64 %idx.ext
  %cmp1 = icmp ult i8* %base, %add.ptr
  br i1 %cmp1, label %for.body, label %for.end







for.body:
  %p.02 = phi i8* [ %base, %entry ], [ %incdec.ptr, %for.body ]
  
  %sub.ptr.lhs.cast = ptrtoint i8* %p.02 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %base to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i8
  store i8 %conv, i8* %p.02
  %incdec.ptr = getelementptr inbounds i8, i8* %p.02, i32 1
  %cmp = icmp ult i8* %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body, label %for.end

for.end:
  ret void
}



define void @expandOuterRecurrence(i32 %arg) nounwind {
entry:
  %sub1 = sub nsw i32 %arg, 1
  %cmp1 = icmp slt i32 0, %sub1
  br i1 %cmp1, label %outer, label %exit



outer:
  %i = phi i32 [ 0, %entry ], [ %i.inc, %outer.inc ]
  %sub2 = sub nsw i32 %arg, %i
  %sub3 = sub nsw i32 %sub2, 1
  %cmp2 = icmp slt i32 0, %sub3
  br i1 %cmp2, label %inner.ph, label %outer.inc

inner.ph:
  br label %inner



inner:
  %j = phi i32 [ 0, %inner.ph ], [ %j.inc, %inner ]
  %j.inc = add nsw i32 %j, 1
  %cmp3 = icmp slt i32 %j.inc, %sub3
  br i1 %cmp3, label %inner, label %outer.inc




outer.inc:
  %i.inc = add nsw i32 %i, 1
  %cmp4 = icmp slt i32 %i.inc, %sub1
  br i1 %cmp4, label %outer, label %exit

exit:
  ret void
}



define void @guardedloop([0 x double]* %matrix, [0 x double]* %vector,
                         i32 %irow, i32 %ilead) nounwind {









entry:
  %cmp = icmp slt i32 1, %irow
  br i1 %cmp, label %loop, label %return

loop:
  %rowidx = phi i32 [ 0, %entry ], [ %row.inc, %loop ]
  %i = phi i32 [ 0, %entry ], [ %i.inc, %loop ]
  %diagidx = add nsw i32 %rowidx, %i
  %diagidxw = sext i32 %diagidx to i64
  %matrixp = getelementptr inbounds [0 x double], [0 x double]* %matrix, i32 0, i64 %diagidxw
  %v1 = load double, double* %matrixp
  %iw = sext i32 %i to i64
  %vectorp = getelementptr inbounds [0 x double], [0 x double]* %vector, i32 0, i64 %iw
  %v2 = load double, double* %vectorp
  %row.inc = add nsw i32 %rowidx, %ilead
  %i.inc = add nsw i32 %i, 1
  %cmp196 = icmp slt i32 %i.inc, %irow
  br i1 %cmp196, label %loop, label %return

return:
  ret void
}


define void @unguardedloop([0 x double]* %matrix, [0 x double]* %vector,
                           i32 %irow, i32 %ilead) nounwind {
entry:
  br label %loop










loop:
  %rowidx = phi i32 [ 0, %entry ], [ %row.inc, %loop ]
  %i = phi i32 [ 0, %entry ], [ %i.inc, %loop ]
  %diagidx = add nsw i32 %rowidx, %i
  %diagidxw = sext i32 %diagidx to i64
  %matrixp = getelementptr inbounds [0 x double], [0 x double]* %matrix, i32 0, i64 %diagidxw
  %v1 = load double, double* %matrixp
  %iw = sext i32 %i to i64
  %vectorp = getelementptr inbounds [0 x double], [0 x double]* %vector, i32 0, i64 %iw
  %v2 = load double, double* %vectorp
  %row.inc = add nsw i32 %rowidx, %ilead
  %i.inc = add nsw i32 %i, 1
  %cmp196 = icmp slt i32 %i.inc, %irow
  br i1 %cmp196, label %loop, label %return

return:
  ret void
}







define void @geplftr(i8* %base, i32 %x, i32 %y, i32 %n) nounwind {
entry:
  %x.ext = sext i32 %x to i64
  %add.ptr = getelementptr inbounds i8, i8* %base, i64 %x.ext
  %y.ext = sext i32 %y to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr, i64 %y.ext
  %lim = add i32 %x, %n
  %cmp.ph = icmp ult i32 %x, %lim
  br i1 %cmp.ph, label %loop, label %exit








loop:
  %i = phi i32 [ %x, %entry ], [ %inc, %loop ]
  %aptr = phi i8* [ %add.ptr10, %entry ], [ %incdec.ptr, %loop ]
  %incdec.ptr = getelementptr inbounds i8, i8* %aptr, i32 1
  store i8 3, i8* %aptr
  %inc = add i32 %i, 1
  %cmp = icmp ult i32 %inc, %lim
  br i1 %cmp, label %loop, label %exit

exit:
  ret void
}


define void @nevertaken() nounwind uwtable ssp {
entry:
  br label %loop






loop:
  %i = phi i32 [ 0, %entry ], [ %inc, %loop ]
  %inc = add nsw i32 %i, 1
  %cmp = icmp sle i32 %inc, 0
  br i1 %cmp, label %loop, label %exit

exit:
  ret void
}


define void @aryptriv([256 x i8]* %base, i32 %n) nounwind {
entry:
  %ivstart = getelementptr inbounds [256 x i8], [256 x i8]* %base, i32 0, i32 0
  %ivend = getelementptr inbounds [256 x i8], [256 x i8]* %base, i32 0, i32 %n
  %cmp.ph = icmp ult i8* %ivstart, %ivend
  br i1 %cmp.ph, label %loop, label %exit








loop:
  %aptr = phi i8* [ %ivstart, %entry ], [ %incdec.ptr, %loop ]
  %incdec.ptr = getelementptr inbounds i8, i8* %aptr, i32 1
  store i8 3, i8* %aptr
  %cmp = icmp ult i8* %incdec.ptr, %ivend
  br i1 %cmp, label %loop, label %exit

exit:
  ret void
}
