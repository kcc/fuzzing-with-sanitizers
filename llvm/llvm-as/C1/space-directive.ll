

define i32 @test_space() minsize {









  %addr = inttoptr i32 12345678 to i32*
  %val = load i32, i32* %addr
  call i32 @llvm.arm.space(i32 10000, i32 undef)
  ret i32 %val
}

declare i32 @llvm.arm.space(i32, i32)
