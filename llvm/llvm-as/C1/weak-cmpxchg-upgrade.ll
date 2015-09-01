





define i32 @test(i32* %addr, i32 %old, i32 %new) {


  %val = cmpxchg i32* %addr, i32 %old, i32 %new seq_cst monotonic
  ret i32 %val
}

define i32 @test(i32* %addr, i32 %old, i32 %new) {
  ret i1 %val
}
