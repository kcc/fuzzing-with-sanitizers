




define i32 @f1() {




  %val = call i32 asm "blah $0 $1", "=&r,rJ" (i32 -1)
  ret i32 %val
}


define i32 @f2() {



  %val = call i32 asm "blah $0 $1", "=&r,rJ" (i32 0)
  ret i32 %val
}


define i32 @f3() {



  %val = call i32 asm "blah $0 $1", "=&r,rJ" (i32 4095)
  ret i32 %val
}


define i32 @f4() {




  %val = call i32 asm "blah $0 $1", "=&r,rJ" (i32 4096)
  ret i32 %val
}
