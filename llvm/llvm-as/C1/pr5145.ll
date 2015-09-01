
@sc8 = external global i8

define void @atomic_maxmin_i8() {

  %1 = atomicrmw max  i8* @sc8, i8 5 acquire





  %2 = atomicrmw min  i8* @sc8, i8 6 acquire





  %3 = atomicrmw umax i8* @sc8, i8 7 acquire





  %4 = atomicrmw umin i8* @sc8, i8 8 acquire





  ret void
}
