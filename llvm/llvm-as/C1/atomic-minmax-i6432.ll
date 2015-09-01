


@sc64 = external global i64

define void @atomic_maxmin_i6432() {

  %1 = atomicrmw max  i64* @sc64, i64 5 acquire







  %2 = atomicrmw min  i64* @sc64, i64 6 acquire







  %3 = atomicrmw umax i64* @sc64, i64 7 acquire







  %4 = atomicrmw umin i64* @sc64, i64 8 acquire







  ret void
}


@id = internal global i64 0, align 8

define void @tf_bug(i8* %ptr) nounwind {



  %tmp1 = atomicrmw add i64* @id, i64 1 seq_cst
  %tmp2 = add i64 %tmp1, 1
  %tmp3 = bitcast i8* %ptr to i64*
  store i64 %tmp2, i64* %tmp3, align 4
  ret void
}
