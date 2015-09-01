

define void @pr21099(i64* %p) {



  %1 = atomicrmw add i64* %p, i64 -2147483648 seq_cst
  ret void
}
