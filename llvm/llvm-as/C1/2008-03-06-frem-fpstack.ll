

define float @func(float %a, float %b) nounwind  {
entry:
        %tmp3 = frem float %a, %b               
        ret float %tmp3
}
