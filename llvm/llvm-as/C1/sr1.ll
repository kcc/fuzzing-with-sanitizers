



@f = common global float 0.000000e+00, align 4


define void @foo1() #0 {
entry:
  %c = alloca [10 x i8], align 1
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %c, i32 0, i32 0
  call void @x(i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [10 x i8], [10 x i8]* %c, i32 0, i32 0
  call void @x(i8* %arraydecay1)
  ret void




}

declare void @x(i8*) #1


define void @foo2() #0 {
entry:
  %c = alloca [150 x i8], align 1
  %arraydecay = getelementptr inbounds [150 x i8], [150 x i8]* %c, i32 0, i32 0
  call void @x(i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [150 x i8], [150 x i8]* %c, i32 0, i32 0
  call void @x(i8* %arraydecay1)
  ret void




}


define void @foo3() #0 {
entry:
  %call = call float @xf()
  store float %call, float* @f, align 4
  ret void








}

declare float @xf() #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }


