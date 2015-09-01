



define i32 @test_mul(i32 %arg) {




  %tmp1 = mul i32 12, %arg
  %tmp2 = mul i32 %tmp1, 12
  ret i32 %tmp2
}

define i32 @test_and(i32 %arg) {




  %tmp1 = and i32 14, %arg
  %tmp2 = and i32 %tmp1, 14
  ret i32 %tmp2
}

define i32 @test_or(i32 %arg) {




  %tmp1 = or i32 14, %arg
  %tmp2 = or i32 %tmp1, 14
  ret i32 %tmp2
}

define i32 @test_xor(i32 %arg) {



  %tmp1 = xor i32 12, %arg
  %tmp2 = xor i32 %tmp1, 12
  ret i32 %tmp2
}
