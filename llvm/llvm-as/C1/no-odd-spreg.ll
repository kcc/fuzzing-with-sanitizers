











define float @two_floats(float %a) {
entry:
  
  
  
  
  
  
  

  %0 = fadd float %a, 1.0
  call void asm "# Clobber", "~{$f0},~{$f1},~{$f2},~{$f3},~{$f4},~{$f5},~{$f6},~{$f7},~{$f8},~{$f9},~{$f10},~{$f11},~{$f14},~{$f15},~{$f16},~{$f17},~{$f18},~{$f19},~{$f20},~{$f21},~{$f22},~{$f23},~{$f24},~{$f25},~{$f26},~{$f27},~{$f28},~{$f29},~{$f30},~{$f31}"()
  %1 = fadd float %a, %0
  ret float %1
}












define double @two_doubles(double %a) {
entry:
  
  
  
  

  %0 = fadd double %a, 1.0
  call void asm "# Clobber", "~{$f0},~{$f1},~{$f2},~{$f3},~{$f4},~{$f5},~{$f6},~{$f7},~{$f8},~{$f9},~{$f10},~{$f11},~{$f14},~{$f15},~{$f16},~{$f17},~{$f18},~{$f19},~{$f20},~{$f21},~{$f22},~{$f23},~{$f24},~{$f25},~{$f26},~{$f27},~{$f28},~{$f29},~{$f30},~{$f31}"()
  %1 = fadd double %a, %0
  ret double %1
}







