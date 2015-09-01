




















define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval
  store volatile i32 100, i32* %b, align 4
  store volatile i32 32, i32* %c, align 4
  %0 = load volatile i32, i32* %b, align 4
  %1 = load volatile i32, i32* %c, align 4
  %div = sdiv i32 %0, %1
  store volatile i32 %div, i32* %a, align 4
  ret i32 0
}
