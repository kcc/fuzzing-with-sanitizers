


define <8 x i8> @ret_v8i8(<8 x i8> %a, <8 x i8> %b) {


  %1 = add <8 x i8> %a, %b
  ret <8 x i8> %1
}
