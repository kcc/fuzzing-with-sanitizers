


define float @fmin_ole(float %x) nounwind {


  %cond = fcmp ole float 1.0, %x
  %min1 = select i1 %cond, float 1.0, float %x
  ret float %min1
}

define float @fmin_ole_zero(float %x) nounwind {


  %cond = fcmp ole float 0.0, %x
  %min1 = select i1 %cond, float 0.0, float %x
  ret float %min1
}

define float @fmin_ult(float %x) nounwind {


  %cond = fcmp ult float %x, 1.0
  %min1 = select i1 %cond, float %x, float 1.0
  ret float %min1
}

define float @fmax_ogt(float %x) nounwind {


  %cond = fcmp ogt float 1.0, %x
  %max1 = select i1 %cond, float 1.0, float %x
  ret float %max1
}

define float @fmax_uge(float %x) nounwind {


  %cond = fcmp uge float %x, 1.0
  %max1 = select i1 %cond, float %x, float 1.0
  ret float %max1
}

define float @fmax_uge_zero(float %x) nounwind {


  %cond = fcmp uge float %x, 0.0
  %max1 = select i1 %cond, float %x, float 0.0
  ret float %max1
}

define float @fmax_olt_reverse(float %x) nounwind {


  %cond = fcmp olt float %x, 1.0
  %max1 = select i1 %cond, float 1.0, float %x
  ret float %max1
}

define float @fmax_ule_reverse(float %x) nounwind {


  %cond = fcmp ult float 1.0, %x
  %max1 = select i1 %cond, float %x, float 1.0
  ret float %max1
}

define float @fmin_oge_reverse(float %x) nounwind {


  %cond = fcmp oge float %x, 1.0
  %min1 = select i1 %cond, float 1.0, float %x
  ret float %min1
}

define float @fmin_ugt_reverse(float %x) nounwind {


  %cond = fcmp ugt float 1.0, %x
  %min1 = select i1 %cond, float %x, float 1.0
  ret float %min1
}
