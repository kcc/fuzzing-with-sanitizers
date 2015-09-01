




define double @f1(double %a, double %b, i16 *%ptr) {





  %val = load i16 , i16 *%ptr
  %cond = icmp eq i16 %val, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i16 *%ptr) {





  %val = load i16 , i16 *%ptr
  %cond = icmp eq i16 %val, 65535
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i16 *%ptr) {





  %val = load i16 , i16 *%ptr
  %cond = icmp eq i16 %val, -32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f4(double %a, double %b, i16 *%ptr) {





  %val = load i16 , i16 *%ptr
  %cond = icmp eq i16 %val, 32767
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
