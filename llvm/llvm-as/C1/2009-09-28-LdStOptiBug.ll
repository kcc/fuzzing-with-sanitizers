


%0 = type { double, double }

define void @foo(%0* noalias nocapture sret %agg.result, double %x.0, double %y.0) nounwind {




  %x76 = fmul double %y.0, 0.000000e+00           
  %x77 = fadd double %y.0, 0.000000e+00           
  %tmpr = fadd double %x.0, %x76                  
  %agg.result.0 = getelementptr %0, %0* %agg.result, i32 0, i32 0 
  store double %tmpr, double* %agg.result.0, align 8
  %agg.result.1 = getelementptr %0, %0* %agg.result, i32 0, i32 1 
  store double %x77, double* %agg.result.1, align 8
  ret void
}
