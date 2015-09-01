





define void @f1(i128 *%aptr, i32 %b) {




  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 127
  %bext = zext i32 %b to i128
  %add = add i128 %xor, %bext
  store i128 %add, i128 *%aptr
  ret void
}


define void @f2(i128 *%aptr, i64 %b) {




  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 127
  %trunc = trunc i64 %b to i32
  %bext = zext i32 %trunc to i128
  %add = add i128 %xor, %bext
  store i128 %add, i128 *%aptr
  ret void
}



define void @f3(i128 *%aptr, i64 %b) {




  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 127
  %bext = zext i64 %b to i128
  %and = and i128 %bext, 4294967295
  %add = add i128 %xor, %and
  store i128 %add, i128 *%aptr
  ret void
}


define void @f4(i128 *%aptr, i32 *%bsrc) {




  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 127
  %b = load i32 , i32 *%bsrc
  %bext = zext i32 %b to i128
  %add = add i128 %xor, %bext
  store i128 %add, i128 *%aptr
  ret void
}


define void @f5(i128 *%aptr, i32 *%bsrc) {




  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 127
  %ptr = getelementptr i32, i32 *%bsrc, i64 131071
  %b = load i32 , i32 *%ptr
  %bext = zext i32 %b to i128
  %add = add i128 %xor, %bext
  store i128 %add, i128 *%aptr
  ret void
}



define void @f6(i128 *%aptr, i32 *%bsrc) {





  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 127
  %ptr = getelementptr i32, i32 *%bsrc, i64 131072
  %b = load i32 , i32 *%ptr
  %bext = zext i32 %b to i128
  %add = add i128 %xor, %bext
  store i128 %add, i128 *%aptr
  ret void
}


define void @f7(i128 *%aptr, i32 *%bsrc) {




  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 127
  %ptr = getelementptr i32, i32 *%bsrc, i128 -1
  %b = load i32 , i32 *%ptr
  %bext = zext i32 %b to i128
  %add = add i128 %xor, %bext
  store i128 %add, i128 *%aptr
  ret void
}


define void @f8(i128 *%aptr, i32 *%bsrc) {




  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 127
  %ptr = getelementptr i32, i32 *%bsrc, i128 -131072
  %b = load i32 , i32 *%ptr
  %bext = zext i32 %b to i128
  %add = add i128 %xor, %bext
  store i128 %add, i128 *%aptr
  ret void
}



define void @f9(i128 *%aptr, i32 *%bsrc) {





  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 127
  %ptr = getelementptr i32, i32 *%bsrc, i128 -131073
  %b = load i32 , i32 *%ptr
  %bext = zext i32 %b to i128
  %add = add i128 %xor, %bext
  store i128 %add, i128 *%aptr
  ret void
}


define void @f10(i128 *%aptr, i64 %src, i64 %index) {



  %a = load i128 , i128 *%aptr
  %xor = xor i128 %a, 127
  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524284
  %ptr = inttoptr i64 %add2 to i32 *
  %b = load i32 , i32 *%ptr
  %bext = zext i32 %b to i128
  %add = add i128 %xor, %bext
  store i128 %add, i128 *%aptr
  ret void
}
