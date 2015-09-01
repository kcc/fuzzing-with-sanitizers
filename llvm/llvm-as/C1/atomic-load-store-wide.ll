




define void @test1(i64* %ptr, i64 %val1) {



  store atomic i64 %val1, i64* %ptr seq_cst, align 8
  ret void
}

define i64 @test2(i64* %ptr) {


  %val = load atomic i64, i64* %ptr seq_cst, align 8
  ret i64 %val
}
