


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.6.0"







define void @prop0([100 x i32]* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc9 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc10, %for.inc9 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %add = add nsw i64 %i.03, %j.02
  %add4 = add nsw i64 %i.03, 1
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %add4, i64 %add
  store i32 %conv, i32* %arrayidx5, align 4
  %add6 = add nsw i64 %i.03, %j.02
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %i.03, i64 %add6
  %0 = load i32, i32* %arrayidx8, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 100
  br i1 %exitcond, label %for.body3, label %for.inc9

for.inc9:                                         
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 100
  %inc10 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc10, 100
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end11

for.end11:                                        
  ret void
}








define void @prop1([100 x [100 x i32]]* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.06 = phi i32* [ %B, %entry ], [ %scevgep7, %for.inc18 ]
  %i.05 = phi i64 [ 0, %entry ], [ %inc19, %for.inc18 ]
  br label %for.cond4.preheader

for.cond4.preheader:                              
  %B.addr.14 = phi i32* [ %B.addr.06, %for.cond1.preheader ], [ %scevgep, %for.inc15 ]
  %j.03 = phi i64 [ 0, %for.cond1.preheader ], [ %inc16, %for.inc15 ]
  br label %for.body6

for.body6:                                        
  %k.02 = phi i64 [ 0, %for.cond4.preheader ], [ %inc, %for.body6 ]
  %B.addr.21 = phi i32* [ %B.addr.14, %for.cond4.preheader ], [ %incdec.ptr, %for.body6 ]
  %conv = trunc i64 %i.05 to i32
  %add = add nsw i64 %j.03, %k.02
  %add7 = add nsw i64 %i.05, 1
  %sub = sub nsw i64 %j.03, %i.05
  %arrayidx9 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %A, i64 %sub, i64 %add7, i64 %add
  store i32 %conv, i32* %arrayidx9, align 4
  %add10 = add nsw i64 %j.03, %k.02
  %sub11 = sub nsw i64 %j.03, %i.05
  %arrayidx14 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %A, i64 %sub11, i64 %i.05, i64 %add10
  %0 = load i32, i32* %arrayidx14, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.21, i64 1
  store i32 %0, i32* %B.addr.21, align 4
  %inc = add nsw i64 %k.02, 1
  %exitcond = icmp ne i64 %inc, 100
  br i1 %exitcond, label %for.body6, label %for.inc15

for.inc15:                                        
  %scevgep = getelementptr i32, i32* %B.addr.14, i64 100
  %inc16 = add nsw i64 %j.03, 1
  %exitcond8 = icmp ne i64 %inc16, 100
  br i1 %exitcond8, label %for.cond4.preheader, label %for.inc18

for.inc18:                                        
  %scevgep7 = getelementptr i32, i32* %B.addr.06, i64 10000
  %inc19 = add nsw i64 %i.05, 1
  %exitcond9 = icmp ne i64 %inc19, 100
  br i1 %exitcond9, label %for.cond1.preheader, label %for.end20

for.end20:                                        
  ret void
}







define void @prop2([100 x i32]* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc8 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc9, %for.inc8 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %mul = shl nsw i64 %i.03, 1
  %sub = add nsw i64 %i.03, -1
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %sub, i64 %mul
  store i32 %conv, i32* %arrayidx4, align 4
  %add = add nsw i64 %i.03, %j.02
  %add5 = add nsw i64 %add, 110
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %i.03, i64 %add5
  %0 = load i32, i32* %arrayidx7, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 100
  br i1 %exitcond, label %for.body3, label %for.inc8

for.inc8:                                         
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 100
  %inc9 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc9, 100
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end10

for.end10:                                        
  ret void
}







define void @prop3([100 x i32]* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc9 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc10, %for.inc9 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %mul = shl nsw i64 %j.02, 1
  %add = add nsw i64 %mul, %i.03
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %i.03, i64 %add
  store i32 %conv, i32* %arrayidx4, align 4
  %mul5 = shl nsw i64 %j.02, 1
  %sub = sub nsw i64 %mul5, %i.03
  %add6 = add nsw i64 %sub, 5
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %i.03, i64 %add6
  %0 = load i32, i32* %arrayidx8, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 100
  br i1 %exitcond, label %for.body3, label %for.inc9

for.inc9:                                         
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 100
  %inc10 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc10, 100
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end11

for.end11:                                        
  ret void
}







define void @prop4([100 x i32]* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc11 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc12, %for.inc11 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %mul = shl nsw i64 %i.03, 1
  %add = add nsw i64 %mul, %j.02
  %add4 = add nsw i64 %add, 1
  %add5 = add nsw i64 %i.03, 2
  %arrayidx6 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %add5, i64 %add4
  store i32 %conv, i32* %arrayidx6, align 4
  %mul7 = shl nsw i64 %i.03, 1
  %add8 = add nsw i64 %mul7, %j.02
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %i.03, i64 %add8
  %0 = load i32, i32* %arrayidx10, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 100
  br i1 %exitcond, label %for.body3, label %for.inc11

for.inc11:                                        
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 100
  %inc12 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc12, 100
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end13

for.end13:                                        
  ret void
}







define void @prop5([100 x [100 x i32]]* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader









for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc13 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc14, %for.inc13 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %mul = shl nsw i64 %i.03, 1
  %add = add nsw i64 %mul, %j.02
  %sub = sub nsw i64 22, %i.03
  %mul4 = mul nsw i64 %i.03, 3
  %sub5 = add nsw i64 %mul4, -18
  %arrayidx7 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %A, i64 %sub5, i64 %sub, i64 %add
  store i32 %conv, i32* %arrayidx7, align 4
  %mul8 = mul nsw i64 %i.03, 3
  %add9 = add nsw i64 %mul8, %j.02
  %arrayidx12 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %A, i64 %i.03, i64 %i.03, i64 %add9
  %0 = load i32, i32* %arrayidx12, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 100
  br i1 %exitcond, label %for.body3, label %for.inc13

for.inc13:                                        
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 100
  %inc14 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc14, 100
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end15

for.end15:                                        
  ret void
}







define void @prop6([100 x i32]* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc12 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc13, %for.inc12 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %mul = shl nsw i64 %i.03, 2
  %add = add nsw i64 %mul, %j.02
  %add4 = add nsw i64 %add, 2
  %add5 = add nsw i64 %i.03, 1
  %arrayidx6 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %add5, i64 %add4
  store i32 %conv, i32* %arrayidx6, align 4
  %mul7 = shl nsw i64 %i.03, 3
  %add8 = add nsw i64 %mul7, %j.02
  %mul9 = shl nsw i64 %i.03, 1
  %arrayidx11 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %mul9, i64 %add8
  %0 = load i32, i32* %arrayidx11, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 100
  br i1 %exitcond, label %for.body3, label %for.inc12

for.inc12:                                        
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 100
  %inc13 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc13, 100
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end14

for.end14:                                        
  ret void
}







define void @prop7([100 x i32]* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader









for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc14 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc15, %for.inc14 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, -5
  %add = add nsw i64 %mul, %j.02
  %add4 = add nsw i64 %add, 2
  %mul5 = shl nsw i64 %i.03, 1
  %add6 = add nsw i64 %mul5, 4
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %add6, i64 %add4
  store i32 %conv, i32* %arrayidx7, align 4
  %mul8 = mul nsw i64 %i.03, 5
  %add9 = add nsw i64 %mul8, %j.02
  %mul10 = mul nsw i64 %i.03, -2
  %add11 = add nsw i64 %mul10, 20
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %add11, i64 %add9
  %0 = load i32, i32* %arrayidx13, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 100
  br i1 %exitcond, label %for.body3, label %for.inc14

for.inc14:                                        
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 100
  %inc15 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc15, 100
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end16

for.end16:                                        
  ret void
}







define void @prop8([100 x i32]* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc10 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc11, %for.inc10 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %add = add nsw i64 %j.02, 2
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 4, i64 %add
  store i32 %conv, i32* %arrayidx4, align 4
  %mul = mul nsw i64 %i.03, 5
  %add5 = add nsw i64 %mul, %j.02
  %mul6 = mul nsw i64 %i.03, -2
  %add7 = add nsw i64 %mul6, 4
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %add7, i64 %add5
  %0 = load i32, i32* %arrayidx9, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 100
  br i1 %exitcond, label %for.body3, label %for.inc10

for.inc10:                                        
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 100
  %inc11 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc11, 100
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end12

for.end12:                                        
  ret void
}







define void @prop9([100 x i32]* %A, i32* %B, i32 %n) nounwind uwtable ssp {
entry:
  br label %for.cond1.preheader








for.cond1.preheader:                              
  %B.addr.04 = phi i32* [ %B, %entry ], [ %scevgep, %for.inc10 ]
  %i.03 = phi i64 [ 0, %entry ], [ %inc11, %for.inc10 ]
  br label %for.body3

for.body3:                                        
  %j.02 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %B.addr.11 = phi i32* [ %B.addr.04, %for.cond1.preheader ], [ %incdec.ptr, %for.body3 ]
  %conv = trunc i64 %i.03 to i32
  %mul = mul nsw i64 %i.03, 5
  %add = add nsw i64 %mul, %j.02
  %add4 = add nsw i64 %add, 2
  %mul5 = shl nsw i64 %i.03, 1
  %add6 = add nsw i64 %mul5, 4
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 %add6, i64 %add4
  store i32 %conv, i32* %arrayidx7, align 4
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 4, i64 %j.02
  %0 = load i32, i32* %arrayidx9, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.11, i64 1
  store i32 %0, i32* %B.addr.11, align 4
  %inc = add nsw i64 %j.02, 1
  %exitcond = icmp ne i64 %inc, 100
  br i1 %exitcond, label %for.body3, label %for.inc10

for.inc10:                                        
  %scevgep = getelementptr i32, i32* %B.addr.04, i64 100
  %inc11 = add nsw i64 %i.03, 1
  %exitcond5 = icmp ne i64 %inc11, 100
  br i1 %exitcond5, label %for.cond1.preheader, label %for.end12

for.end12:                                        
  ret void
}
