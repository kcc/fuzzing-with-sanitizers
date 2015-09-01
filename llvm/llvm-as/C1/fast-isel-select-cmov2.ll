




define i64 @select_fcmp_false_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp false double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_oeq_cmov(double %a, double %b, i64 %c, i64 %d) {









  %1 = fcmp oeq double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_ogt_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp ogt double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_oge_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp oge double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_olt_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp olt double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_ole_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp ole double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_one_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp one double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_ord_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp ord double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_uno_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp uno double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_ueq_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp ueq double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_ugt_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp ugt double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_uge_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp uge double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_ult_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp ult double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_ule_cmov(double %a, double %b, i64 %c, i64 %d) {



  %1 = fcmp ule double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_une_cmov(double %a, double %b, i64 %c, i64 %d) {









  %1 = fcmp une double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_fcmp_true_cmov(double %a, double %b, i64 %c, i64 %d) {


  %1 = fcmp true double %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_icmp_eq_cmov(i64 %a, i64 %b, i64 %c, i64 %d) {




  %1 = icmp eq i64 %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_icmp_ne_cmov(i64 %a, i64 %b, i64 %c, i64 %d) {




  %1 = icmp ne i64 %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_icmp_ugt_cmov(i64 %a, i64 %b, i64 %c, i64 %d) {




  %1 = icmp ugt i64 %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}


define i64 @select_icmp_uge_cmov(i64 %a, i64 %b, i64 %c, i64 %d) {




  %1 = icmp uge i64 %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_icmp_ult_cmov(i64 %a, i64 %b, i64 %c, i64 %d) {




  %1 = icmp ult i64 %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_icmp_ule_cmov(i64 %a, i64 %b, i64 %c, i64 %d) {




  %1 = icmp ule i64 %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_icmp_sgt_cmov(i64 %a, i64 %b, i64 %c, i64 %d) {




  %1 = icmp sgt i64 %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_icmp_sge_cmov(i64 %a, i64 %b, i64 %c, i64 %d) {




  %1 = icmp sge i64 %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_icmp_slt_cmov(i64 %a, i64 %b, i64 %c, i64 %d) {




  %1 = icmp slt i64 %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

define i64 @select_icmp_sle_cmov(i64 %a, i64 %b, i64 %c, i64 %d) {




  %1 = icmp sle i64 %a, %b
  %2 = select i1 %1, i64 %c, i64 %d
  ret i64 %2
}

