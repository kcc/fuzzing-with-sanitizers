




define double @f1(double %a, double %b, i32 %i1, i32 %i2) {




  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i32 %i1, i32 *%ptr) {





  %i2 = load i32 , i32 *%ptr
  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i32 %i1, i32 *%base) {





  %ptr = getelementptr i32, i32 *%base, i64 1023
  %i2 = load i32 , i32 *%ptr
  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f4(double %a, double %b, i32 %i1, i32 *%base) {





  %ptr = getelementptr i32, i32 *%base, i64 1024
  %i2 = load i32 , i32 *%ptr
  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f5(double %a, double %b, i32 %i1, i32 *%base) {





  %ptr = getelementptr i32, i32 *%base, i64 131071
  %i2 = load i32 , i32 *%ptr
  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f6(double %a, double %b, i32 %i1, i32 *%base) {






  %ptr = getelementptr i32, i32 *%base, i64 131072
  %i2 = load i32 , i32 *%ptr
  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f7(double %a, double %b, i32 %i1, i32 *%base) {





  %ptr = getelementptr i32, i32 *%base, i64 -1
  %i2 = load i32 , i32 *%ptr
  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f8(double %a, double %b, i32 %i1, i32 *%base) {





  %ptr = getelementptr i32, i32 *%base, i64 -131072
  %i2 = load i32 , i32 *%ptr
  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f9(double %a, double %b, i32 %i1, i32 *%base) {






  %ptr = getelementptr i32, i32 *%base, i64 -131073
  %i2 = load i32 , i32 *%ptr
  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f10(double %a, double %b, i32 %i1, i64 %base, i64 %index) {





  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4092
  %ptr = inttoptr i64 %add2 to i32 *
  %i2 = load i32 , i32 *%ptr
  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f11(double %a, double %b, i32 %i1, i64 %base, i64 %index) {





  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i32 *
  %i2 = load i32 , i32 *%ptr
  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f12(double %a, double %b, i32 %i2, i32 *%ptr) {





  %i1 = load i32 , i32 *%ptr
  %cond = icmp ult i32 %i1, %i2
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
