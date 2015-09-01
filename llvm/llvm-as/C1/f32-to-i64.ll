
target datalayout = "E-m:e-p:32:32-i64:64-n32"
target triple = "powerpc-unknown-unknown"


define i64 @testullf(float %arg) #0 {
entry:
  %arg.addr = alloca float, align 4
  store float %arg, float* %arg.addr, align 4
  %0 = load float, float* %arg.addr, align 4
  %conv = fptoui float %0 to i64
  ret i64 %conv







}

attributes #0 = { nounwind "target-cpu"="a2" }

