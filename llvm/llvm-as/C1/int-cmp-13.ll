




define double @f1(double %a, double %b, i64 %i1) {




  %cond = icmp eq i64 %i1, 0
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f2(double %a, double %b, i64 %i1) {




  %cond = icmp eq i64 %i1, 127
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f3(double %a, double %b, i64 %i1) {





  %cond = icmp eq i64 %i1, 128
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f4(double %a, double %b, i64 %i1) {





  %cond = icmp eq i64 %i1, 32767
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f5(double %a, double %b, i64 %i1) {





  %cond = icmp eq i64 %i1, 32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f6(double %a, double %b, i64 %i1) {





  %cond = icmp eq i64 %i1, 2147483647
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f7(double %a, double %b, i64 %i1) {





  %cond = icmp eq i64 %i1, 2147483648
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f8(double %a, double %b, i64 %i1) {





  %cond = icmp eq i64 %i1, 4294967295
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f9(double %a, double %b, i64 %i1) {




  %cond = icmp eq i64 %i1, 4294967296
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f10(double %a, double %b, i64 %i1) {




  %cond = icmp eq i64 %i1, -1
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f11(double %a, double %b, i64 %i1) {




  %cond = icmp eq i64 %i1, -128
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f12(double %a, double %b, i64 %i1) {





  %cond = icmp eq i64 %i1, -129
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f13(double %a, double %b, i64 %i1) {





  %cond = icmp eq i64 %i1, -32768
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f14(double %a, double %b, i64 %i1) {





  %cond = icmp eq i64 %i1, -32769
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f15(double %a, double %b, i64 %i1) {





  %cond = icmp eq i64 %i1, -2147483648
  %res = select i1 %cond, double %a, double %b
  ret double %res
}


define double @f16(double %a, double %b, i64 %i1) {




  %cond = icmp eq i64 %i1, -2147483649
  %res = select i1 %cond, double %a, double %b
  ret double %res
}
