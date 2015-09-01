


define i1 @fcmp_float1(float %a) nounwind ssp {
entry:



  %cmp = fcmp une float %a, 0.000000e+00
  ret i1 %cmp
}

define i1 @fcmp_float2(float %a, float %b) nounwind ssp {
entry:



  %cmp = fcmp une float %a, %b
  ret i1 %cmp
}

define i1 @fcmp_double1(double %a) nounwind ssp {
entry:



  %cmp = fcmp une double %a, 0.000000e+00
  ret i1 %cmp
}

define i1 @fcmp_double2(double %a, double %b) nounwind ssp {
entry:



  %cmp = fcmp une double %a, %b
  ret i1 %cmp
}


define float @fcmp_oeq(float %a, float %b) nounwind ssp {






  %cmp = fcmp oeq float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}

define float @fcmp_ogt(float %a, float %b) nounwind ssp {






  %cmp = fcmp ogt float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}

define float @fcmp_oge(float %a, float %b) nounwind ssp {






  %cmp = fcmp oge float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}

define float @fcmp_olt(float %a, float %b) nounwind ssp {






  %cmp = fcmp olt float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}

define float @fcmp_ole(float %a, float %b) nounwind ssp {






  %cmp = fcmp ole float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}

define float @fcmp_ord(float %a, float %b) nounwind ssp {





  %cmp = fcmp ord float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}

define float @fcmp_uno(float %a, float %b) nounwind ssp {





  %cmp = fcmp uno float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}

define float @fcmp_ugt(float %a, float %b) nounwind ssp {





  %cmp = fcmp ugt float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}

define float @fcmp_uge(float %a, float %b) nounwind ssp {





  %cmp = fcmp uge float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}

define float @fcmp_ult(float %a, float %b) nounwind ssp {





  %cmp = fcmp ult float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}

define float @fcmp_ule(float %a, float %b) nounwind ssp {





  %cmp = fcmp ule float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}

define float @fcmp_une(float %a, float %b) nounwind ssp {





  %cmp = fcmp une float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}



define float @fcmp_one(float %a, float %b) nounwind ssp {






  %cmp = fcmp one float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}



define float @fcmp_ueq(float %a, float %b) nounwind ssp {






  %cmp = fcmp ueq float %a, %b
  %conv = uitofp i1 %cmp to float
  ret float %conv
}
