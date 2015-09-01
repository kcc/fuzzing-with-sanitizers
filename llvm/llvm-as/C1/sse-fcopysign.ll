






define float @tst1(float %a, float %b) {














  %tmp = tail call float @copysignf( float %b, float %a )
  ret float %tmp
}

define double @tst2(double %a, float %b, float %c) {















  %tmp1 = fadd float %b, %c
  %tmp2 = fpext float %tmp1 to double
  %tmp = tail call double @copysign( double %a, double %tmp2 )
  ret double %tmp
}

declare float @copysignf(float, float)
declare double @copysign(double, double)





define float @int1(float %a, float %b) {
















  %tmp = tail call float @llvm.copysign.f32( float %b, float %a )
  ret float %tmp
}

define double @int2(double %a, float %b, float %c) {





















  %tmp1 = fadd float %b, %c
  %tmp2 = fpext float %tmp1 to double
  %tmp = tail call double @llvm.copysign.f64( double %a, double %tmp2 )
  ret double %tmp
}

define float @cst1() {








  %tmp = tail call float @llvm.copysign.f32( float 1.0, float -2.0 )
  ret float %tmp
}

define double @cst2() {








  %tmp1 = fadd float -1.0, -1.0
  %tmp2 = fpext float %tmp1 to double
  %tmp = tail call double @llvm.copysign.f64( double 0.0, double %tmp2 )
  ret double %tmp
}

declare float     @llvm.copysign.f32(float  %Mag, float  %Sgn)
declare double    @llvm.copysign.f64(double %Mag, double %Sgn)
