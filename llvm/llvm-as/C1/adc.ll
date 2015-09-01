


define i128 @test_simple(i128 %a, i128 %b, i128 %c) {


  %valadd = add i128 %a, %b





  %valsub = sub i128 %valadd, %c





  ret i128 %valsub

}

define i128 @test_imm(i128 %a) {


  %val = add i128 %a, 12





  ret i128 %val

}

define i128 @test_shifted(i128 %a, i128 %b) {


  %rhs = shl i128 %b, 45

  %val = add i128 %a, %rhs





  ret i128 %val

}

define i128 @test_extended(i128 %a, i16 %b) {


  %ext = sext i16 %b to i128
  %rhs = shl i128 %ext, 3

  %val = add i128 %a, %rhs





  ret i128 %val

}
