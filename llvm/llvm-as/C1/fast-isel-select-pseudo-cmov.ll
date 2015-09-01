





define float @select_fcmp_one_f32(float %a, float %b, float %c, float %d) {





  %1 = fcmp one float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_one_f64(double %a, double %b, double %c, double %d) {





  %1 = fcmp one double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_icmp_eq_f32(i64 %a, i64 %b, float %c, float %d) {





  %1 = icmp eq i64 %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define float @select_icmp_ne_f32(i64 %a, i64 %b, float %c, float %d) {





  %1 = icmp ne i64 %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define float @select_icmp_ugt_f32(i64 %a, i64 %b, float %c, float %d) {





  %1 = icmp ugt i64 %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define float @select_icmp_uge_f32(i64 %a, i64 %b, float %c, float %d) {





  %1 = icmp uge i64 %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define float @select_icmp_ult_f32(i64 %a, i64 %b, float %c, float %d) {





  %1 = icmp ult i64 %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define float @select_icmp_ule_f32(i64 %a, i64 %b, float %c, float %d) {





  %1 = icmp ule i64 %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define float @select_icmp_sgt_f32(i64 %a, i64 %b, float %c, float %d) {





  %1 = icmp sgt i64 %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define float @select_icmp_sge_f32(i64 %a, i64 %b, float %c, float %d) {





  %1 = icmp sge i64 %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define float @select_icmp_slt_f32(i64 %a, i64 %b, float %c, float %d) {





  %1 = icmp slt i64 %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define float @select_icmp_sle_f32(i64 %a, i64 %b, float %c, float %d) {





  %1 = icmp sle i64 %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

