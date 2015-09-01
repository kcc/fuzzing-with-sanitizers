

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define double @foo_dd(double %a, double %b) #0 {
entry:
  %call = tail call double @copysign(double %a, double %b) #0
  ret double %call







}

declare double @copysign(double, double) #0

define float @foo_ss(float %a, float %b) #0 {
entry:
  %call = tail call float @copysignf(float %a, float %b) #0
  ret float %call







}

declare float @copysignf(float, float) #0

define float @foo_sd(float %a, double %b) #0 {
entry:
  %conv = fptrunc double %b to float
  %call = tail call float @copysignf(float %a, float %conv) #0
  ret float %call







}

define double @foo_ds(double %a, float %b) #0 {
entry:
  %conv = fpext float %b to double
  %call = tail call double @copysign(double %a, double %conv) #0
  ret double %call







}

attributes #0 = { nounwind readnone }

