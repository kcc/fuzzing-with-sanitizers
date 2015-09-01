


define i128 @test_128bitmul(i128 %lhs, i128 %rhs) {












  %prod = mul i128 %lhs, %rhs
  ret i128 %prod
}




define i128 @test_128bitmul_optsize(i128 %lhs, i128 %rhs) optsize {







  %prod = mul i128 %lhs, %rhs
  ret i128 %prod
}

define i128 @test_128bitmul_minsize(i128 %lhs, i128 %rhs) minsize {







  %prod = mul i128 %lhs, %rhs
  ret i128 %prod
}

