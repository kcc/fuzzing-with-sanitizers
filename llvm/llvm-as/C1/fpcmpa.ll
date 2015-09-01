




@f1 = common global float 0.000000e+00, align 4
@f2 = common global float 0.000000e+00, align 4
@b1 = common global i32 0, align 4
@d1 = common global double 0.000000e+00, align 8
@d2 = common global double 0.000000e+00, align 8


define void @feq1()  {
entry:
  %0 = load float, float* @f1, align 4
  %1 = load float, float* @f2, align 4
  %cmp = fcmp oeq float %0, %1










  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @fne1()  {
entry:
  %0 = load float, float* @f1, align 4
  %1 = load float, float* @f2, align 4
  %cmp = fcmp une float %0, %1









  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @flt1()  {
entry:
  %0 = load float, float* @f1, align 4
  %1 = load float, float* @f2, align 4
  %cmp = fcmp olt float %0, %1










  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @fgt1()  {
entry:
  %0 = load float, float* @f1, align 4
  %1 = load float, float* @f2, align 4
  %cmp = fcmp ogt float %0, %1









  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @fle1()  {
entry:
  %0 = load float, float* @f1, align 4
  %1 = load float, float* @f2, align 4
  %cmp = fcmp ole float %0, %1









  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @fge1()  {
entry:
  %0 = load float, float* @f1, align 4
  %1 = load float, float* @f2, align 4
  %cmp = fcmp oge float %0, %1









  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @deq1()  {
entry:
  %0 = load double, double* @d1, align 8
  %1 = load double, double* @d2, align 8
  %cmp = fcmp oeq double %0, %1









  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @dne1()  {
entry:
  %0 = load double, double* @d1, align 8
  %1 = load double, double* @d2, align 8
  %cmp = fcmp une double %0, %1









  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @dlt1()  {
entry:
  %0 = load double, double* @d1, align 8
  %1 = load double, double* @d2, align 8
  %cmp = fcmp olt double %0, %1









  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @dgt1()  {
entry:
  %0 = load double, double* @d1, align 8
  %1 = load double, double* @d2, align 8
  %cmp = fcmp ogt double %0, %1









  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @dle1()  {
entry:
  %0 = load double, double* @d1, align 8
  %1 = load double, double* @d2, align 8
  %cmp = fcmp ole double %0, %1









  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


define void @dge1()  {
entry:
  %0 = load double, double* @d1, align 8
  %1 = load double, double* @d2, align 8
  %cmp = fcmp oge double %0, %1









  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @b1, align 4
  ret void
}


