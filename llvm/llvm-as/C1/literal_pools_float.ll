




@varfloat = global float 0.0
@vardouble = global double 0.0

define void @floating_lits() {


  %floatval = load float, float* @varfloat
  %newfloat = fadd float %floatval, 128.0













  store float %newfloat, float* @varfloat

  %doubleval = load double, double* @vardouble
  %newdouble = fadd double %doubleval, 129.0












  store double %newdouble, double* @vardouble

  ret void
}
