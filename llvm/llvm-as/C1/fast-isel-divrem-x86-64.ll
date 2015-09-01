

define i64 @test_sdiv64(i64 %dividend, i64 %divisor) nounwind {
entry:
  %result = sdiv i64 %dividend, %divisor
  ret i64 %result
}





define i64 @test_srem64(i64 %dividend, i64 %divisor) nounwind {
entry:
  %result = srem i64 %dividend, %divisor
  ret i64 %result
}





define i64 @test_udiv64(i64 %dividend, i64 %divisor) nounwind {
entry:
  %result = udiv i64 %dividend, %divisor
  ret i64 %result
}





define i64 @test_urem64(i64 %dividend, i64 %divisor) nounwind {
entry:
  %result = urem i64 %dividend, %divisor
  ret i64 %result
}




