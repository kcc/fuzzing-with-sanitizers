


define i32 @test1(i32 inreg %x) {
entry:
  %div = sdiv i32 %x, 16
  ret i32 %div



}


define i32 @test2(i32 inreg %x) minsize {
entry:
  %div = sdiv i32 %x, 16
  ret i32 %div



}


define i32 @test3(i32 inreg %x) optsize {
entry:
  %div = sdiv i32 %x, 16
  ret i32 %div



}


