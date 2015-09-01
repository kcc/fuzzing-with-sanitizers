





define i64 @f1(i64 %a, i64 %b) {



  %add = add i64 %b, 1
  ret i64 %add
}


define i64 @f2(i64 %a, i64 %b) {



  %add = add i64 %b, 32767
  ret i64 %add
}


define i64 @f3(i64 %a, i64 %b) {



  %add = add i64 %b, 32768
  ret i64 %add
}


define i64 @f4(i64 %a, i64 %b) {



  %add = add i64 %b, -1
  ret i64 %add
}


define i64 @f5(i64 %a, i64 %b) {



  %add = add i64 %b, -32768
  ret i64 %add
}


define i64 @f6(i64 %a, i64 %b) {



  %add = add i64 %b, -32769
  ret i64 %add
}


define i64 @f7(i64 %a) {



  %add = add i64 %a, 32000
  ret i64 %add
}
