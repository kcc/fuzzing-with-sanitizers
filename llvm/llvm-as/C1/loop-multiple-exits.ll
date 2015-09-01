













define void @loop(i32 addrspace(1)* %out, i32 %cond_a, i32 %cond_b) nounwind uwtable {
entry:
  br label %for.cond

for.cond:                                         
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp ult i32 %i.0, %cond_a
  br i1 %cmp, label %for.body, label %for.end


for.body:                                         
  %arrayidx = getelementptr inbounds i32, i32 addrspace(1)* %out, i32 %i.0
  store i32 %i.0, i32 addrspace(1)* %arrayidx, align 4
  %cmp1 = icmp ugt i32 %i.0, %cond_b

  br i1 %cmp1, label %for.end, label %for.inc







for.inc:                                          
  %0 = add i32 %cond_a, %i.0
  %arrayidx3 = getelementptr inbounds i32, i32 addrspace(1)* %out, i32 %0
  store i32 %i.0, i32 addrspace(1)* %arrayidx3, align 4
  %inc = add i32 %i.0, 1
  br label %for.cond




for.end:                                          
  ret void
}
