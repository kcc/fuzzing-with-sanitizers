




define i32 @f1(i32 %a) {



  %add = add i32 %a, 1
  ret i32 %add
}


define i32 @f2(i32 %a) {



  %add = add i32 %a, 32767
  ret i32 %add
}


define i32 @f3(i32 %a) {



  %add = add i32 %a, 32768
  ret i32 %add
}


define i32 @f4(i32 %a) {



  %add = add i32 %a, 2147483647
  ret i32 %add
}


define i32 @f5(i32 %a) {



  %add = add i32 %a, 2147483648
  ret i32 %add
}


define i32 @f6(i32 %a) {



  %add = add i32 %a, -1
  ret i32 %add
}


define i32 @f7(i32 %a) {



  %add = add i32 %a, -32768
  ret i32 %add
}


define i32 @f8(i32 %a) {



  %add = add i32 %a, -32769
  ret i32 %add
}


define i32 @f9(i32 %a) {



  %add = add i32 %a, -2147483648
  ret i32 %add
}


define i32 @f10(i32 %a) {



  %add = add i32 %a, -2147483649
  ret i32 %add
}
