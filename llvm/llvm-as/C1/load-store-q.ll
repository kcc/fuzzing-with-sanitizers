
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-ios5.0.0"





 





define void @f(double* %p, double* %q) {
  %addr2 = getelementptr double, double* %q, i32 1
  %addr = getelementptr double, double* %p, i32 1
  %x = load double, double* %p
  %y = load double, double* %addr
  call void @g()
  store double %x, double* %q
  store double %y, double* %addr2
  ret void
}
declare void @g()





define void @f2(double* %p, double* %q) {
entry:
  br label %loop

loop:
  %p1 = phi double [0.0, %entry], [%x, %loop]
  %p2 = phi double [0.0, %entry], [%y, %loop]
  %addr2 = getelementptr double, double* %q, i32 1
  %addr = getelementptr double, double* %p, i32 1
  store double %p1, double* %q
  store double %p2, double* %addr2

  %x = load double, double* %p
  %y = load double, double* %addr
  br label %loop
}
