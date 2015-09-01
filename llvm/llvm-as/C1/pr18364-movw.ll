





define i64 @f() #0 {
entry:




  %y = alloca i64, align 8
  %z = alloca i64, align 8
  store i64 1, i64* %y, align 8
  store i64 11579764786944, i64* %z, align 8
  %0 = load i64, i64* %y, align 8
  %1 = load i64, i64* %z, align 8
  %sub = sub i64 %0, %1
  ret i64 %sub
}

define i64 @g(i64 %a, i32 %b) #0 {
entry:




  %0 = mul i64 %a, 86400000
  %mul = add i64 %0, -210866803200000
  %conv = sext i32 %b to i64
  %add = add nsw i64 %mul, %conv
  ret i64 %add
}
