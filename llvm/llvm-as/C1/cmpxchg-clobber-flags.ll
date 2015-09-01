




declare i32 @foo()
declare i32 @bar(i64)

define i64 @test_intervening_call(i64* %foo, i64 %bar, i64 %baz) {










































  %cx = cmpxchg i64* %foo, i64 %bar, i64 %baz seq_cst seq_cst
  %v = extractvalue { i64, i1 } %cx, 0
  %p = extractvalue { i64, i1 } %cx, 1
  call i32 @bar(i64 %v)
  br i1 %p, label %t, label %f

t:
  ret i64 42

f:
  ret i64 0
}


define i32 @test_control_flow(i32* %p, i32 %i, i32 %j) {












entry:
  %cmp = icmp sgt i32 %i, %j
  br i1 %cmp, label %loop_start, label %cond.end

loop_start:
  br label %while.condthread-pre-split.i

while.condthread-pre-split.i:
  %.pr.i = load i32, i32* %p, align 4
  br label %while.cond.i

while.cond.i:
  %0 = phi i32 [ %.pr.i, %while.condthread-pre-split.i ], [ 0, %while.cond.i ]
  %tobool.i = icmp eq i32 %0, 0
  br i1 %tobool.i, label %while.cond.i, label %while.body.i

while.body.i:
  %.lcssa = phi i32 [ %0, %while.cond.i ]
  %1 = cmpxchg i32* %p, i32 %.lcssa, i32 %.lcssa seq_cst seq_cst
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %cond.end.loopexit, label %while.condthread-pre-split.i

cond.end.loopexit:
  br label %cond.end

cond.end:
  %cond = phi i32 [ %i, %entry ], [ 0, %cond.end.loopexit ]
  ret i32 %cond
}



define i32 @test_feed_cmov(i32* %addr, i32 %desired, i32 %new) {




































  %res = cmpxchg i32* %addr, i32 %desired, i32 %new seq_cst seq_cst
  %success = extractvalue { i32, i1 } %res, 1

  %rhs = call i32 @foo()

  %ret = select i1 %success, i32 %new, i32 %rhs
  ret i32 %ret
}
