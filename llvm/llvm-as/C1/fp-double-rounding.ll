


target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64--"






define void @double_rounding(fp128* %x, float* %f) {
entry:
  %0 = load fp128, fp128* %x, align 16
  %1 = fptrunc fp128 %0 to double
  %2 = fptrunc double %1 to float
  store float %2, float* %f, align 4
  ret void
}




define void @double_rounding_precise_first(float* %f) {
entry:
  
  %precise = call double asm sideeffect "fld %st(0)", "={st(0)}"()
  %0 = fptrunc double %precise to float
  store float %0, float* %f, align 4
  ret void
}
