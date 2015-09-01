



@gsrc16 = global i16 1
@gsrc32 = global i32 1
@gsrc64 = global i64 1
@gdst16 = global i16 2
@gdst32 = global i32 2
@gdst64 = global i64 2
@gsrc16u = global i16 1, align 1, section "foo"
@gsrc32u = global i32 1, align 2, section "foo"
@gsrc64u = global i64 1, align 4, section "foo"
@gdst16u = global i16 2, align 1, section "foo"
@gdst32u = global i32 2, align 2, section "foo"
@gdst64u = global i64 2, align 4, section "foo"


define i64 @f1() {



  %val = load i16 , i16 *@gsrc16
  %ext = sext i16 %val to i64
  ret i64 %ext
}


define i64 @f2() {



  %val = load i16 , i16 *@gsrc16
  %ext = zext i16 %val to i64
  ret i64 %ext
}


define i64 @f3() {



  %val = load i32 , i32 *@gsrc32
  %ext = sext i32 %val to i64
  ret i64 %ext
}


define i64 @f4() {



  %val = load i32 , i32 *@gsrc32
  %ext = zext i32 %val to i64
  ret i64 %ext
}


define void @f5(i64 %val) {



  %half = trunc i64 %val to i16
  store i16 %half, i16 *@gdst16
  ret void
}


define void @f6(i64 %val) {



  %word = trunc i64 %val to i32
  store i32 %word, i32 *@gdst32
  ret void
}


define void @f7() {




  %val = load i64 , i64 *@gsrc64
  store i64 %val, i64 *@gdst64
  ret void
}


define i64 @f8() {




  %val = load i16 , i16 *@gsrc16u, align 1
  %ext = sext i16 %val to i64
  ret i64 %ext
}


define i64 @f9() {




  %val = load i16 , i16 *@gsrc16u, align 1
  %ext = zext i16 %val to i64
  ret i64 %ext
}


define i64 @f10() {




  %val = load i32 , i32 *@gsrc32u, align 2
  %ext = sext i32 %val to i64
  ret i64 %ext
}


define i64 @f11() {




  %val = load i32 , i32 *@gsrc32u, align 2
  %ext = zext i32 %val to i64
  ret i64 %ext
}


define void @f12(i64 %val) {




  %half = trunc i64 %val to i16
  store i16 %half, i16 *@gdst16u, align 1
  ret void
}


define void @f13(i64 %val) {




  %word = trunc i64 %val to i32
  store i32 %word, i32 *@gdst32u, align 2
  ret void
}


define void @f14() {






  %val = load i64 , i64 *@gsrc64u, align 4
  store i64 %val, i64 *@gdst64u, align 4
  ret void
}
