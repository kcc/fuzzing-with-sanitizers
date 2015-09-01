







define void @safe_udiv(i64 %x, i64 %m, i64 %n, i32* %p, i64* %q) nounwind {
entry:
  br label %for.body

for.body:                                         
  %i.02 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %p, i64 %i.02
  %0 = load i32, i32* %arrayidx, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          
  %div = udiv i64 %x, 2
  %arrayidx1 = getelementptr inbounds i64, i64* %q, i64 %i.02
  store i64 %div, i64* %arrayidx1, align 8
  br label %for.inc

for.inc:                                          
  %inc = add i64 %i.02, 1
  %cmp = icmp slt i64 %inc, %n
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  ret void
}







define void @unsafe_udiv(i64 %x, i64 %m, i64 %n, i32* %p, i64* %q) nounwind {
entry:
  br label %for.body

for.body:                                         
  %i.02 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %p, i64 %i.02
  %0 = load i32, i32* %arrayidx, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          
  %div = udiv i64 %x, %m
  %arrayidx1 = getelementptr inbounds i64, i64* %q, i64 %i.02
  store i64 %div, i64* %arrayidx1, align 8
  br label %for.inc

for.inc:                                          
  %inc = add i64 %i.02, 1
  %cmp = icmp slt i64 %inc, %n
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  ret void
}








define void @safe_sdiv(i64 %x, i64 %m, i64 %n, i32* %p, i64* %q) nounwind {
entry:
  %and = and i64 %m, -3
  br label %for.body

for.body:                                         
  %i.02 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %p, i64 %i.02
  %0 = load i32, i32* %arrayidx, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          
  %div = sdiv i64 %x, 2
  %arrayidx1 = getelementptr inbounds i64, i64* %q, i64 %i.02
  store i64 %div, i64* %arrayidx1, align 8
  br label %for.inc

for.inc:                                          
  %inc = add i64 %i.02, 1
  %cmp = icmp slt i64 %inc, %n
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  ret void
}







define void @unsafe_sdiv_a(i64 %x, i64 %m, i64 %n, i32* %p, i64* %q) nounwind {
entry:
  %or = or i64 %m, 1
  br label %for.body

for.body:                                         
  %i.02 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %p, i64 %i.02
  %0 = load i32, i32* %arrayidx, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          
  %div = sdiv i64 %x, %or
  %arrayidx1 = getelementptr inbounds i64, i64* %q, i64 %i.02
  store i64 %div, i64* %arrayidx1, align 8
  br label %for.inc

for.inc:                                          
  %inc = add i64 %i.02, 1
  %cmp = icmp slt i64 %inc, %n
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  ret void
}







define void @unsafe_sdiv_b(i64 %x, i64 %m, i64 %n, i32* %p, i64* %q) nounwind {
entry:
  %and = and i64 %m, -3
  br label %for.body

for.body:                                         
  %i.02 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %p, i64 %i.02
  %0 = load i32, i32* %arrayidx, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %for.inc, label %if.then

if.then:                                          
  %div = sdiv i64 %x, %and
  %arrayidx1 = getelementptr inbounds i64, i64* %q, i64 %i.02
  store i64 %div, i64* %arrayidx1, align 8
  br label %for.inc

for.inc:                                          
  %inc = add i64 %i.02, 1
  %cmp = icmp slt i64 %inc, %n
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  ret void
}



define void @unsafe_sdiv_c(i64 %a, i64 %b, i64* %p) {
entry:



  br label %for.body

for.body:
  %c = icmp eq i64 %b, 0
  br i1 %c, label %backedge, label %if.then

if.then:
  %d = sdiv i64 %a, %b
  store i64 %d, i64* %p
  br label %backedge

backedge:
  br label %for.body
}
