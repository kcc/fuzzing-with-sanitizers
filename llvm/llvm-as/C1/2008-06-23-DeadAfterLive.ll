






define internal i32 @test5() {
  ret i32 123 
}



define i32 @dead() {
  %DEAD = call i32 @test5()
  ret i32 0
}


define i32 @alive() {
  %LIVE = call i32 @test5()
  ret i32 %LIVE
}
