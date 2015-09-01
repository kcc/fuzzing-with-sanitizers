





define zeroext i1 @test_cmpxchg_res_i8(i8* %addr, i8 %desired, i8 zeroext %new) {
entry:
  %0 = cmpxchg i8* %addr, i8 %desired, i8 %new monotonic monotonic
  %1 = extractvalue { i8, i1 } %0, 1
  ret i1 %1
}









































