

define i32 @test_consts(i32 %in) {






  %lo = and i32 %in, 65535
  %hi = and i32 %in, -65536
  %res = or i32 %lo, %hi
  ret i32 %res
}

define i32 @test_generic(i32 %in, i32 %mask1, i32 %mask2) {




  %lo = and i32 %in, %mask1
  %hi = and i32 %in, %mask2
  %res = or i32 %lo, %hi
  ret i32 %res
}



define [3 x i32] @test_reuse(i32 %in, i32 %mask1, i32 %mask2) {





  %lo = and i32 %in, %mask1
  %hi = and i32 %in, %mask2
  %recombine = or i32 %lo, %hi

  %res.tmp0 = insertvalue [3 x i32] undef, i32 %recombine, 0
  %res.tmp1 = insertvalue [3 x i32] %res.tmp0, i32 %lo, 1
  %res = insertvalue [3 x i32] %res.tmp1, i32 %hi, 2

  ret [3 x i32] %res
}
