



define i8 @foo(i8 %x) {
  %tmp1 = or i8 %x, 127
  %tmp2 = or i8 %tmp1, 128
  ret i8 %tmp2


}
