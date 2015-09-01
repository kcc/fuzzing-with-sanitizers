

define <4 x i32> @trunc_64_32(<4 x i64> %A) nounwind uwtable readnone ssp{




  %B = trunc <4 x i64> %A to <4 x i32>
  ret <4 x i32>%B
}
define <8 x i16> @trunc_32_16(<8 x i32> %A) nounwind uwtable readnone ssp{


  %B = trunc <8 x i32> %A to <8 x i16>
  ret <8 x i16>%B
}
define <16 x i8> @trunc_16_8(<16 x i16> %A) nounwind uwtable readnone ssp{


  %B = trunc <16 x i16> %A to <16 x i8>
  ret <16 x i8> %B
}
