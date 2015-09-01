

define float @clamp(float %a, float %b, float %c) {






entry:
  %cmp = fcmp ogt float %a, %c
  br i1 %cmp, label %cond.end4, label %cond.false

cond.false:                                       
  %cmp1 = fcmp olt float %a, %b
  %cond = select i1 %cmp1, float %b, float %a
  br label %cond.end4

cond.end4:                                        
  %cond5 = phi float [ %cond, %cond.false ], [ %c, %entry ]
  ret float %cond5
}
