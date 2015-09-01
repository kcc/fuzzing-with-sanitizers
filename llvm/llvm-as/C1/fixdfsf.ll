


@x = common global double 0.000000e+00, align 8
@y = common global i32 0, align 4


define void @foo()  {
entry:
  %0 = load double, double* @x, align 8
  %conv = fptoui double %0 to i32
  store i32 %conv, i32* @y, align 4


  ret void
}


