




define double @f1(double %a, double %b, i16 *%ptr) {





  %val = load i16 , i16 *%ptr
  %cond = icmp slt i16 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i16 *%ptr) {





  %val = load i16 , i16 *%ptr
  %cond = icmp slt i16 %val, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i16 *%ptr) {





  %val = load i16 , i16 *%ptr
  %cond = icmp slt i16 %val, 32766
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f4(double %a, double %b, i16 *%ptr) {





  %val = load i16 , i16 *%ptr
  %cond = icmp slt i16 %val, -1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f5(double %a, double %b, i16 *%ptr) {





  %val = load i16 , i16 *%ptr
  %cond = icmp slt i16 %val, -32766
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f6(double %a, double %b, i16 %i1, i16 *%base) {





  %ptr = getelementptr i16, i16 *%base, i64 2047
  %val = load i16 , i16 *%ptr
  %cond = icmp slt i16 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f7(double %a, double %b, i16 *%base) {






  %ptr = getelementptr i16, i16 *%base, i64 2048
  %val = load i16 , i16 *%ptr
  %cond = icmp slt i16 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f8(double %a, double %b, i16 *%base) {






  %ptr = getelementptr i16, i16 *%base, i64 -1
  %val = load i16 , i16 *%ptr
  %cond = icmp slt i16 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f9(double %a, double %b, i64 %base, i64 %index) {






  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i16 *
  %val = load i16 , i16 *%ptr
  %cond = icmp slt i16 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
