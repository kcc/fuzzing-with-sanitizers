


define i1 @f(float %X, float %Y) {
entry:
        %tmp3 = fcmp olt float %X, %Y           
        %toBoolnot5 = xor i1 %tmp3, true                
        ret i1 %toBoolnot5




}
