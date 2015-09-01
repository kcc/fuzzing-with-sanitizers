
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define fastcc i64 @g1(i64 %g1, double %f1, i64 %g2, double %f2, i64 %g3, double %f3, i64 %g4, double %f4) #0 {
  ret i64 %g1




}

define fastcc i64 @g2(i64 %g1, double %f1, i64 %g2, double %f2, i64 %g3, double %f3, i64 %g4, double %f4) #0 {
  ret i64 %g2




}

define fastcc i64 @g3(i64 %g1, double %f1, i64 %g2, double %f2, i64 %g3, double %f3, i64 %g4, double %f4) #0 {
  ret i64 %g3




}

define fastcc double @f2(i64 %g1, double %f1, i64 %g2, double %f2, i64 %g3, double %f3, i64 %g4, double %f4) #0 {
  ret double %f2




}

define void @cg2(i64 %v) #0 {
  call fastcc i64 @g1(i64 0, double 0.0, i64 %v, double 0.0, i64 0, double 0.0, i64 0, double 0.0)
  ret void




}

define void @cf2(double %v) #0 {
  call fastcc i64 @g1(i64 0, double 0.0, i64 0, double %v, i64 0, double 0.0, i64 0, double 0.0)
  ret void




}

attributes #0 = { nounwind }

