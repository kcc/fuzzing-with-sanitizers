
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @test1(i64 %start) {

entry:
  br label %loop

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %loop ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1

  %cmp1 = icmp slt i64 %indvars.iv, -1
  br i1 %cmp1, label %for.end, label %loop

for.end:                                          
  ret void
}

define void @test2(i64 %start) {

entry:
  br label %loop

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %loop ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1

  %cmp1 = icmp sle i64 %indvars.iv, -1
  br i1 %cmp1, label %for.end, label %loop

for.end:                                          
  ret void
}


define void @test3(i64 %start) {

entry:
  br label %loop

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %backedge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp eq i64 %indvars.iv.next, 25
  br i1 %cmp, label %backedge, label %for.end

backedge:
  
  call void @foo() 

  %cmp1 = icmp slt i64 %indvars.iv, -1
  br i1 %cmp1, label %for.end, label %loop

for.end:                                          
  ret void
}

define void @test4(i64 %start) {

entry:
  br label %loop

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %backedge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp eq i64 %indvars.iv.next, 25
  br i1 %cmp, label %backedge, label %for.end

backedge:
  
  call void @foo() 

  %cmp1 = icmp sgt i64 %indvars.iv, -1
  br i1 %cmp1, label %loop, label %for.end

for.end:                                          
  ret void
}

define void @test5(i64 %start) {

entry:
  br label %loop

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %backedge ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %cmp = icmp eq i64 %indvars.iv.next, 25
  br i1 %cmp, label %backedge, label %for.end

backedge:
  
  call void @foo() 

  %cmp1 = icmp ugt i64 %indvars.iv, 100
  br i1 %cmp1, label %loop, label %for.end

for.end:                                          
  ret void
}

define void @test6(i64 %start) {

entry:
  br label %loop

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %backedge ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %cmp = icmp eq i64 %indvars.iv.next, 25
  br i1 %cmp, label %backedge, label %for.end

backedge:
  
  call void @foo() 

  %cmp1 = icmp ult i64 %indvars.iv, 100
  br i1 %cmp1, label %for.end, label %loop

for.end:                                          
  ret void
}

define void @test7(i64 %start, i64* %inc_ptr) {

entry:
  %inc = load i64, i64* %inc_ptr, !range !0
  %ok = icmp sge i64 %inc, 0
  br i1 %ok, label %loop, label %for.end

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %loop ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %inc

  %cmp1 = icmp slt i64 %indvars.iv, -1
  br i1 %cmp1, label %for.end, label %loop

for.end:                                          
  ret void
}

!0 = !{i64 0, i64 100}



define void @test1_neg(i64 %start) {

entry:
  br label %loop

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %backedge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp eq i64 %indvars.iv.next, 25
  br i1 %cmp, label %backedge, label %skip
skip:
  
  call void @foo() 

  %cmp1 = icmp slt i64 %indvars.iv, -1
  br i1 %cmp1, label %for.end, label %backedge
backedge:
  
  call void @foo() 
  br label %loop

for.end:                                          
  ret void
}



define void @test2_neg(i64 %start) {

entry:
  br label %loop

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %backedge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp eq i64 %indvars.iv.next, 25

  %cmp1 = icmp slt i64 %indvars.iv, -1
  br i1 %cmp, label %backedge, label %skip
skip:
  
  call void @foo() 
  br i1 %cmp1, label %for.end, label %backedge
backedge:
  
  call void @foo() 
  br label %loop

for.end:                                          
  ret void
}


define void @test3_neg(i64 %start) {

entry:
  br label %loop

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %loop ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1

  %cmp1 = icmp slt i64 %indvars.iv, -1
  br i1 %cmp1, label %loop, label %for.end

for.end:                                          
  ret void
}

define void @test4_neg(i64 %start) {

entry:
  br label %loop

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %backedge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp eq i64 %indvars.iv.next, 25
  br i1 %cmp, label %backedge, label %for.end

backedge:
  
  call void @foo() 

  %cmp1 = icmp sgt i64 %indvars.iv, -1



  br i1 %cmp1, label %for.end, label %loop

for.end:                                          
  ret void
}

define void @test5_neg(i64 %start, i64 %inc) {

entry:
  br label %loop

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %loop ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %inc

  %cmp1 = icmp slt i64 %indvars.iv, -1
  br i1 %cmp1, label %for.end, label %loop

for.end:                                          
  ret void
}

define void @test8(i64 %start, i64* %inc_ptr) {

entry:
  %inc = load i64, i64* %inc_ptr, !range !1
  %ok = icmp sge i64 %inc, 0
  br i1 %ok, label %loop, label %for.end

loop:
  %indvars.iv = phi i64 [ %start, %entry ], [ %indvars.iv.next, %loop ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %inc

  %cmp1 = icmp slt i64 %indvars.iv, -1
  br i1 %cmp1, label %for.end, label %loop

for.end:                                          
  ret void
}

!1 = !{i64 -1, i64 100}


declare void @foo()
