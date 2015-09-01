

define i64 @atomicSub(i64* %a, i64 %b) nounwind {
entry:
  %0 = atomicrmw sub i64* %a, i64 %b seq_cst
  ret i64 %0






}
