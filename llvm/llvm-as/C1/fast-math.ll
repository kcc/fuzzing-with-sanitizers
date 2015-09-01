


declare float @llvm.nvvm.sqrt.f(float)





define float @sqrt_div(float %a, float %b) {
  %t1 = tail call float @llvm.nvvm.sqrt.f(float %a)
  %t2 = fdiv float %t1, %b
  ret float %t2
}




define float @sqrt_div_fast(float %a, float %b) #0 {
  %t1 = tail call float @llvm.nvvm.sqrt.f(float %a)
  %t2 = fdiv float %t1, %b
  ret float %t2
}




define float @fadd(float %a, float %b) {
  %t1 = fadd float %a, %b
  ret float %t1
}



define float @fadd_ftz(float %a, float %b) #1 {
  %t1 = fadd float %a, %b
  ret float %t1
}



attributes #0 = { "unsafe-fp-math" = "true" }
attributes #1 = { "nvptx-f32ftz" = "true" }
