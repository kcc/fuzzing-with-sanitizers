

declare void @callee(double* %callee_arg)
declare void @nocap_callee(double* nocapture %nocap_callee_arg)

declare double* @normal_returner()
declare noalias double* @noalias_returner()

define void @caller_a(double* %arg_a0,
                      double* %arg_a1,
                      double* noalias %noalias_arg_a0,
                      double* noalias %noalias_arg_a1,
                      double** %indirect_a0,
                      double** %indirect_a1) {
  %escape_alloca_a0 = alloca double
  %escape_alloca_a1 = alloca double
  %noescape_alloca_a0 = alloca double
  %noescape_alloca_a1 = alloca double

  %normal_ret_a0 = call double* @normal_returner()
  %normal_ret_a1 = call double* @normal_returner()
  %noalias_ret_a0 = call double* @noalias_returner()
  %noalias_ret_a1 = call double* @noalias_returner()

  %loaded_a0 = load double*, double** %indirect_a0
  %loaded_a1 = load double*, double** %indirect_a1

  call void @callee(double* %escape_alloca_a0)
  call void @callee(double* %escape_alloca_a1)
  call void @nocap_callee(double* %noescape_alloca_a0)
  call void @nocap_callee(double* %noescape_alloca_a1)

  store double 0.0, double* %loaded_a0
  store double 0.0, double* %loaded_a1
  store double 0.0, double* %arg_a0
  store double 0.0, double* %arg_a1
  store double 0.0, double* %noalias_arg_a0
  store double 0.0, double* %noalias_arg_a1
  store double 0.0, double* %escape_alloca_a0
  store double 0.0, double* %escape_alloca_a1
  store double 0.0, double* %noescape_alloca_a0
  store double 0.0, double* %noescape_alloca_a1
  store double 0.0, double* %normal_ret_a0
  store double 0.0, double* %normal_ret_a1
  store double 0.0, double* %noalias_ret_a0
  store double 0.0, double* %noalias_ret_a1
  ret void
}







































































































































































































































































