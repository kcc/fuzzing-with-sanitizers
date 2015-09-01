










define double @load_double_no_fold(double %x, double %y) {














  %cmp = fcmp oge double %x, %y
  %zext = zext i1 %cmp to i32
  %conv = sitofp i32 %zext to double
  ret double %conv
}

define float @load_float_no_fold(float %x, float %y) {














  %cmp = fcmp oge float %x, %y
  %zext = zext i1 %cmp to i32
  %conv = sitofp i32 %zext to float
  ret float %conv
}

