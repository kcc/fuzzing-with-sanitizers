

define i64 @sbfiz64(i64 %v) {


  %shl = shl i64 %v, 48
  %shr = ashr i64 %shl, 47
  ret i64 %shr
}

define i32 @sbfiz32(i32 %v) {


  %shl = shl i32 %v, 18
  %shr = ashr i32 %shl, 17
  ret i32 %shr
}

define i64 @ubfiz64(i64 %v) {


  %shl = shl i64 %v, 53
  %shr = lshr i64 %shl, 17
  ret i64 %shr
}

define i32 @ubfiz32(i32 %v) {


  %shl = shl i32 %v, 8
  %shr = lshr i32 %shl, 2
  ret i32 %shr
}
