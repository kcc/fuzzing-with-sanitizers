



define i32 @test1(i32 %a, i32 %b, i32 %z) {






  %c = sub i32 0, %z
  %d = mul i32 %a, %b
  %e = mul i32 %c, %d
  %f = mul i32 %e, 12345
  %g = sub i32 0, %f
  ret i32 %g
}

define i32 @test2(i32 %a, i32 %b, i32 %z) {





  %d = mul i32 %z, 40
  %c = sub i32 0, %d
  %e = mul i32 %a, %c
  %f = sub i32 0, %e
  ret i32 %f
}
