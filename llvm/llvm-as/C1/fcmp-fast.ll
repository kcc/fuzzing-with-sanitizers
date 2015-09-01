






define i1 @foo(float %a, float %b, double %c, double %d) {
  
  %plain = fcmp ueq float %a, %b
  
  %fast = fcmp fast olt float %a, %b
  
  %nsz = fcmp nsz uge float %a, %b
  
  %nnan = fcmp nnan nsz oge double %c, %d

  %dce1 = or i1 %plain, %fast
  %dce2 = or i1 %dce1, %nsz
  %dce3 = or i1 %dce2, %nnan

  ret i1 %dce3
}
