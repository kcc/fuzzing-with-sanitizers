



target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"





define <16 x i8> @v16si8_sext_in_reg(<16 x i8> %a) {
  %b = trunc <16 x i8> %a to <16 x i4>
  %c = sext <16 x i4> %b to <16 x i8>
  ret <16 x i8> %c
}







define <16 x i8> @v16si8_zext_in_reg(<16 x i8> %a) {
  %b = trunc <16 x i8> %a to <16 x i4>
  %c = zext <16 x i4> %b to <16 x i8>
  ret <16 x i8> %c
}





define <8 x i16> @v8si16_sext_in_reg(<8 x i16> %a) {
  %b = trunc <8 x i16> %a to <8 x i8>
  %c = sext <8 x i8> %b to <8 x i16>
  ret <8 x i16> %c
}







define <8 x i16> @v8si16_zext_in_reg(<8 x i16> %a) {
  %b = trunc <8 x i16> %a to <8 x i8>
  %c = zext <8 x i8> %b to <8 x i16>
  ret <8 x i16> %c
}







define <4 x i32> @v4si32_sext_in_reg(<4 x i32> %a) {
  %b = trunc <4 x i32> %a to <4 x i16>
  %c = sext <4 x i16> %b to <4 x i32>
  ret <4 x i32> %c
}






define <4 x i32> @v4si32_zext_in_reg(<4 x i32> %a) {
  %b = trunc <4 x i32> %a to <4 x i16>
  %c = zext <4 x i16> %b to <4 x i32>
  ret <4 x i32> %c
}




