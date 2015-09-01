
  






  
define i128 @test(i128 %a, i128 %b) {
entry:
    %tmp = shl i128 %b, %a
    ret i128 %tmp
}
