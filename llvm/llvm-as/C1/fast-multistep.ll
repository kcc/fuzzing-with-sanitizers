

define float @fmultistep1(float %a, float %b, float %c) {







  %t0 = fmul fast float %a, %b
  %t1 = fmul fast float %a, %t0 
  %t2 = fmul fast float %a, %c
  %t3 = fmul fast float %a, %t2 
  %t4 = fadd fast float %t1, %t3
  ret float %t4
}

define float @fmultistep2(float %a, float %b, float %c, float %d) {







  %t0 = fmul fast float %a, %b
  %t1 = fmul fast float %a, %c
  %t2 = fadd fast float %t1, %d 
  %t3 = fadd fast float %t0, %t2 
  ret float %t3
}
