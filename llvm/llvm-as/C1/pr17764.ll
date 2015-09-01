

define <16 x i16> @foo(<16 x i1> %mask, <16 x i16> %x, <16 x i16> %y) {
  %ret = select <16 x i1> %mask, <16 x i16> %x, <16 x i16> %y
  ret <16 x i16> %ret
}




