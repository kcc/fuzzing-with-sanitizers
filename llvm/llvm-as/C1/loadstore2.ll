
target datalayout = "E-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "mips--linux-gnu"

@c2 = common global i8 0, align 1
@c1 = common global i8 0, align 1





@s2 = common global i16 0, align 2
@s1 = common global i16 0, align 2
@i2 = common global i32 0, align 4
@i1 = common global i32 0, align 4
@f2 = common global float 0.000000e+00, align 4
@f1 = common global float 0.000000e+00, align 4
@d2 = common global double 0.000000e+00, align 8
@d1 = common global double 0.000000e+00, align 8


define void @cfoo() #0 {
entry:
  %0 = load i8, i8* @c2, align 1
  store i8 %0, i8* @c1, align 1





  ret void
}


define void @sfoo() #0 {
entry:
  %0 = load i16, i16* @s2, align 2
  store i16 %0, i16* @s1, align 2




  ret void
}


define void @ifoo() #0 {
entry:
  %0 = load i32, i32* @i2, align 4
  store i32 %0, i32* @i1, align 4




  ret void
}


define void @ffoo() #0 {
entry:
  %0 = load float, float* @f2, align 4
  store float %0, float* @f1, align 4





  ret void
}


define void @dfoo() #0 {
entry:
  %0 = load double, double* @d2, align 8
  store double %0, double* @d1, align 8




  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }


