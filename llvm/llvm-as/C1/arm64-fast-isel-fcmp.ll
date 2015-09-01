

define zeroext i1 @fcmp_float1(float %a) {



  %1 = fcmp une float %a, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_float2(float %a, float %b) {



  %1 = fcmp une float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_double1(double %a) {



  %1 = fcmp une double %a, 0.000000e+00
  ret i1 %1
}

define zeroext i1 @fcmp_double2(double %a, double %b) {



  %1 = fcmp une double %a, %b
  ret i1 %1
}


define zeroext i1 @fcmp_false(float %a) {


  %1 = fcmp ogt float %a, %a
  ret i1 %1
}

define zeroext i1 @fcmp_oeq(float %a, float %b) {



  %1 = fcmp oeq float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_ogt(float %a, float %b) {



  %1 = fcmp ogt float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_oge(float %a, float %b) {



  %1 = fcmp oge float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_olt(float %a, float %b) {



  %1 = fcmp olt float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_ole(float %a, float %b) {



  %1 = fcmp ole float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_one(float %a, float %b) {




  %1 = fcmp one float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_ord(float %a, float %b) {



  %1 = fcmp ord float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_uno(float %a, float %b) {



  %1 = fcmp uno float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_ueq(float %a, float %b) {




  %1 = fcmp ueq float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_ugt(float %a, float %b) {



  %1 = fcmp ugt float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_uge(float %a, float %b) {



  %1 = fcmp uge float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_ult(float %a, float %b) {



  %1 = fcmp ult float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_ule(float %a, float %b) {



  %1 = fcmp ule float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_une(float %a, float %b) {



  %1 = fcmp une float %a, %b
  ret i1 %1
}

define zeroext i1 @fcmp_true(float %a) {


  %1 = fcmp ueq float %a, %a
  ret i1 %1
}
