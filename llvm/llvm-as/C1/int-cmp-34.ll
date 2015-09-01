




define double @f1(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp slt i64 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp slt i64 %val, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp slt i64 %val, 32767
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f4(double %a, double %b, i64 *%ptr) {



  %val = load i64 , i64 *%ptr
  %cond = icmp slt i64 %val, 32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f5(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp slt i64 %val, -1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f6(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp slt i64 %val, -32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f7(double %a, double %b, i64 *%ptr) {



  %val = load i64 , i64 *%ptr
  %cond = icmp slt i64 %val, -32769
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f8(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp eq i64 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f9(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp eq i64 %val, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f10(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp eq i64 %val, 32767
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f11(double %a, double %b, i64 *%ptr) {



  %val = load i64 , i64 *%ptr
  %cond = icmp eq i64 %val, 32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f12(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp eq i64 %val, -1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f13(double %a, double %b, i64 *%ptr) {





  %val = load i64 , i64 *%ptr
  %cond = icmp eq i64 %val, -32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f14(double %a, double %b, i64 *%ptr) {



  %val = load i64 , i64 *%ptr
  %cond = icmp eq i64 %val, -32769
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f15(double %a, double %b, i64 %i1, i64 *%base) {





  %ptr = getelementptr i64, i64 *%base, i64 511
  %val = load i64 , i64 *%ptr
  %cond = icmp slt i64 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f16(double %a, double %b, i64 *%base) {






  %ptr = getelementptr i64, i64 *%base, i64 512
  %val = load i64 , i64 *%ptr
  %cond = icmp slt i64 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f17(double %a, double %b, i64 *%base) {






  %ptr = getelementptr i64, i64 *%base, i64 -1
  %val = load i64 , i64 *%ptr
  %cond = icmp slt i64 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f18(double %a, double %b, i64 %base, i64 %index) {






  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i64 *
  %val = load i64 , i64 *%ptr
  %cond = icmp slt i64 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
