






define float @select_fcmp_oeq_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp oeq float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_oeq_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp oeq double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_fcmp_ogt_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp ogt float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_ogt_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp ogt double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_fcmp_oge_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp oge float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_oge_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp oge double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_fcmp_olt_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp olt float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_olt_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp olt double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_fcmp_ole_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp ole float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_ole_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp ole double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_fcmp_ord_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp ord float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_ord_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp ord double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_fcmp_uno_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp uno float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_uno_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp uno double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_fcmp_ugt_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp ugt float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_ugt_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp ugt double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_fcmp_uge_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp uge float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_uge_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp uge double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_fcmp_ult_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp ult float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_ult_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp ult double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_fcmp_ule_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp ule float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_ule_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp ule double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

define float @select_fcmp_une_f32(float %a, float %b, float %c, float %d) {








  %1 = fcmp une float %a, %b
  %2 = select i1 %1, float %c, float %d
  ret float %2
}

define double @select_fcmp_une_f64(double %a, double %b, double %c, double %d) {








  %1 = fcmp une double %a, %b
  %2 = select i1 %1, double %c, double %d
  ret double %2
}

