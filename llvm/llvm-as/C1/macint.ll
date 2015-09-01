




define i32 @main(i32* %a, i32* %b) nounwind {
  entry:
  %0 = load i32, i32* %a, align 4
  %div = udiv i32 %0, 10000
  %rem = urem i32 %div, 10
  store i32 %rem, i32* %b, align 4
  ret i32 0
}

