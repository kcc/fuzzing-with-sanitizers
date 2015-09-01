

define <16 x i16> @f_fu(<16 x i16> %bf) {
allocas:
  %avg.i.i = sdiv <16 x i16> %bf, <i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4>
  ret <16 x i16> %avg.i.i
}











