




define void @bar_hf() #0 {

entry:
  %call1 = call float @foo(float 1.000000e+00)


  ret void
}

define void @bar_sf() #1 {

entry:
  %call1 = call float @foo(float 1.000000e+00)


  ret void
}

declare float @foo(float) #2

attributes #0 = {
  nounwind
  "less-precise-fpmad"="false" "no-frame-pointer-elim"="true"
  "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false"
  "no-nans-fp-math"="false" "stack-protector-buffer-size"="8"
  "unsafe-fp-math"="false" "use-soft-float"="false"
}
attributes #1 = {
  nounwind
  "less-precise-fpmad"="false" "no-frame-pointer-elim"="true"
  "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false"
  "no-nans-fp-math"="false" "stack-protector-buffer-size"="8"
  "unsafe-fp-math"="false" "use-soft-float"="true"
}
attributes #2 = {
  "less-precise-fpmad"="false" "no-frame-pointer-elim"="true"
  "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false"
  "no-nans-fp-math"="false" "stack-protector-buffer-size"="8"
  "unsafe-fp-math"="false" "use-soft-float"="true"
}
