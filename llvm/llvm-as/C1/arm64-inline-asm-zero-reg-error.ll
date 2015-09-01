




define void @test_bad_zero_reg() {
  tail call void asm sideeffect "USE($0)", "z"(i32 1) nounwind


  ret void
}
