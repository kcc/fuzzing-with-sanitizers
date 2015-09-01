


target triple = "x86_64-apple-darwin"






define <4 x i8> @foo(<4 x i8> %x, <4 x i8> %y) {
entry:
 %binop = mul <4 x i8> %x, %y
 %binop6 = add <4 x i8> %binop, %x
 ret <4 x i8> %binop6
}


