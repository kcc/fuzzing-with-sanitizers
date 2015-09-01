




define i32 @f1() {




  %val = call i32 asm "blah $0 $1", "=&r,rM" (i32 2147483646)
  ret i32 %val
}


define i32 @f2() {



  %val = call i32 asm "blah $0 $1", "=&r,rM" (i32 2147483647)
  ret i32 %val
}


define i32 @f3() {




  %val = call i32 asm "blah $0 $1", "=&r,rM" (i32 2147483648)
  ret i32 %val
}
