



define float @float_in_reg(float %a, float %b) {
entry:




  ret float %b
}

define double @double_in_reg(double %a, double %b) {
entry:







  ret double %b
}

define float @float_on_stack(double %a, double %b, double %c, double %d, double %e, double %f, double %g, double %h, float %i) {




  ret float %i
}

define double @double_on_stack(double %a, double %b, double %c, double %d, double %e, double %f, double %g, double %h, double %i) {




  ret double %i
}

define double @double_not_split(double %a, double %b, double %c, double %d, double %e, double %f, double %g, float %h, double %i) {




  ret double %i
}
