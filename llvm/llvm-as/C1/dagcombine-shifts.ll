










define i16 @fun1(i8 zeroext %v) {
entry:
  %shr = lshr i8 %v, 4
  %ext = zext i8 %shr to i16
  %shl = shl i16 %ext, 4
  ret i16 %shl
}







define i32 @fun2(i8 zeroext %v) {
entry:
  %shr = lshr i8 %v, 4
  %ext = zext i8 %shr to i32
  %shl = shl i32 %ext, 4
  ret i32 %shl
}







define i32 @fun3(i16 zeroext %v) {
entry:
  %shr = lshr i16 %v, 4
  %ext = zext i16 %shr to i32
  %shl = shl i32 %ext, 4
  ret i32 %shl
}







define i64 @fun4(i8 zeroext %v) {
entry:
  %shr = lshr i8 %v, 4
  %ext = zext i8 %shr to i64
  %shl = shl i64 %ext, 4
  ret i64 %shl
}







define i64 @fun5(i16 zeroext %v) {
entry:
  %shr = lshr i16 %v, 4
  %ext = zext i16 %shr to i64
  %shl = shl i64 %ext, 4
  ret i64 %shl
}







define i64 @fun6(i32 zeroext %v) {
entry:
  %shr = lshr i32 %v, 4
  %ext = zext i32 %shr to i64
  %shl = shl i64 %ext, 4
  ret i64 %shl
}









define i64 @fun7(i8 zeroext %v) {
entry:
  %shr = ashr i8 %v, 4
  %ext = zext i8 %shr to i64
  %shl = shl i64 %ext, 4
  ret i64 %shl
}






define i64 @fun8(i16 zeroext %v) {
entry:
  %shr = ashr i16 %v, 4
  %ext = zext i16 %shr to i64
  %shl = shl i64 %ext, 4
  ret i64 %shl
}






define i64 @fun9(i32 zeroext %v) {
entry:
  %shr = ashr i32 %v, 4
  %ext = zext i32 %shr to i64
  %shl = shl i64 %ext, 4
  ret i64 %shl
}









define i64 @fun10(i8 zeroext %v) {
entry:
  %shr = lshr i8 %v, 4
  %ext = zext i8 %shr to i64
  %shl = shl i64 %ext, 4
  %add = add i64 %shl, %ext
  ret i64 %add
}






define i64 @fun11(i16 zeroext %v) {
entry:
  %shr = lshr i16 %v, 4
  %ext = zext i16 %shr to i64
  %shl = shl i64 %ext, 4
  %add = add i64 %shl, %ext
  ret i64 %add
}






define i64 @fun12(i32 zeroext %v) {
entry:
  %shr = lshr i32 %v, 4
  %ext = zext i32 %shr to i64
  %shl = shl i64 %ext, 4
  %add = add i64 %shl, %ext
  ret i64 %add
}

















define void @g(i32 %a) {
  %b = lshr i32 %a, 2
  %c = zext i32 %b to i64
  %d = add i64 %c, 1
  %e = shl i64 %c, 2
  tail call void @f(i64 %e)
  ret void
}







declare void @f(i64)

