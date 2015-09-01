
target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define float @test(i64 %x) nounwind readnone {
entry:
  %conv = sitofp i64 %x to float
  ret float %conv
}


















