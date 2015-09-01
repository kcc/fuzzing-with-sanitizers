




declare { i64, i64, i64, i64 } @bar1()

define i64 @f1() {




  %mret = call { i64, i64, i64, i64 } @bar1()
  %ret = extractvalue { i64, i64, i64, i64 } %mret, 3
  ret i64 %ret
}


declare { i64, i64, i64, i64, i64 } @bar2()

define i64 @f2() {





  %mret = call { i64, i64, i64, i64, i64 } @bar2()
  %ret = extractvalue { i64, i64, i64, i64, i64 } %mret, 4
  ret i64 %ret
}


declare { double, double, double, double } @bar3()

define double @f3() {




  %mret = call { double, double, double, double } @bar3()
  %ret = extractvalue { double, double, double, double } %mret, 3
  ret double %ret
}


declare { double, double, double, double, double } @bar4()

define double @f4() {





  %mret = call { double, double, double, double, double } @bar4()
  %ret = extractvalue { double, double, double, double, double } %mret, 4
  ret double %ret
}
