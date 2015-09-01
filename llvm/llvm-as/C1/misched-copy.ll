















define i64 @mulhoist(i32 %a, i32 %b) #0 {
entry:
  br label %body

body:
  %convb = sitofp i32 %b to float
  
  %aa = zext i32 %a to i64
  %mul = mul i64 %aa, 74383
  
  %trunc = trunc i64 %mul to i32
  %convm = sitofp i32 %trunc to float
  %divm = fdiv float %convm, 0.75
  
  
  
  %conva = sitofp i32 %a to float
  %diva = fdiv float %conva, 0.75
  %addab = fadd float %diva, %convb
  %divab = fdiv float %addab, 0.125
  br label %end

end:
  %val = fptosi float %divab to i64
  %add = add i64 %mul, %val
  ret i64 %add
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = !{!"float", !1}
!1 = !{!"omnipotent char", !2}
!2 = !{!"Simple C/C++ TBAA"}
