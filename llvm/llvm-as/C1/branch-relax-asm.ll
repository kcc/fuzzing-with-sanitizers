
define i32 @test_asm_length(i32 %in) {


  
  
  
  
















  %val = and i32 %in, 1
  %tst = icmp eq i32 %val, 0
  br i1 %tst, label %true, label %false

true:
  call void asm sideeffect "nop\0A\09nop\0A\09nop\0A\09nop\0A\09nop\0A\09nop", ""()
  ret i32 4

false:
  ret i32 0
}
