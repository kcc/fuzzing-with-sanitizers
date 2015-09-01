



@gsrc16 = global i16 1
@gsrc32 = global i32 1
@gdst16 = global i16 2
@gdst32 = global i32 2
@gsrc16u = global i16 1, align 1, section "foo"
@gsrc32u = global i32 1, align 2, section "foo"
@gdst16u = global i16 2, align 1, section "foo"
@gdst32u = global i32 2, align 2, section "foo"
@garray8 = global [2 x i8] [i8 100, i8 101]
@garray16 = global [2 x i16] [i16 102, i16 103]


define i32 @f1() {



  %val = load i16 , i16 *@gsrc16
  %ext = sext i16 %val to i32
  ret i32 %ext
}


define i32 @f2() {



  %val = load i16 , i16 *@gsrc16
  %ext = zext i16 %val to i32
  ret i32 %ext
}


define void @f3(i32 %val) {



  %half = trunc i32 %val to i16
  store i16 %half, i16 *@gdst16
  ret void
}


define void @f4() {




  %val = load i32 , i32 *@gsrc32
  store i32 %val, i32 *@gdst32
  ret void
}


define i32 @f5() {




  %val = load i16 , i16 *@gsrc16u, align 1
  %ext = sext i16 %val to i32
  ret i32 %ext
}


define i32 @f6() {




  %val = load i16 , i16 *@gsrc16u, align 1
  %ext = zext i16 %val to i32
  ret i32 %ext
}


define void @f7(i32 %val) {




  %half = trunc i32 %val to i16
  store i16 %half, i16 *@gdst16u, align 1
  ret void
}


define void @f8() {






  %val = load i32 , i32 *@gsrc32u, align 2
  store i32 %val, i32 *@gdst32u, align 2
  ret void
}



define void @f9() {






  %ptr1 = getelementptr [2 x i8], [2 x i8] *@garray8, i64 0, i64 0
  %ptr2 = getelementptr [2 x i8], [2 x i8] *@garray8, i64 0, i64 1
  %val = load i8 , i8 *%ptr1
  %shr = lshr i8 %val, 1
  store i8 %shr, i8 *%ptr2
  ret void
}



define void @f10() {





  %ptr1 = getelementptr [2 x i16], [2 x i16] *@garray16, i64 0, i64 0
  %ptr2 = getelementptr [2 x i16], [2 x i16] *@garray16, i64 0, i64 1
  %val = load i16 , i16 *%ptr1
  %shr = lshr i16 %val, 1
  store i16 %shr, i16 *%ptr2
  ret void
}
