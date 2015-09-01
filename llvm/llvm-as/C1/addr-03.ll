



define void @f1() {



  %ptr = inttoptr i64 0 to i8 *
  %val = load volatile i8 , i8 *%ptr
  ret void
}

define void @f2() {



  %ptr = inttoptr i64 -524288 to i8 *
  %val = load volatile i8 , i8 *%ptr
  ret void
}

define void @f3() {



  %ptr = inttoptr i64 -524289 to i8 *
  %val = load volatile i8 , i8 *%ptr
  ret void
}

define void @f4() {



  %ptr = inttoptr i64 524287 to i8 *
  %val = load volatile i8 , i8 *%ptr
  ret void
}

define void @f5() {



  %ptr = inttoptr i64 524288 to i8 *
  %val = load volatile i8 , i8 *%ptr
  ret void
}
