


target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define i64 @foo(float %a) nounwind {
  %x = fptosi float %a to i64
  ret i64 %x












}

define i64 @foo2(double %a) nounwind {
  %x = fptosi double %a to i64
  ret i64 %x












}

define i64 @foo3(float %a) nounwind {
  %x = fptoui float %a to i64
  ret i64 %x












}

define i64 @foo4(double %a) nounwind {
  %x = fptoui double %a to i64
  ret i64 %x












}

define i32 @goo(float %a) nounwind {
  %x = fptosi float %a to i32
  ret i32 %x












}

define i32 @goo2(double %a) nounwind {
  %x = fptosi double %a to i32
  ret i32 %x












}

define i32 @goo3(float %a) nounwind {
  %x = fptoui float %a to i32
  ret i32 %x












}

define i32 @goo4(double %a) nounwind {
  %x = fptoui double %a to i32
  ret i32 %x












}

