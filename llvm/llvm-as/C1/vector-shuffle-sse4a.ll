






define <16 x i8> @shuf_0zzzuuuuuuuuuuuu(<16 x i8> %a0) {









  %s = shufflevector <16 x i8> %a0, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i8> %s
}

define <16 x i8> @shuf_0zzzzzzz1zzzzzzz(<16 x i8> %a0) {












  %s = shufflevector <16 x i8> %a0, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 1, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  ret <16 x i8> %s
}

define <16 x i8> @shuf_01zzuuuuuuuuuuuu(<16 x i8> %a0) {









  %s = shufflevector <16 x i8> %a0, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 16, i32 16, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i8> %s
}

define <16 x i8> @shuf_01zzzzzz23zzzzzz(<16 x i8> %a0) {












  %s = shufflevector <16 x i8> %a0, <16 x i8> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 2, i32 3, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  ret <16 x i8> %s
}

define <16 x i8> @shuf_1zzzuuuuuuuuuuuu(<16 x i8> %a0) {




  %s = shufflevector <16 x i8> %a0, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 16, i32 16, i32 16, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i8> %s
}

define <8 x i16> @shuf_1zzzuuuu(<8 x i16> %a0) {




  %s = shufflevector <8 x i16> %a0, <8 x i16> zeroinitializer, <8 x i32> <i32 1, i32 8, i32 8, i32 8, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %s
}

define <8 x i16> @shuf_12zzuuuu(<8 x i16> %a0) {




  %s = shufflevector <8 x i16> %a0, <8 x i16> zeroinitializer, <8 x i32> <i32 1, i32 2, i32 8, i32 8, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %s
}

define <8 x i16> @shuf_012zuuuu(<8 x i16> %a0) {




  %s = shufflevector <8 x i16> %a0, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %s
}

define <8 x i16> @shuf_0zzz1zzz(<8 x i16> %a0) {












  %s = shufflevector <8 x i16> %a0, <8 x i16> zeroinitializer, <8 x i32> <i32 0, i32 8, i32 8, i32 8, i32 1, i32 8, i32 8, i32 8>
  ret <8 x i16> %s
}

define <4 x i32> @shuf_0z1z(<4 x i32> %a0) {










  %s = shufflevector <4 x i32> %a0, <4 x i32> zeroinitializer, <4 x i32> <i32 0, i32 4, i32 1, i32 4>
  ret <4 x i32> %s
}





define <16 x i8> @shuf_0_0_2_3_uuuu_uuuu_uuuu(<16 x i8> %a0, <16 x i8> %a1) {




  %s = shufflevector <16 x i8> %a0, <16 x i8> %a1, <16 x i32> <i32 0, i32 0, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i8> %s
}

define <16 x i8> @shuf_0_16_2_3_uuuu_uuuu_uuuu(<16 x i8> %a0, <16 x i8> %a1) {




  %s = shufflevector <16 x i8> %a0, <16 x i8> %a1, <16 x i32> <i32 0, i32 16, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i8> %s
}

define <16 x i8> @shuf_16_1_2_3_uuuu_uuuu_uuuu(<16 x i8> %a0, <16 x i8> %a1) {




  %s = shufflevector <16 x i8> %a0, <16 x i8> %a1, <16 x i32> <i32 16, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i8> %s
}

define <8 x i16> @shuf_0823uuuu(<8 x i16> %a0, <8 x i16> %a1) {




  %s = shufflevector <8 x i16> %a0, <8 x i16> %a1, <8 x i32> <i32 0, i32 8, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %s
}

define <8 x i16> @shuf_0183uuuu(<8 x i16> %a0, <8 x i16> %a1) {




  %s = shufflevector <8 x i16> %a0, <8 x i16> %a1, <8 x i32> <i32 0, i32 1, i32 8, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %s
}

define <8 x i16> @shuf_0128uuuu(<8 x i16> %a0, <8 x i16> %a1) {




  %s = shufflevector <8 x i16> %a0, <8 x i16> %a1, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %s
}

define <8 x i16> @shuf_0893uuuu(<8 x i16> %a0, <8 x i16> %a1) {




  %s = shufflevector <8 x i16> %a0, <8 x i16> %a1, <8 x i32> <i32 0, i32 8, i32 9, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %s
}

define <8 x i16> @shuf_089Auuuu(<8 x i16> %a0, <8 x i16> %a1) {




  %s = shufflevector <8 x i16> %a0, <8 x i16> %a1, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %s
}

define <8 x i16> @shuf_089uuuuu(<8 x i16> %a0, <8 x i16> %a1) {




  %s = shufflevector <8 x i16> %a0, <8 x i16> %a1, <8 x i32> <i32 0, i32 8, i32 9, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x i16> %s
}
