



@a = external global i16
@b = external global i16
@c = external global i16


define i64 @test1() #0 {

entry:
  store i16 0, i16* @a, align 2
  store i16 10, i16* @b, align 2
  ret i64 10
}


define i64 @test2() #0 {

entry:
  store i16 0, i16* @a, align 2
  %0 = load i16, i16* @c, align 2
  %conv2 = zext i16 %0 to i64
  ret i64 %conv2
}


define i64 @test4() #0 {

entry:
  store i16 100, i16* @b, align 2
  store i16 0, i16* @a, align 2
  ret i64 0
}
