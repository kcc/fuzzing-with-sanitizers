













define void @foo(i64* %ptr) nounwind inlinehint {
entry:
  br label %loop
loop:

  %pair = cmpxchg i64* %ptr, i64 0, i64 1 monotonic monotonic
  %r = extractvalue { i64, i1 } %pair, 0
  %stored1  = icmp eq i64 %r, 0
  br i1 %stored1, label %loop, label %continue
continue:
  ret void
}
