







define <8 x i16> @phaddw1(<8 x i16> %x, <8 x i16> %y) {
  %a = shufflevector <8 x i16> %x, <8 x i16> %y, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %b = shufflevector <8 x i16> %x, <8 x i16> %y, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %r = add <8 x i16> %a, %b
  ret <8 x i16> %r
}






define <8 x i16> @phaddw2(<8 x i16> %x, <8 x i16> %y) {
  %a = shufflevector <8 x i16> %x, <8 x i16> %y, <8 x i32> <i32 1, i32 2, i32 5, i32 6, i32 9, i32 10, i32 13, i32 14>
  %b = shufflevector <8 x i16> %y, <8 x i16> %x, <8 x i32> <i32 8, i32 11, i32 12, i32 15, i32 0, i32 3, i32 4, i32 7>
  %r = add <8 x i16> %a, %b
  ret <8 x i16> %r
}






define <4 x i32> @phaddd1(<4 x i32> %x, <4 x i32> %y) {
  %a = shufflevector <4 x i32> %x, <4 x i32> %y, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %b = shufflevector <4 x i32> %x, <4 x i32> %y, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %r = add <4 x i32> %a, %b
  ret <4 x i32> %r
}






define <4 x i32> @phaddd2(<4 x i32> %x, <4 x i32> %y) {
  %a = shufflevector <4 x i32> %x, <4 x i32> %y, <4 x i32> <i32 1, i32 2, i32 5, i32 6>
  %b = shufflevector <4 x i32> %y, <4 x i32> %x, <4 x i32> <i32 4, i32 7, i32 0, i32 3>
  %r = add <4 x i32> %a, %b
  ret <4 x i32> %r
}






define <4 x i32> @phaddd3(<4 x i32> %x) {
  %a = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 undef, i32 2, i32 4, i32 6>
  %b = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 undef, i32 3, i32 5, i32 7>
  %r = add <4 x i32> %a, %b
  ret <4 x i32> %r
}






define <4 x i32> @phaddd4(<4 x i32> %x) {
  %a = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 0, i32 2, i32 undef, i32 undef>
  %b = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 1, i32 3, i32 undef, i32 undef>
  %r = add <4 x i32> %a, %b
  ret <4 x i32> %r
}






define <4 x i32> @phaddd5(<4 x i32> %x) {
  %a = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 0, i32 3, i32 undef, i32 undef>
  %b = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 undef, i32 undef>
  %r = add <4 x i32> %a, %b
  ret <4 x i32> %r
}






define <4 x i32> @phaddd6(<4 x i32> %x) {
  %a = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 0, i32 undef, i32 undef, i32 undef>
  %b = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %r = add <4 x i32> %a, %b
  ret <4 x i32> %r
}






define <4 x i32> @phaddd7(<4 x i32> %x) {
  %a = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 undef, i32 3, i32 undef, i32 undef>
  %b = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 undef, i32 2, i32 undef, i32 undef>
  %r = add <4 x i32> %a, %b
  ret <4 x i32> %r
}






define <8 x i16> @phsubw1(<8 x i16> %x, <8 x i16> %y) {
  %a = shufflevector <8 x i16> %x, <8 x i16> %y, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %b = shufflevector <8 x i16> %x, <8 x i16> %y, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %r = sub <8 x i16> %a, %b
  ret <8 x i16> %r
}






define <4 x i32> @phsubd1(<4 x i32> %x, <4 x i32> %y) {
  %a = shufflevector <4 x i32> %x, <4 x i32> %y, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %b = shufflevector <4 x i32> %x, <4 x i32> %y, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %r = sub <4 x i32> %a, %b
  ret <4 x i32> %r
}






define <4 x i32> @phsubd2(<4 x i32> %x) {
  %a = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 undef, i32 2, i32 4, i32 6>
  %b = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 undef, i32 3, i32 5, i32 7>
  %r = sub <4 x i32> %a, %b
  ret <4 x i32> %r
}






define <4 x i32> @phsubd3(<4 x i32> %x) {
  %a = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 0, i32 2, i32 undef, i32 undef>
  %b = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 1, i32 3, i32 undef, i32 undef>
  %r = sub <4 x i32> %a, %b
  ret <4 x i32> %r
}






define <4 x i32> @phsubd4(<4 x i32> %x) {
  %a = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 0, i32 undef, i32 undef, i32 undef>
  %b = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %r = sub <4 x i32> %a, %b
  ret <4 x i32> %r
}
