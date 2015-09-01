




@ijk = external global i32


define void @si2_1() #0 {
entry:
  store i32 32767, i32* @ijk, align 4





  ret void
}


define void @si2_2() #0 {
entry:
  store i32 -32768, i32* @ijk, align 4





  ret void
}


define void @ui2_1() #0 {
entry:
  store i32 65535, i32* @ijk, align 4




  ret void
}


define void @ui4_1() #0 {
entry:
  store i32 983040, i32* @ijk, align 4




  ret void
}


define void @ui4_2() #0 {
entry:
  store i32 719566, i32* @ijk, align 4





  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }


