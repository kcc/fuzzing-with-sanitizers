



define i32 @test_narrow_args_callee(i64 %x0, i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i8 %c, i16 %s) #0 {
entry:
  %conv = zext i8 %c to i32
  %conv1 = sext i16 %s to i32
  %add = add nsw i32 %conv1, %conv



  ret i32 %add
}


define i32 @test_narrow_args_caller() #0 {
entry:
  %call = tail call i32 @test_narrow_args_callee(i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i8 8, i16 9)



  ret i32 %call
}

define float @test_block_addr([8 x float], [1 x float] %in) {


  %val = extractvalue [1 x float] %in, 0
  ret float %val
}

define void @test_block_addr_callee() {



  %val = insertvalue [1 x float] undef, float 0.0, 0
  call float @test_block_addr([8 x float] undef, [1 x float] %val)
  ret void
}
