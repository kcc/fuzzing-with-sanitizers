



define i16 @test_bitcast_v2i8_to_i16(<2 x i8> %a) {







  %aa = bitcast <2 x i8> %a to i16
  ret i16 %aa
}
