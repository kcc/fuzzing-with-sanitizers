




@g = common global i32 0, align 4

define void @bar(i32 %n, i32 %b) nounwind uwtable ssp {
entry:
  br label %for.cond

for.cond:                                         
  %i.0 = phi i32 [ 0, %entry ], [ %inc5, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  %tobool = icmp eq i32 %b, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          
  %tmp3 = load i32, i32* @g, align 4
  %inc = add nsw i32 %tmp3, 1
  store i32 %inc, i32* @g, align 4
  br label %for.inc





for.inc:                                          
  %inc5 = add nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          
  ret void
}
