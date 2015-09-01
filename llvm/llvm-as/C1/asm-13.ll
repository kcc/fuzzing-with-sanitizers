




define i32 @f1() {




  %val = call i32 asm "blah $0 $1", "=&r,rK" (i32 -32769)
  ret i32 %val
}


define i32 @f2() {



  %val = call i32 asm "blah $0 $1", "=&r,rK" (i32 -32768)
  ret i32 %val
}


define i32 @f3() {



  %val = call i32 asm "blah $0 $1", "=&r,rK" (i32 32767)
  ret i32 %val
}


define i32 @f4() {




  %val = call i32 asm "blah $0 $1", "=&r,rK" (i32 32768)
  ret i32 %val
}
