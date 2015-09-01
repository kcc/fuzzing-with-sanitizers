





define double @f1(double %a, double %b, i32 *%ptr) {





  %val = load i32 , i32 *%ptr
  %cond = icmp ugt i32 %val, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i32 *%ptr) {





  %val = load i32 , i32 *%ptr
  %cond = icmp ult i32 %val, 65535
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i32 *%ptr) {



  %val = load i32 , i32 *%ptr
  %cond = icmp ult i32 %val, 65536
  %res = select i1 %cond, double %a, double %b
  ret double %res
}



define double @f4(double %a, double %b, i32 *%ptr) {





  %val = load i32 , i32 *%ptr
  %cond = icmp eq i32 %val, 32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f5(double %a, double %b, i32 *%ptr) {





  %val = load i32 , i32 *%ptr
  %cond = icmp eq i32 %val, 65535
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f6(double %a, double %b, i32 *%ptr) {



  %val = load i32 , i32 *%ptr
  %cond = icmp eq i32 %val, 65536
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f7(double %a, double %b, i32 %i1, i32 *%base) {





  %ptr = getelementptr i32, i32 *%base, i64 1023
  %val = load i32 , i32 *%ptr
  %cond = icmp ugt i32 %val, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f8(double %a, double %b, i32 *%base) {






  %ptr = getelementptr i32, i32 *%base, i64 1024
  %val = load i32 , i32 *%ptr
  %cond = icmp ugt i32 %val, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f9(double %a, double %b, i32 *%base) {






  %ptr = getelementptr i32, i32 *%base, i64 -1
  %val = load i32 , i32 *%ptr
  %cond = icmp ugt i32 %val, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f10(double %a, double %b, i64 %base, i64 %index) {






  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i32 *
  %val = load i32 , i32 *%ptr
  %cond = icmp ugt i32 %val, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
