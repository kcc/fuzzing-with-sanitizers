








@f = common global float 0.000000e+00, align 4
@de = common global double 0.000000e+00, align 8


define void @f1() #0 {
entry:
  store float 0x3FFA76C8C0000000, float* @f, align 4
  ret void








}


define void @d1() #0 {
entry:
  store double 1.234567e+00, double* @de, align 8



















  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
