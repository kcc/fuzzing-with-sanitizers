




define i8 @test_initial_load(i8* %ptr, i8 %value) {
  %res = atomicrmw nand i8* %ptr, i8 %value seq_cst
  ret i8 %res
}


