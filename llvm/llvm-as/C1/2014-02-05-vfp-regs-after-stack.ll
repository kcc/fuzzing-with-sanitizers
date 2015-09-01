

target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv8-none--eabi"


define arm_aapcs_vfpcc float @fn1(double %a, double %b, double %c, double %d, double %e, double %f, double %g, float %h, double %i, float %j) {
  ret float %j

}


define arm_aapcs_vfpcc float @fn2(double %a, double %b, double %c, double %d, double %e, double %f, float %h, <4 x float> %i, float %j) {
  ret float %j

}


define arm_aapcs_vfpcc float @fn3(float %a, double %b, double %c, double %d, double %e, double %f, double %g, double %h, double %i, float %j) #0 {
  ret float %j

}
