




define double @f1(i64 %src) {




  %ptr = inttoptr i64 %src to fp128 *
  %val = load fp128 , fp128 *%ptr
  %trunc = fptrunc fp128 %val to double
  ret double %trunc
}


define double @f2(i64 %src) {




  %add = add i64 %src, 4080
  %ptr = inttoptr i64 %add to fp128 *
  %val = load fp128 , fp128 *%ptr
  %trunc = fptrunc fp128 %val to double
  ret double %trunc
}


define double @f3(i64 %src) {




  %add = add i64 %src, 4088
  %ptr = inttoptr i64 %add to fp128 *
  %val = load fp128 , fp128 *%ptr
  %trunc = fptrunc fp128 %val to double
  ret double %trunc
}


define double @f4(i64 %src) {




  %add = add i64 %src, 4096
  %ptr = inttoptr i64 %add to fp128 *
  %val = load fp128 , fp128 *%ptr
  %trunc = fptrunc fp128 %val to double
  ret double %trunc
}


define double @f5(i64 %src) {




  %add = add i64 %src, 524272
  %ptr = inttoptr i64 %add to fp128 *
  %val = load fp128 , fp128 *%ptr
  %trunc = fptrunc fp128 %val to double
  ret double %trunc
}



define double @f6(i64 %src) {





  %add = add i64 %src, 524280
  %ptr = inttoptr i64 %add to fp128 *
  %val = load fp128 , fp128 *%ptr
  %trunc = fptrunc fp128 %val to double
  ret double %trunc
}



define double @f7(i64 %src) {




  %add = add i64 %src, -8
  %ptr = inttoptr i64 %add to fp128 *
  %val = load fp128 , fp128 *%ptr
  %trunc = fptrunc fp128 %val to double
  ret double %trunc
}


define double @f8(i64 %src) {




  %add = add i64 %src, -16
  %ptr = inttoptr i64 %add to fp128 *
  %val = load fp128 , fp128 *%ptr
  %trunc = fptrunc fp128 %val to double
  ret double %trunc
}


define double @f9(i64 %src) {




  %add = add i64 %src, -524288
  %ptr = inttoptr i64 %add to fp128 *
  %val = load fp128 , fp128 *%ptr
  %trunc = fptrunc fp128 %val to double
  ret double %trunc
}



define double @f10(i64 %src) {





  %add = add i64 %src, -524296
  %ptr = inttoptr i64 %add to fp128 *
  %val = load fp128 , fp128 *%ptr
  %trunc = fptrunc fp128 %val to double
  ret double %trunc
}


define double @f11(i64 %src, i64 %index) {




  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4088
  %ptr = inttoptr i64 %add2 to fp128 *
  %val = load fp128 , fp128 *%ptr
  %trunc = fptrunc fp128 %val to double
  ret double %trunc
}
