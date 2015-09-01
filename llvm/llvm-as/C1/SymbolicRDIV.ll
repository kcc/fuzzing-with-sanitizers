


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.6.0"







define void @symbolicrdiv0(i32* %A, i32* %B, i64 %n1, i64 %n2) nounwind uwtable ssp {
entry:
  %cmp4 = icmp eq i64 %n1, 0
  br i1 %cmp4, label %for.cond1.preheader, label %for.body.preheader









for.body.preheader:                               
  br label %for.body

for.cond1.preheader.loopexit:                     
  br label %for.cond1.preheader

for.cond1.preheader:                              
  %cmp21 = icmp eq i64 %n2, 0
  br i1 %cmp21, label %for.end11, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body:                                         
  %i.05 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %conv = trunc i64 %i.05 to i32
  %mul = shl nsw i64 %i.05, 1
  %add = add i64 %mul, %n1
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.05, 1
  %exitcond = icmp ne i64 %inc, %n1
  br i1 %exitcond, label %for.body, label %for.cond1.preheader.loopexit

for.body4:                                        
  %j.03 = phi i64 [ %inc10, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.02 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %mul56 = add i64 %j.03, %n1
  %add7 = mul i64 %mul56, 3
  %arrayidx8 = getelementptr inbounds i32, i32* %A, i64 %add7
  %0 = load i32, i32* %arrayidx8, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.02, i64 1
  store i32 %0, i32* %B.addr.02, align 4
  %inc10 = add nsw i64 %j.03, 1
  %exitcond7 = icmp ne i64 %inc10, %n2
  br i1 %exitcond7, label %for.body4, label %for.end11.loopexit

for.end11.loopexit:                               
  br label %for.end11

for.end11:                                        
  ret void
}







define void @symbolicrdiv1(i32* %A, i32* %B, i64 %n1, i64 %n2) nounwind uwtable ssp {
entry:
  %cmp4 = icmp eq i64 %n1, 0
  br i1 %cmp4, label %for.cond2.preheader, label %for.body.preheader









for.body.preheader:                               
  br label %for.body

for.cond2.preheader.loopexit:                     
  br label %for.cond2.preheader

for.cond2.preheader:                              
  %cmp31 = icmp eq i64 %n2, 0
  br i1 %cmp31, label %for.end12, label %for.body5.preheader

for.body5.preheader:                              
  br label %for.body5

for.body:                                         
  %i.05 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %conv = trunc i64 %i.05 to i32
  %mul = shl nsw i64 %i.05, 1
  %mul1 = mul i64 %n2, 5
  %add = add i64 %mul, %mul1
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.05, 1
  %exitcond = icmp ne i64 %inc, %n1
  br i1 %exitcond, label %for.body, label %for.cond2.preheader.loopexit

for.body5:                                        
  %j.03 = phi i64 [ %inc11, %for.body5 ], [ 0, %for.body5.preheader ]
  %B.addr.02 = phi i32* [ %incdec.ptr, %for.body5 ], [ %B, %for.body5.preheader ]
  %mul6 = mul nsw i64 %j.03, 3
  %mul7 = shl i64 %n2, 1
  %add8 = add i64 %mul6, %mul7
  %arrayidx9 = getelementptr inbounds i32, i32* %A, i64 %add8
  %0 = load i32, i32* %arrayidx9, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.02, i64 1
  store i32 %0, i32* %B.addr.02, align 4
  %inc11 = add nsw i64 %j.03, 1
  %exitcond6 = icmp ne i64 %inc11, %n2
  br i1 %exitcond6, label %for.body5, label %for.end12.loopexit

for.end12.loopexit:                               
  br label %for.end12

for.end12:                                        
  ret void
}







define void @symbolicrdiv2(i32* %A, i32* %B, i64 %n1, i64 %n2) nounwind uwtable ssp {
entry:
  %cmp4 = icmp eq i64 %n1, 0
  br i1 %cmp4, label %for.cond1.preheader, label %for.body.preheader









for.body.preheader:                               
  br label %for.body

for.cond1.preheader.loopexit:                     
  br label %for.cond1.preheader

for.cond1.preheader:                              
  %cmp21 = icmp eq i64 %n2, 0
  br i1 %cmp21, label %for.end10, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body:                                         
  %i.05 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %conv = trunc i64 %i.05 to i32
  %mul = shl nsw i64 %i.05, 1
  %sub = sub i64 %mul, %n2
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %sub
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.05, 1
  %exitcond = icmp ne i64 %inc, %n1
  br i1 %exitcond, label %for.body, label %for.cond1.preheader.loopexit

for.body4:                                        
  %j.03 = phi i64 [ %inc9, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.02 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %mul6 = shl i64 %n1, 1
  %add = sub i64 %mul6, %j.03
  %arrayidx7 = getelementptr inbounds i32, i32* %A, i64 %add
  %0 = load i32, i32* %arrayidx7, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.02, i64 1
  store i32 %0, i32* %B.addr.02, align 4
  %inc9 = add nsw i64 %j.03, 1
  %exitcond6 = icmp ne i64 %inc9, %n2
  br i1 %exitcond6, label %for.body4, label %for.end10.loopexit

for.end10.loopexit:                               
  br label %for.end10

for.end10:                                        
  ret void
}







define void @symbolicrdiv3(i32* %A, i32* %B, i64 %n1, i64 %n2) nounwind uwtable ssp {
entry:
  %cmp4 = icmp eq i64 %n1, 0
  br i1 %cmp4, label %for.cond1.preheader, label %for.body.preheader









for.body.preheader:                               
  br label %for.body

for.cond1.preheader.loopexit:                     
  br label %for.cond1.preheader

for.cond1.preheader:                              
  %cmp21 = icmp eq i64 %n2, 0
  br i1 %cmp21, label %for.end9, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body:                                         
  %i.05 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %conv = trunc i64 %i.05 to i32
  %add = sub i64 %n2, %i.05
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.05, 1
  %exitcond = icmp ne i64 %inc, %n1
  br i1 %exitcond, label %for.body, label %for.cond1.preheader.loopexit

for.body4:                                        
  %j.03 = phi i64 [ %inc8, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.02 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %sub5 = sub i64 %j.03, %n1
  %arrayidx6 = getelementptr inbounds i32, i32* %A, i64 %sub5
  %0 = load i32, i32* %arrayidx6, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.02, i64 1
  store i32 %0, i32* %B.addr.02, align 4
  %inc8 = add nsw i64 %j.03, 1
  %exitcond6 = icmp ne i64 %inc8, %n2
  br i1 %exitcond6, label %for.body4, label %for.end9.loopexit

for.end9.loopexit:                                
  br label %for.end9

for.end9:                                         
  ret void
}







define void @symbolicrdiv4(i32* %A, i32* %B, i64 %n1, i64 %n2) nounwind uwtable ssp {
entry:
  %cmp4 = icmp eq i64 %n1, 0
  br i1 %cmp4, label %for.cond1.preheader, label %for.body.preheader









for.body.preheader:                               
  br label %for.body

for.cond1.preheader.loopexit:                     
  br label %for.cond1.preheader

for.cond1.preheader:                              
  %cmp21 = icmp eq i64 %n2, 0
  br i1 %cmp21, label %for.end10, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body:                                         
  %i.05 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %conv = trunc i64 %i.05 to i32
  %mul = shl i64 %n1, 1
  %add = sub i64 %mul, %i.05
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.05, 1
  %exitcond = icmp ne i64 %inc, %n1
  br i1 %exitcond, label %for.body, label %for.cond1.preheader.loopexit

for.body4:                                        
  %j.03 = phi i64 [ %inc9, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.02 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %add6 = sub i64 %n1, %j.03
  %arrayidx7 = getelementptr inbounds i32, i32* %A, i64 %add6
  %0 = load i32, i32* %arrayidx7, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.02, i64 1
  store i32 %0, i32* %B.addr.02, align 4
  %inc9 = add nsw i64 %j.03, 1
  %exitcond6 = icmp ne i64 %inc9, %n2
  br i1 %exitcond6, label %for.body4, label %for.end10.loopexit

for.end10.loopexit:                               
  br label %for.end10

for.end10:                                        
  ret void
}







define void @symbolicrdiv5(i32* %A, i32* %B, i64 %n1, i64 %n2) nounwind uwtable ssp {
entry:
  %cmp4 = icmp eq i64 %n1, 0
  br i1 %cmp4, label %for.cond1.preheader, label %for.body.preheader









for.body.preheader:                               
  br label %for.body

for.cond1.preheader.loopexit:                     
  br label %for.cond1.preheader

for.cond1.preheader:                              
  %cmp21 = icmp eq i64 %n2, 0
  br i1 %cmp21, label %for.end10, label %for.body4.preheader

for.body4.preheader:                              
  br label %for.body4

for.body:                                         
  %i.05 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %conv = trunc i64 %i.05 to i32
  %add = sub i64 %n2, %i.05
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %inc = add nsw i64 %i.05, 1
  %exitcond = icmp ne i64 %inc, %n1
  br i1 %exitcond, label %for.body, label %for.cond1.preheader.loopexit

for.body4:                                        
  %j.03 = phi i64 [ %inc9, %for.body4 ], [ 0, %for.body4.preheader ]
  %B.addr.02 = phi i32* [ %incdec.ptr, %for.body4 ], [ %B, %for.body4.preheader ]
  %mul = shl i64 %n2, 1
  %add6 = sub i64 %mul, %j.03
  %arrayidx7 = getelementptr inbounds i32, i32* %A, i64 %add6
  %0 = load i32, i32* %arrayidx7, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.02, i64 1
  store i32 %0, i32* %B.addr.02, align 4
  %inc9 = add nsw i64 %j.03, 1
  %exitcond6 = icmp ne i64 %inc9, %n2
  br i1 %exitcond6, label %for.body4, label %for.end10.loopexit

for.end10.loopexit:                               
  br label %for.end10

for.end10:                                        
  ret void
}







define void @symbolicrdiv6(i32* %A, i32* %B, i64 %n1, i64 %n2) nounwind uwtable ssp {
entry:
  %cmp4 = icmp eq i64 %n1, 0
  br i1 %cmp4, label %for.end7, label %for.cond1.preheader.preheader









for.cond1.preheader.preheader:                    
  br label %for.cond1.preheader

for.cond1.preheader:                              
  %B.addr.06 = phi i32* [ %B.addr.1.lcssa, %for.inc5 ], [ %B, %for.cond1.preheader.preheader ]
  %i.05 = phi i64 [ %inc6, %for.inc5 ], [ 0, %for.cond1.preheader.preheader ]
  %cmp21 = icmp eq i64 %n2, 0
  br i1 %cmp21, label %for.inc5, label %for.body3.preheader

for.body3.preheader:                              
  br label %for.body3

for.body3:                                        
  %j.03 = phi i64 [ %inc, %for.body3 ], [ 0, %for.body3.preheader ]
  %B.addr.12 = phi i32* [ %incdec.ptr, %for.body3 ], [ %B.addr.06, %for.body3.preheader ]
  %conv = trunc i64 %i.05 to i32
  %sub = sub nsw i64 %j.03, %i.05
  %add = add i64 %sub, %n2
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %add
  store i32 %conv, i32* %arrayidx, align 4
  %mul = shl i64 %n2, 1
  %arrayidx4 = getelementptr inbounds i32, i32* %A, i64 %mul
  %0 = load i32, i32* %arrayidx4, align 4
  %incdec.ptr = getelementptr inbounds i32, i32* %B.addr.12, i64 1
  store i32 %0, i32* %B.addr.12, align 4
  %inc = add nsw i64 %j.03, 1
  %exitcond = icmp ne i64 %inc, %n2
  br i1 %exitcond, label %for.body3, label %for.inc5.loopexit

for.inc5.loopexit:                                
  %scevgep = getelementptr i32, i32* %B.addr.06, i64 %n2
  br label %for.inc5

for.inc5:                                         
  %B.addr.1.lcssa = phi i32* [ %B.addr.06, %for.cond1.preheader ], [ %scevgep, %for.inc5.loopexit ]
  %inc6 = add nsw i64 %i.05, 1
  %exitcond7 = icmp ne i64 %inc6, %n1
  br i1 %exitcond7, label %for.cond1.preheader, label %for.end7.loopexit

for.end7.loopexit:                                
  br label %for.end7

for.end7:                                         
  ret void
}
