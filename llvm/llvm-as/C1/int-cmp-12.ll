





define double @f1(double %a, double %b, i64 %i1) {




  %cond = icmp ugt i64 %i1, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i64 %i1) {




  %cond = icmp ult i64 %i1, 255
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i64 %i1) {





  %cond = icmp ult i64 %i1, 256
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f4(double %a, double %b, i64 %i1) {





  %cond = icmp ult i64 %i1, 4294967295
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f5(double %a, double %b, i64 %i1) {





  %cond = icmp ult i64 %i1, 4294967296
  %res = select i1 %cond, double %a, double %b
  ret double %res
}

define double @f6(double %a, double %b, i64 %i1) {




  %cond = icmp ult i64 %i1, 4294967297
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
