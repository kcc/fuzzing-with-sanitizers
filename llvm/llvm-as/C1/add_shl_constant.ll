




define i32 @add_shl_add_constant_1_i32(i32 %x, i32 %y) nounwind {
  %add.0 = add i32 %x, 123
  %shl = shl i32 %add.0, 3
  %add.1 = add i32 %shl, %y
  ret i32 %add.1
}




define i32 @add_shl_add_constant_2_i32(i32 %x, i32 %y) nounwind {
  %add.0 = add i32 %x, 123
  %shl = shl i32 %add.0, 3
  %add.1 = add i32 %y, %shl
  ret i32 %add.1
}








define <4 x i32> @add_shl_add_constant_1_v4i32(<4 x i32> %x, <4 x i32> %y) nounwind {
  %add.0 = add <4 x i32> %x, <i32 123, i32 123, i32 123, i32 123>
  %shl = shl <4 x i32> %add.0, <i32 3, i32 3, i32 3, i32 3>
  %add.1 = add <4 x i32> %shl, %y
  ret <4 x i32> %add.1
}








define <4 x i32> @add_shl_add_constant_2_v4i32(<4 x i32> %x, <4 x i32> %y) nounwind {
  %add.0 = add <4 x i32> %x, <i32 123, i32 123, i32 123, i32 123>
  %shl = shl <4 x i32> %add.0, <i32 3, i32 3, i32 3, i32 3>
  %add.1 = add <4 x i32> %y, %shl
  ret <4 x i32> %add.1
}
