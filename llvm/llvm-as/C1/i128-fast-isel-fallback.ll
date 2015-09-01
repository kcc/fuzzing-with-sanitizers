


define void @test1() {
  %1 = sext i32 0 to i128
  call void  @test2(i128 %1)
  ret void








}

declare void @test2(i128)
