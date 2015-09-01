




define double @f1(double %a, double %b, i64 %i1, i64 %i2) {




  %cond = icmp ult i64 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i64 %i1, i64 *%ptr) {





  %i2 = load i64 , i64 *%ptr
  %cond = icmp ult i64 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i64 %i1, i64 *%base) {





  %ptr = getelementptr i64, i64 *%base, i64 65535
  %i2 = load i64 , i64 *%ptr
  %cond = icmp ult i64 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f4(double %a, double %b, i64 %i1, i64 *%base) {






  %ptr = getelementptr i64, i64 *%base, i64 65536
  %i2 = load i64 , i64 *%ptr
  %cond = icmp ult i64 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f5(double %a, double %b, i64 %i1, i64 *%base) {





  %ptr = getelementptr i64, i64 *%base, i64 -1
  %i2 = load i64 , i64 *%ptr
  %cond = icmp ult i64 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f6(double %a, double %b, i64 %i1, i64 *%base) {





  %ptr = getelementptr i64, i64 *%base, i64 -65536
  %i2 = load i64 , i64 *%ptr
  %cond = icmp ult i64 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f7(double %a, double %b, i64 %i1, i64 *%base) {






  %ptr = getelementptr i64, i64 *%base, i64 -65537
  %i2 = load i64 , i64 *%ptr
  %cond = icmp ult i64 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f8(double %a, double %b, i64 %i1, i64 %base, i64 %index) {





  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 524280
  %ptr = inttoptr i64 %add2 to i64 *
  %i2 = load i64 , i64 *%ptr
  %cond = icmp ult i64 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f9(double %a, double %b, i64 %i2, i64 *%ptr) {





  %i1 = load i64 , i64 *%ptr
  %cond = icmp ult i64 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
