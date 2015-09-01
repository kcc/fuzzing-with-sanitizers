



define void @f1(i8 *%dest) {




  br label %loop
loop:
  store volatile i8 1, i8 *%dest
  br label %loop
}
