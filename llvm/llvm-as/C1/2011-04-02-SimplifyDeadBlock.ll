



define void @int327() nounwind {
entry:
  unreachable

for.cond:                                         
  %tobool3 = icmp eq i8 undef, 0
  br i1 %tobool3, label %for.cond23, label %for.cond4

for.cond4:                                        
  br label %for.cond

for.cond23:                                       
  %conv321 = phi i32 [ %conv32, %for.body28 ], [ 0, %for.cond ], [ %conv321, %for.cond23 ]
  %l_266.0 = phi i32 [ %phitmp, %for.body28 ], [ 0, %for.cond ], [ 0, %for.cond23 ]
  %cmp26 = icmp eq i32 %l_266.0, 0
  br i1 %cmp26, label %for.body28, label %for.cond23

for.body28:                                       
  %and = and i32 %conv321, 1
  %conv32 = zext i8 undef to i32
  %add = add nsw i32 %l_266.0, 1
  %phitmp = and i32 %add, 255
  br label %for.cond23

if.end43:                                         
  ret void
}

