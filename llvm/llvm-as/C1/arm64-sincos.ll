





define float @test1(float %x) nounwind {
entry:








  %call = tail call float @sinf(float %x) nounwind readnone
  %call1 = tail call float @cosf(float %x) nounwind readnone
  %add = fadd float %call, %call1
  ret float %add
}

define double @test2(double %x) nounwind {
entry:








  %call = tail call double @sin(double %x) nounwind readnone
  %call1 = tail call double @cos(double %x) nounwind readnone
  %add = fadd double %call, %call1
  ret double %add
}

declare float  @sinf(float) readonly
declare double @sin(double) readonly
declare float @cosf(float) readonly
declare double @cos(double) readonly
