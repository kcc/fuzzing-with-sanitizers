




target datalayout = "E-p:32:32:32-i1:8:8-i8:8:32-i16:16:32-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-n32-S64"
target triple = "mips--linux-gnu"

@i = common global i32 0, align 4


define void @t() #0 {
entry:
  store i32 -559023410, i32* @i, align 4







  call void asm sideeffect ".space 10000", ""() #1, !srcloc !1
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind }

!1 = !{i32 121}
