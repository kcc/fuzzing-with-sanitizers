






declare float     @llvm.sqrt.f32(float %Val)
define float @sqrt_f(float %a) {



  %1 = call float @llvm.sqrt.f32(float %a)
  ret float %1
}

declare float     @llvm.powi.f32(float %Val, i32 %power)
define float @powi_f(float %a, i32 %b) {



  %1 = call float @llvm.powi.f32(float %a, i32 %b)
  ret float %1
}

declare float     @llvm.sin.f32(float %Val)
define float @sin_f(float %a) {



  %1 = call float @llvm.sin.f32(float %a)
  ret float %1
}

declare float     @llvm.cos.f32(float %Val)
define float @cos_f(float %a) {



  %1 = call float @llvm.cos.f32(float %a)
  ret float %1
}

declare float     @llvm.pow.f32(float %Val, float %power)
define float @pow_f(float %a, float %b) {



  %1 = call float @llvm.pow.f32(float %a, float %b)
  ret float %1
}

declare float     @llvm.exp.f32(float %Val)
define float @exp_f(float %a) {



  %1 = call float @llvm.exp.f32(float %a)
  ret float %1
}

declare float     @llvm.exp2.f32(float %Val)
define float @exp2_f(float %a) {



  %1 = call float @llvm.exp2.f32(float %a)
  ret float %1
}

declare float     @llvm.log.f32(float %Val)
define float @log_f(float %a) {



  %1 = call float @llvm.log.f32(float %a)
  ret float %1
}

declare float     @llvm.log10.f32(float %Val)
define float @log10_f(float %a) {



  %1 = call float @llvm.log10.f32(float %a)
  ret float %1
}

declare float     @llvm.log2.f32(float %Val)
define float @log2_f(float %a) {



  %1 = call float @llvm.log2.f32(float %a)
  ret float %1
}

declare float     @llvm.fma.f32(float %a, float %b, float %c)
define float @fma_f(float %a, float %b, float %c) {



  %1 = call float @llvm.fma.f32(float %a, float %b, float %c)
  ret float %1
}

declare float     @llvm.fabs.f32(float %Val)
define float @abs_f(float %a) {



  %1 = call float @llvm.fabs.f32(float %a)
  ret float %1
}

declare float     @llvm.copysign.f32(float  %Mag, float  %Sgn)
define float @copysign_f(float %a, float %b) {









  %1 = call float @llvm.copysign.f32(float %a, float %b)
  ret float %1
}

declare float     @llvm.floor.f32(float %Val)
define float @floor_f(float %a) {




  %1 = call float @llvm.floor.f32(float %a)
  ret float %1
}

declare float     @llvm.ceil.f32(float %Val)
define float @ceil_f(float %a) {




  %1 = call float @llvm.ceil.f32(float %a)
  ret float %1
}

declare float     @llvm.trunc.f32(float %Val)
define float @trunc_f(float %a) {




  %1 = call float @llvm.trunc.f32(float %a)
  ret float %1
}

declare float     @llvm.rint.f32(float %Val)
define float @rint_f(float %a) {




  %1 = call float @llvm.rint.f32(float %a)
  ret float %1
}

declare float     @llvm.nearbyint.f32(float %Val)
define float @nearbyint_f(float %a) {




  %1 = call float @llvm.nearbyint.f32(float %a)
  ret float %1
}

declare float     @llvm.round.f32(float %Val)
define float @round_f(float %a) {




  %1 = call float @llvm.round.f32(float %a)
  ret float %1
}



declare float     @llvm.fmuladd.f32(float %a, float %b, float %c)
define float @fmuladd_f(float %a, float %b, float %c) {






  %1 = call float @llvm.fmuladd.f32(float %a, float %b, float %c)
  ret float %1
}

declare i16 @llvm.convert.to.fp16.f32(float %a)
define i16 @f_to_h(float %a) {



  %1 = call i16 @llvm.convert.to.fp16.f32(float %a)
  ret i16 %1
}

declare float @llvm.convert.from.fp16.f32(i16 %a)
define float @h_to_f(i16 %a) {



  %1 = call float @llvm.convert.from.fp16.f32(i16 %a)
  ret float %1
}
