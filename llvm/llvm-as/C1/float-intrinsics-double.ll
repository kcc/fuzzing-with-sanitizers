






declare double     @llvm.sqrt.f64(double %Val)
define double @sqrt_d(double %a) {



  %1 = call double @llvm.sqrt.f64(double %a)
  ret double %1
}

declare double     @llvm.powi.f64(double %Val, i32 %power)
define double @powi_d(double %a, i32 %b) {



  %1 = call double @llvm.powi.f64(double %a, i32 %b)
  ret double %1
}

declare double     @llvm.sin.f64(double %Val)
define double @sin_d(double %a) {



  %1 = call double @llvm.sin.f64(double %a)
  ret double %1
}

declare double     @llvm.cos.f64(double %Val)
define double @cos_d(double %a) {



  %1 = call double @llvm.cos.f64(double %a)
  ret double %1
}

declare double     @llvm.pow.f64(double %Val, double %power)
define double @pow_d(double %a, double %b) {



  %1 = call double @llvm.pow.f64(double %a, double %b)
  ret double %1
}

declare double     @llvm.exp.f64(double %Val)
define double @exp_d(double %a) {



  %1 = call double @llvm.exp.f64(double %a)
  ret double %1
}

declare double     @llvm.exp2.f64(double %Val)
define double @exp2_d(double %a) {



  %1 = call double @llvm.exp2.f64(double %a)
  ret double %1
}

declare double     @llvm.log.f64(double %Val)
define double @log_d(double %a) {



  %1 = call double @llvm.log.f64(double %a)
  ret double %1
}

declare double     @llvm.log10.f64(double %Val)
define double @log10_d(double %a) {



  %1 = call double @llvm.log10.f64(double %a)
  ret double %1
}

declare double     @llvm.log2.f64(double %Val)
define double @log2_d(double %a) {



  %1 = call double @llvm.log2.f64(double %a)
  ret double %1
}

declare double     @llvm.fma.f64(double %a, double %b, double %c)
define double @fma_d(double %a, double %b, double %c) {



  %1 = call double @llvm.fma.f64(double %a, double %b, double %c)
  ret double %1
}


declare double     @llvm.fabs.f64(double %Val)
define double @abs_d(double %a) {





  %1 = call double @llvm.fabs.f64(double %a)
  ret double %1
}

declare double     @llvm.copysign.f64(double  %Mag, double  %Sgn)
define double @copysign_d(double %a, double %b) {








  %1 = call double @llvm.copysign.f64(double %a, double %b)
  ret double %1
}

declare double     @llvm.floor.f64(double %Val)
define double @floor_d(double %a) {




  %1 = call double @llvm.floor.f64(double %a)
  ret double %1
}

declare double     @llvm.ceil.f64(double %Val)
define double @ceil_d(double %a) {




  %1 = call double @llvm.ceil.f64(double %a)
  ret double %1
}

declare double     @llvm.trunc.f64(double %Val)
define double @trunc_d(double %a) {




  %1 = call double @llvm.trunc.f64(double %a)
  ret double %1
}

declare double     @llvm.rint.f64(double %Val)
define double @rint_d(double %a) {




  %1 = call double @llvm.rint.f64(double %a)
  ret double %1
}

declare double     @llvm.nearbyint.f64(double %Val)
define double @nearbyint_d(double %a) {




  %1 = call double @llvm.nearbyint.f64(double %a)
  ret double %1
}

declare double     @llvm.round.f64(double %Val)
define double @round_d(double %a) {




  %1 = call double @llvm.round.f64(double %a)
  ret double %1
}

declare double     @llvm.fmuladd.f64(double %a, double %b, double %c)
define double @fmuladd_d(double %a, double %b, double %c) {






  %1 = call double @llvm.fmuladd.f64(double %a, double %b, double %c)
  ret double %1
}

declare i16 @llvm.convert.to.fp16.f64(double %a)
define i16 @d_to_h(double %a) {




  %1 = call i16 @llvm.convert.to.fp16.f64(double %a)
  ret i16 %1
}

declare double @llvm.convert.from.fp16.f64(i16 %a)
define double @h_to_d(i16 %a) {








  %1 = call double @llvm.convert.from.fp16.f64(i16 %a)
  ret double %1
}
