



















target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
define void @func() noreturn nounwind uwtable ssp {
entry:
  br label %for.cond

for.cond.loopexit:                                
  %mul.lcssa = phi i8 [ %mul, %for.body ]
  %0 = add i8 %inc1, 10
  %indvars.iv.next = add i8 %indvars.iv, 10
  br label %for.cond

for.cond:                                         
  %indvars.iv = phi i8 [ %indvars.iv.next, %for.cond.loopexit ], [ 10, %entry ]
  %mul3 = phi i8 [ undef, %entry ], [ %mul.lcssa, %for.cond.loopexit ]
  %inc1 = phi i8 [ 0, %entry ], [ %0, %for.cond.loopexit ]
  br label %for.body

for.body:                                         
  %inc26 = phi i8 [ %inc1, %for.cond ], [ %inc, %for.body ]
  %mul45 = phi i8 [ %mul3, %for.cond ], [ %mul, %for.body ]
  %inc = add i8 %inc26, 1
  %mul = mul i8 %inc26, %mul45
  %exitcond = icmp ne i8 %inc, %indvars.iv
  br i1 %exitcond, label %for.body, label %for.cond.loopexit
}
