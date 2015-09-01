















declare i32 @helper() nounwind
define void @base() #0 {
entry:
  %k = call i32 @helper()
  %a = alloca i32, i32 %k, align 4
  store i32 0, i32* %a, align 4
  ret void
}

attributes #0 = { nounwind uwtable "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"}
