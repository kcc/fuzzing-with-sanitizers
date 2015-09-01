


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.6.0"







define void @rdiv0(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.03 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %conv = trunc i64 %i.03 to i32
  %mul = shl nsw i64 %i.03, 2
  %add = add nsw i64 %mul, 10
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc, 10
  br i1 %exitcond5, label %for.body, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body4:                                        
  %j.02 = phi i64 [ %inc9, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.01 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %mul5 = shl nsw i64 %j.02, 1
  %add64 = or i64 %mul5, 1
  %arrayidx7 = getelementptr inbounds i32, i32* %A, i64 %add64
  %0 = load i32, i32* %arrayidx7, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc9 = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc9, 10
  br i1 %exitcond, label %for.body4, label %for.end10

for.end10:                                        
  ret void
}







define void @rdiv1(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.03 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, 11
  %sub = add nsw i64 %mul, -45
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %sub
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.03, 1
  %exitcond4 = icmp ne i64 %inc, 5
  br i1 %exitcond4, label %for.body, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body4:                                        
  %j.02 = phi i64 [ %inc7, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.01 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %arrayidx5 = getelementptr inbounds i32, i32* %A, i64 %j.02
  %0 = load i32, i32* %arrayidx5, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc7 = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc7, 10
  br i1 %exitcond, label %for.body4, label %for.end8

for.end8:                                         
  ret void
}







define void @rdiv2(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.03 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, 11
  %sub = add nsw i64 %mul, -45
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %sub
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.03, 1
  %exitcond4 = icmp ne i64 %inc, 6
  br i1 %exitcond4, label %for.body, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body4:                                        
  %j.02 = phi i64 [ %inc7, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.01 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %arrayidx5 = getelementptr inbounds i32, i32* %A, i64 %j.02
  %0 = load i32, i32* %arrayidx5, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc7 = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc7, 10
  br i1 %exitcond, label %for.body4, label %for.end8

for.end8:                                         
  ret void
}







define void @rdiv3(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.03 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, 11
  %sub = add nsw i64 %mul, -45
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %sub
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.03, 1
  %exitcond4 = icmp ne i64 %inc, 5
  br i1 %exitcond4, label %for.body, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body4:                                        
  %j.02 = phi i64 [ %inc7, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.01 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %arrayidx5 = getelementptr inbounds i32, i32* %A, i64 %j.02
  %0 = load i32, i32* %arrayidx5, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc7 = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc7, 11
  br i1 %exitcond, label %for.body4, label %for.end8

for.end8:                                         
  ret void
}







define void @rdiv4(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.03 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, 11
  %sub = add nsw i64 %mul, -45
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %sub
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.03, 1
  %exitcond4 = icmp ne i64 %inc, 6
  br i1 %exitcond4, label %for.body, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body4:                                        
  %j.02 = phi i64 [ %inc7, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.01 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %arrayidx5 = getelementptr inbounds i32, i32* %A, i64 %j.02
  %0 = load i32, i32* %arrayidx5, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc7 = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc7, 11
  br i1 %exitcond, label %for.body4, label %for.end8

for.end8:                                         
  ret void
}







define void @rdiv5(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.03 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, -11
  %add = add nsw i64 %mul, 45
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.03, 1
  %exitcond4 = icmp ne i64 %inc, 5
  br i1 %exitcond4, label %for.body, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body4:                                        
  %j.02 = phi i64 [ %inc7, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.01 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %sub = sub nsw i64 0, %j.02
  %arrayidx5 = getelementptr inbounds i32, i32* %A, i64 %sub
  %0 = load i32, i32* %arrayidx5, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc7 = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc7, 10
  br i1 %exitcond, label %for.body4, label %for.end8

for.end8:                                         
  ret void
}







define void @rdiv6(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.03 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, -11
  %add = add nsw i64 %mul, 45
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.03, 1
  %exitcond4 = icmp ne i64 %inc, 6
  br i1 %exitcond4, label %for.body, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body4:                                        
  %j.02 = phi i64 [ %inc7, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.01 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %sub = sub nsw i64 0, %j.02
  %arrayidx5 = getelementptr inbounds i32, i32* %A, i64 %sub
  %0 = load i32, i32* %arrayidx5, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc7 = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc7, 10
  br i1 %exitcond, label %for.body4, label %for.end8

for.end8:                                         
  ret void
}







define void @rdiv7(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.03 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, -11
  %add = add nsw i64 %mul, 45
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.03, 1
  %exitcond4 = icmp ne i64 %inc, 5
  br i1 %exitcond4, label %for.body, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body4:                                        
  %j.02 = phi i64 [ %inc7, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.01 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %sub = sub nsw i64 0, %j.02
  %arrayidx5 = getelementptr inbounds i32, i32* %A, i64 %sub
  %0 = load i32, i32* %arrayidx5, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc7 = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc7, 11
  br i1 %exitcond, label %for.body4, label %for.end8

for.end8:                                         
  ret void
}







define void @rdiv8(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.body








for.body:                                         
  %i.03 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, -11
  %add = add nsw i64 %mul, 45
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.03, 1
  %exitcond4 = icmp ne i64 %inc, 6
  br i1 %exitcond4, label %for.body, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body4:                                        
  %j.02 = phi i64 [ %inc7, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.01 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %sub = sub nsw i64 0, %j.02
  %arrayidx5 = getelementptr inbounds i32, i32* %A, i64 %sub
  %0 = load i32, i32* %arrayidx5, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.01, i64 1
  store i32 %0, i32* %B.addr.01, align 4
  %inc7 = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc7, 11
  br i1 %exitcond, label %for.body4, label %for.end8

for.end8:                                         
  ret void
}







define void @rdiv9(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc5 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc6, %for.inc5 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, 11
  %sub = sub nsw i64 %mul, %j.02
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %sub
  store i32 %conv, i32* %arrayidx, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %A, i64 45
  %0 = load i32, i32* %arrayidx4, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 10
  br i1 %exitcond, label %for.body3, label %for.inc5

for.inc5:                                         
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 10
  %inc6 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc6, 5
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end7

for.end7:                                         
  ret void
}








define void @rdiv10(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc5 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc6, %for.inc5 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, 11
  %sub = sub nsw i64 %mul, %j.02
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %sub
  store i32 %conv, i32* %arrayidx, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %A, i64 45
  %0 = load i32, i32* %arrayidx4, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 10
  br i1 %exitcond, label %for.body3, label %for.inc5

for.inc5:                                         
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 10
  %inc6 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc6, 6
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end7

for.end7:                                         
  ret void
}







define void @rdiv11(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc5 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc6, %for.inc5 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, 11
  %sub = sub nsw i64 %mul, %j.02
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %sub
  store i32 %conv, i32* %arrayidx, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %A, i64 45
  %0 = load i32, i32* %arrayidx4, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 11
  br i1 %exitcond, label %for.body3, label %for.inc5

for.inc5:                                         
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 11
  %inc6 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc6, 5
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end7

for.end7:                                         
  ret void
}







define void @rdiv12(i32* %A, i32* %B) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc5 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc6, %for.inc5 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, 11
  %sub = sub nsw i64 %mul, %j.02
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %sub
  store i32 %conv, i32* %arrayidx, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %A, i64 45
  %0 = load i32, i32* %arrayidx4, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 11
  br i1 %exitcond, label %for.body3, label %for.inc5

for.inc5:                                         
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 11
  %inc6 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc6, 6
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end7

for.end7:                                         
  ret void
}
