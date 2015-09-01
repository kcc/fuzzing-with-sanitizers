




define i32 @f1() {




  %val = call i32 asm "blah $0 $1", "=&r,rI" (i32 -1)
  ret i32 %val
}


define i32 @f2() {



  %val = call i32 asm "blah $0 $1", "=&r,rI" (i32 0)
  ret i32 %val
}


define i32 @f3() {



  %val = call i32 asm "blah $0 $1", "=&r,rI" (i32 255)
  ret i32 %val
}


define i32 @f4() {




  %val = call i32 asm "blah $0 $1", "=&r,rI" (i32 256)
  ret i32 %val
}
