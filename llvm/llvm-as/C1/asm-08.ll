



define i64 @f1() {




  %val = call i64 asm "blah $0 $1", "=d,d" (i8 1)
  ret i64 %val
}

define i64 @f2() {




  %val = call i64 asm "blah $0 $1", "=d,d" (i16 2)
  ret i64 %val
}

define i64 @f3() {




  %val = call i64 asm "blah $0 $1", "=d,d" (i32 3)
  ret i64 %val
}

define i64 @f4() {




  %val = call i64 asm "blah $0 $1", "=d,d" (i64 4)
  ret i64 %val
}
