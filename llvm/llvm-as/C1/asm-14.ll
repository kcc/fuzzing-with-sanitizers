




define i32 @f1() {




  %val = call i32 asm "blah $0 $1", "=&r,rL" (i32 -524289)
  ret i32 %val
}


define i32 @f2() {



  %val = call i32 asm "blah $0 $1", "=&r,rL" (i32 -524288)
  ret i32 %val
}


define i32 @f3() {



  %val = call i32 asm "blah $0 $1", "=&r,rL" (i32 524287)
  ret i32 %val
}


define i32 @f4() {




  %val = call i32 asm "blah $0 $1", "=&r,rL" (i32 524288)
  ret i32 %val
}
