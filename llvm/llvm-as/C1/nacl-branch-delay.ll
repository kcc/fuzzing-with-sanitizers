





@x = global i32 0, align 4
declare void @f1(i32)
declare void @f2()


define void @test1() {
  %1 = load i32, i32* @x, align 4
  call void @f1(i32 %1)
  ret void


























}


define void @test2() {
  store i32 1, i32* @x, align 4
  tail call void @f2()
  ret void






















}
