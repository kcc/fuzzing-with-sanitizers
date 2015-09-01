




define void @test() nounwind {
entry:
  br label %for.cond.preheader

for.cond.preheader:                               
  br label %for.cond.outer

for.cond.outer:                                   
  %p_41.addr.0.ph = phi i32 [ %p_41.addr.1.lcssa, %for.end ], [ 1, %for.cond.preheader ]
  br label %for.cond

for.cond:
  br i1 true, label %for.end, label %for.ph

for.ph:                                   
  br label %for.end

for.end:
  %p_41.addr.1.lcssa = phi i32 [ undef, %for.ph ], [ %p_41.addr.0.ph, %for.cond ]
  %p_68.lobit.i = lshr i32 %p_41.addr.1.lcssa, 31
  %cmp7 = icmp eq i32 %p_41.addr.1.lcssa, 0
  %conv8 = zext i1 %cmp7 to i32
  br label %for.cond.outer
}
