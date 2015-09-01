



define double @int_to_double_rr(i32 %a) {




entry:
  %0 = sitofp i32 %a to double
  ret double %0
}

define double @int_to_double_rm(i32* %a) {




entry:
  %0 = load i32, i32* %a
  %1 = sitofp i32 %0 to double
  ret double %1
}

define float @int_to_float_rr(i32 %a) {




entry:
  %0 = sitofp i32 %a to float
  ret float %0
}

define float @int_to_float_rm(i32* %a) {




entry:
  %0 = load i32, i32* %a
  %1 = sitofp i32 %0 to float
  ret float %1
}
