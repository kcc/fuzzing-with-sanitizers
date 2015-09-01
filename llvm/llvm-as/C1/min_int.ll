



define i32 @minint(i32 %i) {



  %mul = mul i32 %i, -2147483648
  %add = add i32 %mul, 1
  ret i32 %add
}

