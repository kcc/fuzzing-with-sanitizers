






define noalias i8* @func_29() nounwind {


entry:
  br label %for.cond

for.cond:                                         
  %p_34.addr.0 = phi i16 [ 1, %entry ], [ %conv40, %for.inc38 ]
  br label %for.cond1

for.cond1:                                        
  %p_32.addr.0 = phi i1 [ true, %for.cond ], [ true, %for.inc29 ]
  br i1 %p_32.addr.0, label %for.body8, label %for.inc38

for.body8:                                        
  unreachable

for.inc29:                                        
  br label %for.cond1

for.inc38:                                        
  %conv40 = add i16 %p_34.addr.0, 1
  br label %for.cond
}
