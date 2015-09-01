


define void @t1(i128* nocapture %p) nounwind ssp {
entry:


  %r = cmpxchg i128* %p, i128 0, i128 1 seq_cst seq_cst
  ret void
}


