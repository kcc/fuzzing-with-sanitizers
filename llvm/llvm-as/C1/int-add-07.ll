




define i64 @f1(i64 %a) {



  %add = add i64 %a, 1
  ret i64 %add
}


define i64 @f2(i64 %a) {



  %add = add i64 %a, 32767
  ret i64 %add
}


define i64 @f3(i64 %a) {



  %add = add i64 %a, 32768
  ret i64 %add
}


define i64 @f4(i64 %a) {



  %add = add i64 %a, 2147483647
  ret i64 %add
}


define i64 @f5(i64 %a) {



  %add = add i64 %a, 2147483648
  ret i64 %add
}


define i64 @f6(i64 %a) {



  %add = add i64 %a, 4294967295
  ret i64 %add
}


define i64 @f7(i64 %a) {




  %add = add i64 %a, 4294967296
  ret i64 %add
}


define i64 @f8(i64 %a) {



  %add = add i64 %a, -1
  ret i64 %add
}


define i64 @f9(i64 %a) {



  %add = add i64 %a, -32768
  ret i64 %add
}


define i64 @f10(i64 %a) {



  %add = add i64 %a, -32769
  ret i64 %add
}


define i64 @f11(i64 %a) {



  %add = add i64 %a, -2147483648
  ret i64 %add
}


define i64 @f12(i64 %a) {



  %add = add i64 %a, -2147483649
  ret i64 %add
}


define i64 @f13(i64 %a) {



  %add = add i64 %a, -4294967295
  ret i64 %add
}


define i64 @f14(i64 %a) {




  %add = add i64 %a, -4294967296
  ret i64 %add
}
