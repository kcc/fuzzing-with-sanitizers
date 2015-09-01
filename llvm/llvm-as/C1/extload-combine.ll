




@a = external global i16
@b = external global i16
@c = external global i16
@char_a = external global i8
@char_b = external global i8
@char_c = external global i8
@int_a = external global i32
@int_b = external global i32
@int_c = external global i32


define i64 @short_test1() #0 {


entry:
  store i16 0, i16* @a, align 2
  %0 = load i16, i16* @b, align 2
  %conv2 = zext i16 %0 to i64
  ret i64 %conv2
}


define i64 @short_test2() #0 {


entry:
  store i16 0, i16* @a, align 2
  %0 = load i16, i16* @c, align 2
  %conv2 = sext i16 %0 to i64
  ret i64 %conv2
}


define i64 @char_test1() #0 {


entry:
  store i8 0, i8* @char_a, align 1
  %0 = load i8, i8* @char_b, align 1
  %conv2 = zext i8 %0 to i64
  ret i64 %conv2
}


define i64 @char_test2() #0 {


entry:
  store i8 0, i8* @char_a, align 1
  %0 = load i8, i8* @char_c, align 1
  %conv2 = sext i8 %0 to i64
  ret i64 %conv2
}


define i64 @int_test1() #0 {


entry:
  store i32 0, i32* @int_a, align 4
  %0 = load i32, i32* @int_b, align 4
  %conv = zext i32 %0 to i64
  ret i64 %conv
}


define i64 @int_test2() #0 {


entry:
  store i32 0, i32* @int_a, align 4
  %0 = load i32, i32* @int_c, align 4
  %conv = sext i32 %0 to i64
  ret i64 %conv
}
