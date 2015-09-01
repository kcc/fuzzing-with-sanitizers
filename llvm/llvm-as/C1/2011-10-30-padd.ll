






define <16 x i8> @addXX_test(<16 x i8> %a) {
      %b = add <16 x i8> %a, %a
      ret <16 x i8> %b
}




define <16 x i8> @instcombine_test(<16 x i8> %a) {
  %b = shl <16 x i8> %a, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <16 x i8> %b
}

