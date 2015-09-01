


define i64 @test1(i64 %a, i64 %b, i64 %c) {



entry:
  %shl = shl i64 %b, 4
  %neg = xor i64 %a, -1
  %xor = xor i64 %shl, %neg
  ret i64 %xor
}


define i64 @test2(i64 %a, i64 %b, i64 %c) {





entry:
  %shl = shl i64 %b, 4
  %neg = xor i64 %shl, -1
  %xor = xor i64 %neg, %a
  %xor1 = xor i64 %c, %neg
  %shl2 = shl i64 %xor, %xor1
  ret i64 %shl2
}
