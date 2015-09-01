


target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define double @zerocmp1(double %a, double %y, double %z) #0 {
entry:
  %cmp = fcmp ult double %a, 0.000000e+00
  %z.y = select i1 %cmp, double %z, double %y
  ret double %z.y












}

define double @zerocmp2(double %a, double %y, double %z) #0 {
entry:
  %cmp = fcmp ogt double %a, 0.000000e+00
  %y.z = select i1 %cmp, double %y, double %z
  ret double %y.z














}

define double @zerocmp3(double %a, double %y, double %z) #0 {
entry:
  %cmp = fcmp oeq double %a, 0.000000e+00
  %y.z = select i1 %cmp, double %y, double %z
  ret double %y.z
















}

define double @min1(double %a, double %b) #0 {
entry:
  %cmp = fcmp ole double %a, %b
  %cond = select i1 %cmp, double %a, double %b
  ret double %cond














}

define double @max1(double %a, double %b) #0 {
entry:
  %cmp = fcmp oge double %a, %b
  %cond = select i1 %cmp, double %a, double %b
  ret double %cond














}

define double @cmp1(double %a, double %b, double %y, double %z) #0 {
entry:
  %cmp = fcmp ult double %a, %b
  %z.y = select i1 %cmp, double %z, double %y
  ret double %z.y














}

define double @cmp2(double %a, double %b, double %y, double %z) #0 {
entry:
  %cmp = fcmp ogt double %a, %b
  %y.z = select i1 %cmp, double %y, double %z
  ret double %y.z














}

define double @cmp3(double %a, double %b, double %y, double %z) #0 {
entry:
  %cmp = fcmp oeq double %a, %b
  %y.z = select i1 %cmp, double %y, double %z
  ret double %y.z


















}

attributes #0 = { nounwind readnone }

