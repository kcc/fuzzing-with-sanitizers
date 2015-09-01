
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"
define i32 @read_4_bytes(i32* %a) sanitize_address {
entry:
  %tmp1 = load i32, i32* %a, align 4
  ret i32 %tmp1
}







define void @example_atomicrmw(i64* %ptr) nounwind uwtable sanitize_address {
entry:
  %0 = atomicrmw add i64* %ptr, i64 1 seq_cst
  ret void
}








define void @example_cmpxchg(i64* %ptr, i64 %compare_to, i64 %new_value) nounwind uwtable sanitize_address {
entry:
  %0 = cmpxchg i64* %ptr, i64 %compare_to, i64 %new_value seq_cst seq_cst
  ret void
}







