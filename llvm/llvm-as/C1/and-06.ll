





define void @f1(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i32
  %and = and i32 %ext, -2
  %trunc = trunc i32 %and to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f2(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i64
  %and = and i64 %ext, -2
  %trunc = trunc i64 %and to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f3(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i32
  %and = and i32 %ext, 254
  %trunc = trunc i32 %and to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f4(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = zext i8 %val to i64
  %and = and i64 %ext, 254
  %trunc = trunc i64 %and to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f5(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i32
  %and = and i32 %ext, -2
  %trunc = trunc i32 %and to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f6(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i64
  %and = and i64 %ext, -2
  %trunc = trunc i64 %and to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f7(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i32
  %and = and i32 %ext, 254
  %trunc = trunc i32 %and to i8
  store i8 %trunc, i8 *%ptr
  ret void
}


define void @f8(i8 *%ptr) {



  %val = load i8 , i8 *%ptr
  %ext = sext i8 %val to i64
  %and = and i64 %ext, 254
  %trunc = trunc i64 %and to i8
  store i8 %trunc, i8 *%ptr
  ret void
}
