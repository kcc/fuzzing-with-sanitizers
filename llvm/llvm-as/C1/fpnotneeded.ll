



@i = global i32 1, align 4
@f = global float 1.000000e+00, align 4

define void @vv() #0 {
entry:
  ret void
}








define i32 @iv() #0 {
entry:
  %0 = load i32, i32* @i, align 4
  ret i32 %0
}








define void @vif(i32 %i, float %f) #0 {
entry:
  %i.addr = alloca i32, align 4
  %f.addr = alloca float, align 4
  store i32 %i, i32* %i.addr, align 4
  store float %f, float* %f.addr, align 4
  ret void
}








define void @foo() #0 {
entry:
  store float 2.000000e+00, float* @f, align 4
  ret void
}










attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }


define float @fv() #0 {
entry:
  ret float 1.000000e+00
}











