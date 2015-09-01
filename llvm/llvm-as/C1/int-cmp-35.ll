





define double @f1(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp ult i64 %val, 2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp ult i64 %val, 65535
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i64 *%ptr) {



  %val = load i64 , i64 *%ptr
  %cond = icmp ult i64 %val, 65536
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f4(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp eq i64 %val, 32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f5(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp eq i64 %val, 65535
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f6(double %a, double %b, i64 *%ptr) {



  %val = load i64 , i64 *%ptr
  %cond = icmp eq i64 %val, 65536
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f7(double %a, double %b, i64 %i1, i64 *%base) {





  %ptr = getelementptr i64, i64 *%base, i64 511
  %val = load i64 , i64 *%ptr
  %cond = icmp ult i64 %val, 2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f8(double %a, double %b, i64 *%base) {






  %ptr = getelementptr i64, i64 *%base, i64 512
  %val = load i64 , i64 *%ptr
  %cond = icmp ult i64 %val, 2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f9(double %a, double %b, i64 *%base) {






  %ptr = getelementptr i64, i64 *%base, i64 -1
  %val = load i64 , i64 *%ptr
  %cond = icmp ult i64 %val, 2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f10(double %a, double %b, i64 %base, i64 %index) {






  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i64 *
  %val = load i64 , i64 *%ptr
  %cond = icmp ult i64 %val, 2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
