



define i32 @test1(i32 %a, i32 %b) {
entry:
  icmp eq i32 %b, %a              
  zext i1 %0 to i32               
  ret i32 %0                      
}
