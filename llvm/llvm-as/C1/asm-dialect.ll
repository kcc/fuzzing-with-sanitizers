











define i32 @test(i32 %in1, i32 %in2) {
entry:
  %0 = tail call i32 asm "$(sfe$|subfe$) $0,$1,$2", "=r,r,r"(i32 %in1, i32 %in2)
  ret i32 %0
}

