





define float @t1(float %acc, float %a, float %b) {
entry:









	%0 = fmul float %a, %b
        %1 = fadd float %acc, %0
	ret float %1
}

define double @t2(double %acc, double %a, double %b) {
entry:









	%0 = fmul double %a, %b
        %1 = fadd double %acc, %0
	ret double %1
}

define float @t3(float %acc, float %a, float %b) {
entry:









	%0 = fmul float %a, %b
        %1 = fadd float %0, %acc
	ret float %1
}



define void @t4(float %acc1, float %a, float %b, float %acc2, float %c, float* %P1, float* %P2) {
entry:














  %0 = fmul float %a, %b
  %1 = fadd float %acc1, %0
  %2 = fmul float %a, %c
  %3 = fadd float %acc2, %2
  store float %1, float* %P1
  store float %3, float* %P2
  ret void
}

define float @t5(float %a, float %b, float %c, float %d, float %e) {
entry:















  %0 = fmul float %a, %b
  %1 = fadd float %e, %0
  %2 = fmul float %c, %d
  %3 = fadd float %1, %2
  ret float %3
}
