


define i8 @test1(i8 %x, i8 %y) {

  %A = udiv i8 %x, %y

  %B = mul i8 %A, %y
  %C = sub i8 %x, %B
  ret i8 %C

}

define i8 @test2(i8 %x, i8 %y) {

  %A = sdiv i8 %x, %y

  %B = mul i8 %A, %y
  %C = sub i8 %x, %B
  ret i8 %C

}

define i8 @test3(i8 %x, i8 %y) {

  %A = udiv i8 %x, %y

  %B = mul i8 %A, %y
  %C = sub i8 %B, %x

  ret i8 %C

}

define i8 @test4(i8 %x) {

  %A = udiv i8 %x, 3

  %B = mul i8 %A, -3

  %C = sub i8 %x, %B

  ret i8 %C

}

define i32 @test5(i32 %x, i32 %y) {


  %div = sdiv i32 %x, %y

  %mul = mul i32 %div, %y
  %r = sdiv i32 %mul, %y
  ret i32 %r

}

define i32 @test6(i32 %x, i32 %y) {


  %div = udiv i32 %x, %y

  %mul = mul i32 %div, %y
  %r = udiv i32 %mul, %y
  ret i32 %r

}
