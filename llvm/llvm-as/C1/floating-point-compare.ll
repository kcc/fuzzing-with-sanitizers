





declare float @llvm.fabs.f32(float)
declare float @llvm.sqrt.f32(float)
declare double @llvm.powi.f64(double,i32)
declare float @llvm.exp.f32(float)
declare double @llvm.exp2.f64(double)
declare float @llvm.fma.f32(float,float,float)

declare void @expect_equal(i1,i1)


define i1 @orderedLessZeroTree(float,float,float,float) {
  %square = fmul float %0, %0
  %abs = call float @llvm.fabs.f32(float %1)
  %sqrt = call float @llvm.sqrt.f32(float %2)
  %fma = call float @llvm.fma.f32(float %3, float %3, float %sqrt)
  %div = fdiv float %square, %abs
  %rem = frem float %sqrt, %fma
  %add = fadd float %div, %rem
  %uge = fcmp uge float %add, 0.000000e+00

  ret i1 %uge
}


define i1 @orderedLessZeroExpExt(float) {
  %a = call float @llvm.exp.f32(float %0)
  %b = fpext float %a to double
  %uge = fcmp uge double %b, 0.000000e+00

  ret i1 %uge
}


define i1 @orderedLessZeroExp2Trunc(double) {
  %a = call double @llvm.exp2.f64(double %0)
  %b = fptrunc double %a to float
  %olt = fcmp olt float %b, 0.000000e+00

  ret i1 %olt
}


define i1 @orderedLessZeroPowi(double,double) {
  
  %a = call double @llvm.powi.f64(double %0, i32 2)
  %square = fmul double %1, %1
  
  %b = call double @llvm.powi.f64(double %square, i32 3)
  %c = fadd double %a, %b
  %olt = fcmp olt double %b, 0.000000e+00

  ret i1 %olt
}

define i1 @nonans1(double %in1, double %in2) {
  %cmp = fcmp nnan uno double %in1, %in2
  ret i1 %cmp



}

define i1 @nonans2(double %in1, double %in2) {
  %cmp = fcmp nnan ord double %in1, %in2
  ret i1 %cmp



}
