




define i32 @f1(i32 %a) {



  %or = or i32 %a, 1
  ret i32 %or
}


define i32 @f2(i32 %a) {



  %or = or i32 %a, 65535
  ret i32 %or
}


define i32 @f3(i32 %a) {



  %or = or i32 %a, 65536
  ret i32 %or
}


define i32 @f4(i32 %a) {



  %or = or i32 %a, 65537
  ret i32 %or
}


define i32 @f5(i32 %a) {



  %or = or i32 %a, -65536
  ret i32 %or
}


define i32 @f6(i32 %a) {



  %or = or i32 %a, -65535
  ret i32 %or
}


define i32 @f7(i32 %a) {



  %or = or i32 %a, -2
  ret i32 %or
}
