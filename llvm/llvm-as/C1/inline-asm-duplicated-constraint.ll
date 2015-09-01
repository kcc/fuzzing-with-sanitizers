






define void @test1(i32* %l) {
  %load = load i32, i32* %l
  call void asm "nop", "=*rmrm,0m0m,~{dirflag},~{fpsr},~{flags}"(i32* %l, i32 %load)
  ret void
}
