



target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define float @foo(i32 %a) nounwind {
entry:
  %x = sitofp i32 %a to float
  ret float %x



























}

define double @goo(i32 %a) nounwind {
entry:
  %x = sitofp i32 %a to double
  ret double %x

























}

define float @foou(i32 %a) nounwind {
entry:
  %x = uitofp i32 %a to float
  ret float %x












}

define double @goou(i32 %a) nounwind {
entry:
  %x = uitofp i32 %a to double
  ret double %x












}

