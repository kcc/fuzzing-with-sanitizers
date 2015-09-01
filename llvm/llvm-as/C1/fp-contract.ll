


target triple = "nvptx64-unknown-cuda"










define float @t0(float %a, float %b, float %c) {



  %v0 = fmul float %a, %b
  %v1 = fadd float %v0, %c
  ret float %v1
}



define float @t1(float %a, float %b) {




  %v1 = fadd float %a, %b
  ret float %v1
}
