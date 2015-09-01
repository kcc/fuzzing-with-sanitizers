





define void @f1(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i32
  %xor = xor i32 %ext, -2
  %trunc = trunc i32 %xor to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f2(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i64
  %xor = xor i64 %ext, -2
  %trunc = trunc i64 %xor to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f3(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i32
  %xor = xor i32 %ext, 254
  %trunc = trunc i32 %xor to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f4(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i64
  %xor = xor i64 %ext, 254
  %trunc = trunc i64 %xor to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f5(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i32
  %xor = xor i32 %ext, -2
  %trunc = trunc i32 %xor to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f6(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i64
  %xor = xor i64 %ext, -2
  %trunc = trunc i64 %xor to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f7(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i32
  %xor = xor i32 %ext, 254
  %trunc = trunc i32 %xor to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f8(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i64
  %xor = xor i64 %ext, 254
  %trunc = trunc i64 %xor to i8
  store i8 %trunc, i8 *%ptr
  ret void
}
