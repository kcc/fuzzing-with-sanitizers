







define i32 @shl_to_mul_nsw(i32 %i) {
entry:
  %mul = shl nsw i32 %i, 31
  %mul2 = add i32 %mul, 1
  ret i32 %mul2
}




define i32 @shl_to_mul_nuw(i32 %i) {
entry:
  %mul = shl nuw i32 %i, 2
  %mul2 = add i32 %mul, 1
  ret i32 %mul2
}




define i32 @shl_to_mul_nuw_nsw(i32 %i) {
entry:
  %mul = shl nuw nsw i32 %i, 2
  %mul2 = add i32 %mul, 1
  ret i32 %mul2
}






define i2 @pr23926(i2 %X1, i2 %X2) {
  %add = add nuw i2 %X1, 1
  %sub = sub nuw nsw i2 %X2, %add
  ret i2 %sub
}
