





define float @select_max_ugt(float %a, float %b) {
  %cmp = fcmp ugt float %a, %b
  %sel = select i1 %cmp, float %a, float %b
  ret float %sel
}





define float @select_max_uge(float %a, float %b) {
  %cmp = fcmp uge float %a, %b
  %sel = select i1 %cmp, float %a, float %b
  ret float %sel
}





define float @select_min_ugt(float %a, float %b) {
  %cmp = fcmp ugt float %a, %b
  %sel = select i1 %cmp, float %b, float %a
  ret float %sel
}





define float @select_min_uge(float %a, float %b) {
  %cmp = fcmp uge float %a, %b
  %sel = select i1 %cmp, float %b, float %a
  ret float %sel
}





define float @select_max_ult(float %a, float %b) {
  %cmp = fcmp ult float %a, %b
  %sel = select i1 %cmp, float %b, float %a
  ret float %sel
}





define float @select_max_ule(float %a, float %b) {
  %cmp = fcmp ule float %a, %b
  %sel = select i1 %cmp, float %b, float %a
  ret float %sel
}





define float @select_min_ult(float %a, float %b) {
  %cmp = fcmp ult float %a, %b
  %sel = select i1 %cmp, float %a, float %b
  ret float %sel
}





define float @select_min_ule(float %a, float %b) {
  %cmp = fcmp ule float %a, %b
  %sel = select i1 %cmp, float %a, float %b
  ret float %sel
}





define float @select_fcmp_une(float %a, float %b) {
  %cmp = fcmp une float %a, %b
  %sel = select i1 %cmp, float %a, float %b
  ret float %sel
}





define float @select_fcmp_ueq(float %a, float %b) {
  %cmp = fcmp ueq float %a, %b
  %sel = select i1 %cmp, float %a, float %b
  ret float %sel
}

declare void @foo(i1)





define float @select_max_ugt_2_use_cmp(float %a, float %b) {
  %cmp = fcmp ugt float %a, %b
  call void @foo(i1 %cmp)
  %sel = select i1 %cmp, float %a, float %b
  ret float %sel
}





define float @select_min_uge_2_use_cmp(float %a, float %b) {
  %cmp = fcmp uge float %a, %b
  call void @foo(i1 %cmp)
  %sel = select i1 %cmp, float %b, float %a
  ret float %sel
}
