






define arm_apcscc i32 @t1(float* %a, float* %b) nounwind {
entry:






  %0 = load float, float* %a
  %1 = load float, float* %b
  %2 = fcmp une float %0, %1
  br i1 %2, label %bb1, label %bb2

bb1:
  %3 = call i32 @bar()
  ret i32 %3

bb2:
  %4 = call i32 @foo()
  ret i32 %4
}



define arm_apcscc i32 @t2(double* %a, double* %b) nounwind {
entry:










  %0 = load double, double* %a
  %1 = fcmp oeq double %0, 0.000000e+00
  br i1 %1, label %bb1, label %bb2

bb1:
  %2 = call i32 @bar()
  ret i32 %2

bb2:
  %3 = call i32 @foo()
  ret i32 %3
}

define arm_apcscc i32 @t3(float* %a, float* %b) nounwind {
entry:








  %0 = load float, float* %a
  %1 = fcmp oeq float %0, 0.000000e+00
  br i1 %1, label %bb1, label %bb2

bb1:
  %2 = call i32 @bar()
  ret i32 %2

bb2:
  %3 = call i32 @foo()
  ret i32 %3
}

declare i32 @bar()
declare i32 @foo()
