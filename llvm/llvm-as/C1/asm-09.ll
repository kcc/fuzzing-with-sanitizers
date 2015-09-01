



define void @f1(i32 *%dst) {





  %val = call i32 asm "blah $0", "=r,0" (i8 100)
  store i32 %val, i32 *%dst
  ret void
}

define void @f2(i32 *%dst) {





  %val = call i32 asm "blah $0", "=r,0" (i16 101)
  store i32 %val, i32 *%dst
  ret void
}

define void @f3(i32 *%dst) {





  %val = call i32 asm "blah $0", "=r,0" (i32 102)
  store i32 %val, i32 *%dst
  ret void
}


define void @f4(i32 *%dst) {




  %val = call i32 asm "blah $0", "=r,0" (i64 103)
  store i32 %val, i32 *%dst
  ret void
}

define i64 @f5() {




  %val = call i64 asm "blah $0", "=r,0" (i8 104)
  ret i64 %val
}

define i64 @f6() {




  %val = call i64 asm "blah $0", "=r,0" (i16 105)
  ret i64 %val
}

define i64 @f7() {




  %val = call i64 asm "blah $0", "=r,0" (i32 106)
  ret i64 %val
}

define i64 @f8() {




  %val = call i64 asm "blah $0", "=r,0" (i64 107)
  ret i64 %val
}
