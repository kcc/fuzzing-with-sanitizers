





define void @t() nounwind ssp {
entry:

  %size = mul i32 8, 2


  %vla_a = alloca i8, i32 %size, align 8


  %vla_b = alloca i8, i32 %size, align 8
  unreachable
}
