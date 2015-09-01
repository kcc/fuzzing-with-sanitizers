

define float @t1(i1 %a, float %b, float %c) nounwind {


  %sel = select i1 %a, float %b, float %c
  ret float %sel
}
