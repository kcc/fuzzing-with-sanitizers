



define i128 @test1(i128 %x) {
  
  
  %tmp = sdiv i128 %x, 73786976294838206464
  ret i128 %tmp
}

define i128 @test2(i128 %x) {
  
  
  %tmp = sdiv i128 %x, -73786976294838206464
  ret i128 %tmp
}

define i128 @test3(i128 %x) {
  
  
  %tmp = sdiv i128 %x, -73786976294838206467
  ret i128 %tmp
}
