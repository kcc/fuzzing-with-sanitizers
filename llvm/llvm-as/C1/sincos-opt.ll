







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

define x86_fp80 @test3(x86_fp80 %x) nounwind {
entry:




  %call = tail call x86_fp80 @sinl(x86_fp80 %x) nounwind
  %call1 = tail call x86_fp80 @cosl(x86_fp80 %x) nounwind
  %add = fadd x86_fp80 %call, %call1
  ret x86_fp80 %add
}

declare float  @sinf(float) readonly
declare double @sin(double) readonly
declare float @cosf(float) readonly
declare double @cos(double) readonly

declare x86_fp80 @sinl(x86_fp80)
declare x86_fp80 @cosl(x86_fp80)
