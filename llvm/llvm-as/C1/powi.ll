


define double @pow_wrapper(double %a) nounwind readonly ssp noredzone {











  %ret = tail call double @llvm.powi.f64(double %a, i32 15) nounwind 
  ret double %ret
}

define double @pow_wrapper_optsize(double %a) optsize {




  %ret = tail call double @llvm.powi.f64(double %a, i32 15) nounwind 
  ret double %ret
}

define double @pow_wrapper_minsize(double %a) minsize {




  %ret = tail call double @llvm.powi.f64(double %a, i32 15) nounwind 
  ret double %ret
}

declare double @llvm.powi.f64(double, i32) nounwind readonly

