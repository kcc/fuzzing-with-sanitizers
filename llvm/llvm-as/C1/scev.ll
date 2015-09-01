









define void @test1(i64 %d, i32* %p) nounwind uwtable ssp {
entry:
  %div = udiv i64 %d, 4
  br label %for.cond

for.cond:                                         
  %p.addr.0 = phi i32* [ %p, %entry ], [ %add.ptr1, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp ne i32 %i.0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  store i32 0, i32* %p.addr.0, align 4
  %add.ptr = getelementptr inbounds i32, i32* %p.addr.0, i64 %div
  store i32 1, i32* %add.ptr, align 4
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i64 %div
  br label %for.inc

for.inc:                                          
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          
  ret void
}




define void @test1a(i64 %d, i32* %p) nounwind uwtable ssp {
entry:
  %div = udiv i64 %d, 2
  br label %for.cond

for.cond:                                         
  %p.addr.0 = phi i32* [ %p, %entry ], [ %add.ptr1, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp ne i32 %i.0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  store i32 0, i32* %p.addr.0, align 4
  %add.ptr = getelementptr inbounds i32, i32* %p.addr.0, i64 %div
  store i32 1, i32* %add.ptr, align 4
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i64 %div
  br label %for.inc

for.inc:                                          
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          
  ret void
}
