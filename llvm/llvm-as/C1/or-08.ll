




define void @f1(i8 *%ptr1) {



  %ptr2 = getelementptr i8, i8 *%ptr1, i64 1
  %val = load i8 , i8 *%ptr1
  %old = load i8 , i8 *%ptr2
  %or = or i8 %val, %old
  store i8 %or, i8 *%ptr2
  ret void
}


define void @f2(i16 *%ptr1) {



  %ptr2 = getelementptr i16, i16 *%ptr1, i64 1
  %val = load i16 , i16 *%ptr1
  %old = load i16 , i16 *%ptr2
  %or = or i16 %val, %old
  store i16 %or, i16 *%ptr2
  ret void
}


define void @f3(i32 *%ptr1) {



  %ptr2 = getelementptr i32, i32 *%ptr1, i64 1
  %val = load i32 , i32 *%ptr1
  %old = load i32 , i32 *%ptr2
  %or = or i32 %old, %val
  store i32 %or, i32 *%ptr2
  ret void
}


define void @f4(i64 *%ptr1) {



  %ptr2 = getelementptr i64, i64 *%ptr1, i64 1
  %val = load i64 , i64 *%ptr1
  %old = load i64 , i64 *%ptr2
  %or = or i64 %old, %val
  store i64 %or, i64 *%ptr2
  ret void
}


