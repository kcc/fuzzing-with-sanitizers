







define i1 @test_and1(i32 %x, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp sge i32 %x, 0
  %b = icmp slt i32 %x, %nn
  %c = and i1 %a, %b
  ret i1 %c
}




define i1 @test_and2(i32 %x, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp sgt i32 %x, -1
  %b = icmp sle i32 %x, %nn
  %c = and i1 %a, %b
  ret i1 %c
}




define i1 @test_and3(i32 %x, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp sgt i32 %nn, %x
  %b = icmp sge i32 %x, 0
  %c = and i1 %a, %b
  ret i1 %c
}




define i1 @test_and4(i32 %x, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp sge i32 %nn, %x
  %b = icmp sge i32 %x, 0
  %c = and i1 %a, %b
  ret i1 %c
}




define i1 @test_or1(i32 %x, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp slt i32 %x, 0
  %b = icmp sge i32 %x, %nn
  %c = or i1 %a, %b
  ret i1 %c
}




define i1 @test_or2(i32 %x, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp sle i32 %x, -1
  %b = icmp sgt i32 %x, %nn
  %c = or i1 %a, %b
  ret i1 %c
}




define i1 @test_or3(i32 %x, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp sle i32 %nn, %x
  %b = icmp slt i32 %x, 0
  %c = or i1 %a, %b
  ret i1 %c
}




define i1 @test_or4(i32 %x, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp slt i32 %nn, %x
  %b = icmp slt i32 %x, 0
  %c = or i1 %a, %b
  ret i1 %c
}








define i1 @negative1(i32 %x, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp slt i32 %x, %nn
  %b = icmp sgt i32 %x, 0      
  %c = and i1 %a, %b
  ret i1 %c
}






define i1 @negative2(i32 %x, i32 %n) {
  %a = icmp slt i32 %x, %n     
  %b = icmp sge i32 %x, 0
  %c = and i1 %a, %b
  ret i1 %c
}






define i1 @negative3(i32 %x, i32 %y, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp slt i32 %x, %nn
  %b = icmp sge i32 %y, 0      
  %c = and i1 %a, %b
  ret i1 %c
}






define i1 @negative4(i32 %x, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp ne i32 %x, %nn     
  %b = icmp sge i32 %x, 0
  %c = and i1 %a, %b
  ret i1 %c
}






define i1 @negative5(i32 %x, i32 %n) {
  %nn = and i32 %n, 2147483647
  %a = icmp slt i32 %x, %nn
  %b = icmp sge i32 %x, 0
  %c = or i1 %a, %b            
  ret i1 %c
}

