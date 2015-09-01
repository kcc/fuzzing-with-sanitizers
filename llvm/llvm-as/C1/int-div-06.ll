




define i32 @f1(i32 %a) {







  %b = sdiv i32 %a, 139968
  ret i32 %b
}


define i32 @f2(i32 %a) {





  %b = udiv i32 %a, 139968
  ret i32 %b
}


define i64 @f3(i64 %dummy, i64 %a) {











  %b = sdiv i64 %a, 139968
  ret i64 %b
}


define i64 @f4(i64 %dummy, i64 %a) {






  %b = udiv i64 %a, 139968
  ret i64 %b
}
