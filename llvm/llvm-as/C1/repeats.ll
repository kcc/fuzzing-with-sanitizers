



define i8 @nilpotent(i8 %x) {

  %tmp = xor i8 %x, %x
  ret i8 %tmp

}

define i2 @idempotent(i2 %x) {

  %tmp1 = and i2 %x, %x
  %tmp2 = and i2 %tmp1, %x
  %tmp3 = and i2 %tmp2, %x
  ret i2 %tmp3

}

define i2 @add(i2 %x) {

  %tmp1 = add i2 %x, %x
  %tmp2 = add i2 %tmp1, %x
  %tmp3 = add i2 %tmp2, %x
  ret i2 %tmp3

}

define i2 @cst_add() {

  %tmp1 = add i2 1, 1
  %tmp2 = add i2 %tmp1, 1
  ret i2 %tmp2

}

define i8 @cst_mul() {

  %tmp1 = mul i8 3, 3
  %tmp2 = mul i8 %tmp1, 3
  %tmp3 = mul i8 %tmp2, 3
  %tmp4 = mul i8 %tmp3, 3
  ret i8 %tmp4

}

define i3 @foo3x5(i3 %x) {





  %tmp1 = mul i3 %x, %x
  %tmp2 = mul i3 %tmp1, %x
  %tmp3 = mul i3 %tmp2, %x
  %tmp4 = mul i3 %tmp3, %x
  ret i3 %tmp4
}

define i3 @foo3x6(i3 %x) {





  %tmp1 = mul i3 %x, %x
  %tmp2 = mul i3 %tmp1, %x
  %tmp3 = mul i3 %tmp2, %x
  %tmp4 = mul i3 %tmp3, %x
  %tmp5 = mul i3 %tmp4, %x
  ret i3 %tmp5
}

define i3 @foo3x7(i3 %x) {





  %tmp1 = mul i3 %x, %x
  %tmp2 = mul i3 %tmp1, %x
  %tmp3 = mul i3 %tmp2, %x
  %tmp4 = mul i3 %tmp3, %x
  %tmp5 = mul i3 %tmp4, %x
  %tmp6 = mul i3 %tmp5, %x
  ret i3 %tmp6
}

define i4 @foo4x8(i4 %x) {





  %tmp1 = mul i4 %x, %x
  %tmp2 = mul i4 %tmp1, %x
  %tmp3 = mul i4 %tmp2, %x
  %tmp4 = mul i4 %tmp3, %x
  %tmp5 = mul i4 %tmp4, %x
  %tmp6 = mul i4 %tmp5, %x
  %tmp7 = mul i4 %tmp6, %x
  ret i4 %tmp7
}

define i4 @foo4x9(i4 %x) {






  %tmp1 = mul i4 %x, %x
  %tmp2 = mul i4 %tmp1, %x
  %tmp3 = mul i4 %tmp2, %x
  %tmp4 = mul i4 %tmp3, %x
  %tmp5 = mul i4 %tmp4, %x
  %tmp6 = mul i4 %tmp5, %x
  %tmp7 = mul i4 %tmp6, %x
  %tmp8 = mul i4 %tmp7, %x
  ret i4 %tmp8
}

define i4 @foo4x10(i4 %x) {






  %tmp1 = mul i4 %x, %x
  %tmp2 = mul i4 %tmp1, %x
  %tmp3 = mul i4 %tmp2, %x
  %tmp4 = mul i4 %tmp3, %x
  %tmp5 = mul i4 %tmp4, %x
  %tmp6 = mul i4 %tmp5, %x
  %tmp7 = mul i4 %tmp6, %x
  %tmp8 = mul i4 %tmp7, %x
  %tmp9 = mul i4 %tmp8, %x
  ret i4 %tmp9
}

define i4 @foo4x11(i4 %x) {







  %tmp1 = mul i4 %x, %x
  %tmp2 = mul i4 %tmp1, %x
  %tmp3 = mul i4 %tmp2, %x
  %tmp4 = mul i4 %tmp3, %x
  %tmp5 = mul i4 %tmp4, %x
  %tmp6 = mul i4 %tmp5, %x
  %tmp7 = mul i4 %tmp6, %x
  %tmp8 = mul i4 %tmp7, %x
  %tmp9 = mul i4 %tmp8, %x
  %tmp10 = mul i4 %tmp9, %x
  ret i4 %tmp10
}

define i4 @foo4x12(i4 %x) {





  %tmp1 = mul i4 %x, %x
  %tmp2 = mul i4 %tmp1, %x
  %tmp3 = mul i4 %tmp2, %x
  %tmp4 = mul i4 %tmp3, %x
  %tmp5 = mul i4 %tmp4, %x
  %tmp6 = mul i4 %tmp5, %x
  %tmp7 = mul i4 %tmp6, %x
  %tmp8 = mul i4 %tmp7, %x
  %tmp9 = mul i4 %tmp8, %x
  %tmp10 = mul i4 %tmp9, %x
  %tmp11 = mul i4 %tmp10, %x
  ret i4 %tmp11
}

define i4 @foo4x13(i4 %x) {






  %tmp1 = mul i4 %x, %x
  %tmp2 = mul i4 %tmp1, %x
  %tmp3 = mul i4 %tmp2, %x
  %tmp4 = mul i4 %tmp3, %x
  %tmp5 = mul i4 %tmp4, %x
  %tmp6 = mul i4 %tmp5, %x
  %tmp7 = mul i4 %tmp6, %x
  %tmp8 = mul i4 %tmp7, %x
  %tmp9 = mul i4 %tmp8, %x
  %tmp10 = mul i4 %tmp9, %x
  %tmp11 = mul i4 %tmp10, %x
  %tmp12 = mul i4 %tmp11, %x
  ret i4 %tmp12
}

define i4 @foo4x14(i4 %x) {






  %tmp1 = mul i4 %x, %x
  %tmp2 = mul i4 %tmp1, %x
  %tmp3 = mul i4 %tmp2, %x
  %tmp4 = mul i4 %tmp3, %x
  %tmp5 = mul i4 %tmp4, %x
  %tmp6 = mul i4 %tmp5, %x
  %tmp7 = mul i4 %tmp6, %x
  %tmp8 = mul i4 %tmp7, %x
  %tmp9 = mul i4 %tmp8, %x
  %tmp10 = mul i4 %tmp9, %x
  %tmp11 = mul i4 %tmp10, %x
  %tmp12 = mul i4 %tmp11, %x
  %tmp13 = mul i4 %tmp12, %x
  ret i4 %tmp13
}

define i4 @foo4x15(i4 %x) {







  %tmp1 = mul i4 %x, %x
  %tmp2 = mul i4 %tmp1, %x
  %tmp3 = mul i4 %tmp2, %x
  %tmp4 = mul i4 %tmp3, %x
  %tmp5 = mul i4 %tmp4, %x
  %tmp6 = mul i4 %tmp5, %x
  %tmp7 = mul i4 %tmp6, %x
  %tmp8 = mul i4 %tmp7, %x
  %tmp9 = mul i4 %tmp8, %x
  %tmp10 = mul i4 %tmp9, %x
  %tmp11 = mul i4 %tmp10, %x
  %tmp12 = mul i4 %tmp11, %x
  %tmp13 = mul i4 %tmp12, %x
  %tmp14 = mul i4 %tmp13, %x
  ret i4 %tmp14
}
