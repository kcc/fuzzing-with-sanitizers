

target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

declare <2 x double> @sv(<2 x double>, <2 x i64>, <4 x float>) #0

define <2 x double> @main(<4 x float> %a, <2 x double> %b, <2 x i64> %c) #1 {
entry:
  %ca = tail call <2 x double> @sv(<2 x double> %b, <2 x i64> %c,  <4 x float> %a)
  %v = fadd <2 x double> %ca, <double 1.0, double 1.0>
  ret <2 x double> %v










}

attributes #0 = { noinline nounwind readnone }
attributes #1 = { nounwind }

