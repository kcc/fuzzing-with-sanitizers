





define void @t(i64* nocapture %p) nounwind ssp {
entry:










  %0 = atomicrmw add i64* %p, i64 1 seq_cst
  ret void
}
