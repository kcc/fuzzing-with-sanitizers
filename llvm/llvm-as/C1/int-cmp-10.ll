





define double @f1(double %a, double %b, i32 %i1) {




  %cond = icmp ugt i32 %i1, 1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i32 %i1) {




  %cond = icmp ult i32 %i1, 255
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i32 %i1) {





  %cond = icmp ult i32 %i1, 256
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f4(double %a, double %b, i32 %i1) {





  %cond = icmp ult i32 %i1, 4294967280
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
