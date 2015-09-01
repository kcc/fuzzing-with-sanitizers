






define i1 @cmp_f_false(float %a, float %b) {



  %1 = fcmp false float %a, %b
  ret i1 %1
}
define i1 @cmp_f_oeq(float %a, float %b) {




  %1 = fcmp oeq float %a, %b
  ret i1 %1
}
define i1 @cmp_f_ogt(float %a, float %b) {




  %1 = fcmp ogt float %a, %b
  ret i1 %1
}
define i1 @cmp_f_oge(float %a, float %b) {




  %1 = fcmp oge float %a, %b
  ret i1 %1
}
define i1 @cmp_f_olt(float %a, float %b) {




  %1 = fcmp olt float %a, %b
  ret i1 %1
}
define i1 @cmp_f_ole(float %a, float %b) {




  %1 = fcmp ole float %a, %b
  ret i1 %1
}
define i1 @cmp_f_one(float %a, float %b) {






  %1 = fcmp one float %a, %b
  ret i1 %1
}
define i1 @cmp_f_ord(float %a, float %b) {




  %1 = fcmp ord float %a, %b
  ret i1 %1
}define i1 @cmp_f_ueq(float %a, float %b) {






  %1 = fcmp ueq float %a, %b
  ret i1 %1
}
define i1 @cmp_f_ugt(float %a, float %b) {






  %1 = fcmp ugt float %a, %b
  ret i1 %1
}
define i1 @cmp_f_uge(float %a, float %b) {






  %1 = fcmp uge float %a, %b
  ret i1 %1
}
define i1 @cmp_f_ult(float %a, float %b) {






  %1 = fcmp ult float %a, %b
  ret i1 %1
}
define i1 @cmp_f_ule(float %a, float %b) {






  %1 = fcmp ule float %a, %b
  ret i1 %1
}
define i1 @cmp_f_une(float %a, float %b) {




  %1 = fcmp une float %a, %b
  ret i1 %1
}
define i1 @cmp_f_uno(float %a, float %b) {




  %1 = fcmp uno float %a, %b
  ret i1 %1
}
define i1 @cmp_f_true(float %a, float %b) {



  %1 = fcmp true float %a, %b
  ret i1 %1
}

define i1 @cmp_d_false(double %a, double %b) {



  %1 = fcmp false double %a, %b
  ret i1 %1
}
define i1 @cmp_d_oeq(double %a, double %b) {





  %1 = fcmp oeq double %a, %b
  ret i1 %1
}
define i1 @cmp_d_ogt(double %a, double %b) {





  %1 = fcmp ogt double %a, %b
  ret i1 %1
}
define i1 @cmp_d_oge(double %a, double %b) {





  %1 = fcmp oge double %a, %b
  ret i1 %1
}
define i1 @cmp_d_olt(double %a, double %b) {





  %1 = fcmp olt double %a, %b
  ret i1 %1
}
define i1 @cmp_d_ole(double %a, double %b) {





  %1 = fcmp ole double %a, %b
  ret i1 %1
}
define i1 @cmp_d_one(double %a, double %b) {








  %1 = fcmp one double %a, %b
  ret i1 %1
}
define i1 @cmp_d_ord(double %a, double %b) {





  %1 = fcmp ord double %a, %b
  ret i1 %1
}
define i1 @cmp_d_ugt(double %a, double %b) {





  %1 = fcmp ugt double %a, %b
  ret i1 %1
}

define i1 @cmp_d_ult(double %a, double %b) {





  %1 = fcmp ult double %a, %b
  ret i1 %1
}


define i1 @cmp_d_uno(double %a, double %b) {





  %1 = fcmp uno double %a, %b
  ret i1 %1
}
define i1 @cmp_d_true(double %a, double %b) {



  %1 = fcmp true double %a, %b
  ret i1 %1
}
define i1 @cmp_d_ueq(double %a, double %b) {








  %1 = fcmp ueq double %a, %b
  ret i1 %1
}

define i1 @cmp_d_uge(double %a, double %b) {





  %1 = fcmp uge double %a, %b
  ret i1 %1
}

define i1 @cmp_d_ule(double %a, double %b) {





  %1 = fcmp ule double %a, %b
  ret i1 %1
}

define i1 @cmp_d_une(double %a, double %b) {





  %1 = fcmp une double %a, %b
  ret i1 %1
}
