












define <2 x double> @sitofp_2i64_to_2f64(<2 x i64> %a) {





















  %cvt = sitofp <2 x i64> %a to <2 x double>
  ret <2 x double> %cvt
}

define <2 x double> @sitofp_2i32_to_2f64(<4 x i32> %a) {









  %shuf = shufflevector <4 x i32> %a, <4 x i32> undef, <2 x i32> <i32 0, i32 1>
  %cvt = sitofp <2 x i32> %shuf to <2 x double>
  ret <2 x double> %cvt
}

define <2 x double> @sitofp_4i32_to_2f64(<4 x i32> %a) {










  %cvt = sitofp <4 x i32> %a to <4 x double>
  %shuf = shufflevector <4 x double> %cvt, <4 x double> undef, <2 x i32> <i32 0, i32 1>
  ret <2 x double> %shuf
}

define <2 x double> @sitofp_2i16_to_2f64(<8 x i16> %a) {












  %shuf = shufflevector <8 x i16> %a, <8 x i16> undef, <2 x i32> <i32 0, i32 1>
  %cvt = sitofp <2 x i16> %shuf to <2 x double>
  ret <2 x double> %cvt
}

define <2 x double> @sitofp_8i16_to_2f64(<8 x i16> %a) {




















  %cvt = sitofp <8 x i16> %a to <8 x double>
  %shuf = shufflevector <8 x double> %cvt, <8 x double> undef, <2 x i32> <i32 0, i32 1>
  ret <2 x double> %shuf
}

define <2 x double> @sitofp_2i8_to_2f64(<16 x i8> %a) {













  %shuf = shufflevector <16 x i8> %a, <16 x i8> undef, <2 x i32> <i32 0, i32 1>
  %cvt = sitofp <2 x i8> %shuf to <2 x double>
  ret <2 x double> %cvt
}

define <2 x double> @sitofp_16i8_to_2f64(<16 x i8> %a) {






















  %cvt = sitofp <16 x i8> %a to <16 x double>
  %shuf = shufflevector <16 x double> %cvt, <16 x double> undef, <2 x i32> <i32 0, i32 1>
  ret <2 x double> %shuf
}

define <4 x double> @sitofp_4i64_to_4f64(<4 x i64> %a) {





















































  %cvt = sitofp <4 x i64> %a to <4 x double>
  ret <4 x double> %cvt
}

define <4 x double> @sitofp_4i32_to_4f64(<4 x i32> %a) {












  %cvt = sitofp <4 x i32> %a to <4 x double>
  ret <4 x double> %cvt
}

define <4 x double> @sitofp_4i16_to_4f64(<8 x i16> %a) {














  %shuf = shufflevector <8 x i16> %a, <8 x i16> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %cvt = sitofp <4 x i16> %shuf to <4 x double>
  ret <4 x double> %cvt
}

define <4 x double> @sitofp_8i16_to_4f64(<8 x i16> %a) {




















  %cvt = sitofp <8 x i16> %a to <8 x double>
  %shuf = shufflevector <8 x double> %cvt, <8 x double> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x double> %shuf
}

define <4 x double> @sitofp_4i8_to_4f64(<16 x i8> %a) {















  %shuf = shufflevector <16 x i8> %a, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %cvt = sitofp <4 x i8> %shuf to <4 x double>
  ret <4 x double> %cvt
}

define <4 x double> @sitofp_16i8_to_4f64(<16 x i8> %a) {






















  %cvt = sitofp <16 x i8> %a to <16 x double>
  %shuf = shufflevector <16 x double> %cvt, <16 x double> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x double> %shuf
}





define <2 x double> @uitofp_2i64_to_2f64(<2 x i64> %a) {





























  %cvt = uitofp <2 x i64> %a to <2 x double>
  ret <2 x double> %cvt
}

define <2 x double> @uitofp_2i32_to_2f64(<4 x i32> %a) {
































  %shuf = shufflevector <4 x i32> %a, <4 x i32> undef, <2 x i32> <i32 0, i32 1>
  %cvt = uitofp <2 x i32> %shuf to <2 x double>
  ret <2 x double> %cvt
}

define <2 x double> @uitofp_4i32_to_2f64(<4 x i32> %a) {









































  %cvt = uitofp <4 x i32> %a to <4 x double>
  %shuf = shufflevector <4 x double> %cvt, <4 x double> undef, <2 x i32> <i32 0, i32 1>
  ret <2 x double> %shuf
}

define <2 x double> @uitofp_2i16_to_2f64(<8 x i16> %a) {












  %shuf = shufflevector <8 x i16> %a, <8 x i16> undef, <2 x i32> <i32 0, i32 1>
  %cvt = uitofp <2 x i16> %shuf to <2 x double>
  ret <2 x double> %cvt
}

define <2 x double> @uitofp_8i16_to_2f64(<8 x i16> %a) {




















  %cvt = uitofp <8 x i16> %a to <8 x double>
  %shuf = shufflevector <8 x double> %cvt, <8 x double> undef, <2 x i32> <i32 0, i32 1>
  ret <2 x double> %shuf
}

define <2 x double> @uitofp_2i8_to_2f64(<16 x i8> %a) {













  %shuf = shufflevector <16 x i8> %a, <16 x i8> undef, <2 x i32> <i32 0, i32 1>
  %cvt = uitofp <2 x i8> %shuf to <2 x double>
  ret <2 x double> %cvt
}

define <2 x double> @uitofp_16i8_to_2f64(<16 x i8> %a) {






















  %cvt = uitofp <16 x i8> %a to <16 x double>
  %shuf = shufflevector <16 x double> %cvt, <16 x double> undef, <2 x i32> <i32 0, i32 1>
  ret <2 x double> %shuf
}

define <4 x double> @uitofp_4i64_to_4f64(<4 x i64> %a) {









































































  %cvt = uitofp <4 x i64> %a to <4 x double>
  ret <4 x double> %cvt
}

define <4 x double> @uitofp_4i32_to_4f64(<4 x i32> %a) {



















































  %cvt = uitofp <4 x i32> %a to <4 x double>
  ret <4 x double> %cvt
}

define <4 x double> @uitofp_4i16_to_4f64(<8 x i16> %a) {















  %shuf = shufflevector <8 x i16> %a, <8 x i16> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %cvt = uitofp <4 x i16> %shuf to <4 x double>
  ret <4 x double> %cvt
}

define <4 x double> @uitofp_8i16_to_4f64(<8 x i16> %a) {





















  %cvt = uitofp <8 x i16> %a to <8 x double>
  %shuf = shufflevector <8 x double> %cvt, <8 x double> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x double> %shuf
}

define <4 x double> @uitofp_4i8_to_4f64(<16 x i8> %a) {
















  %shuf = shufflevector <16 x i8> %a, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %cvt = uitofp <4 x i8> %shuf to <4 x double>
  ret <4 x double> %cvt
}

define <4 x double> @uitofp_16i8_to_4f64(<16 x i8> %a) {























  %cvt = uitofp <16 x i8> %a to <16 x double>
  %shuf = shufflevector <16 x double> %cvt, <16 x double> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x double> %shuf
}





define <4 x float> @sitofp_2i64_to_4f32(<2 x i64> %a) {
























  %cvt = sitofp <2 x i64> %a to <2 x float>
  %ext = shufflevector <2 x float> %cvt, <2 x float> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  ret <4 x float> %ext
}

define <4 x float> @sitofp_4i64_to_4f32_undef(<2 x i64> %a) {



























  %ext = shufflevector <2 x i64> %a, <2 x i64> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %cvt = sitofp <4 x i64> %ext to <4 x float>
  ret <4 x float> %cvt
}

define <4 x float> @sitofp_4i32_to_4f32(<4 x i32> %a) {









  %cvt = sitofp <4 x i32> %a to <4 x float>
  ret <4 x float> %cvt
}

define <4 x float> @sitofp_4i16_to_4f32(<8 x i16> %a) {












  %shuf = shufflevector <8 x i16> %a, <8 x i16> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %cvt = sitofp <4 x i16> %shuf to <4 x float>
  ret <4 x float> %cvt
}

define <4 x float> @sitofp_8i16_to_4f32(<8 x i16> %a) {























  %cvt = sitofp <8 x i16> %a to <8 x float>
  %shuf = shufflevector <8 x float> %cvt, <8 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x float> %shuf
}

define <4 x float> @sitofp_4i8_to_4f32(<16 x i8> %a) {













  %shuf = shufflevector <16 x i8> %a, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %cvt = sitofp <4 x i8> %shuf to <4 x float>
  ret <4 x float> %cvt
}

define <4 x float> @sitofp_16i8_to_4f32(<16 x i8> %a) {

























  %cvt = sitofp <16 x i8> %a to <16 x float>
  %shuf = shufflevector <16 x float> %cvt, <16 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x float> %shuf
}

define <4 x float> @sitofp_4i64_to_4f32(<4 x i64> %a) {























































  %cvt = sitofp <4 x i64> %a to <4 x float>
  ret <4 x float> %cvt
}

define <8 x float> @sitofp_8i32_to_8f32(<8 x i32> %a) {










  %cvt = sitofp <8 x i32> %a to <8 x float>
  ret <8 x float> %cvt
}

define <8 x float> @sitofp_8i16_to_8f32(<8 x i16> %a) {


























  %cvt = sitofp <8 x i16> %a to <8 x float>
  ret <8 x float> %cvt
}

define <8 x float> @sitofp_8i8_to_8f32(<16 x i8> %a) {






























  %shuf = shufflevector <16 x i8> %a, <16 x i8> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cvt = sitofp <8 x i8> %shuf to <8 x float>
  ret <8 x float> %cvt
}

define <8 x float> @sitofp_16i8_to_8f32(<16 x i8> %a) {





























  %cvt = sitofp <16 x i8> %a to <16 x float>
  %shuf = shufflevector <16 x float> %cvt, <16 x float> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x float> %shuf
}





define <4 x float> @uitofp_2i64_to_4f32(<2 x i64> %a) {

















































































  %cvt = uitofp <2 x i64> %a to <2 x float>
  %ext = shufflevector <2 x float> %cvt, <2 x float> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  ret <4 x float> %ext
}

define <4 x float> @uitofp_4i64_to_4f32_undef(<2 x i64> %a) {


























































































  %ext = shufflevector <2 x i64> %a, <2 x i64> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %cvt = uitofp <4 x i64> %ext to <4 x float>
  ret <4 x float> %cvt
}

define <4 x float> @uitofp_4i32_to_4f32(<4 x i32> %a) {































  %cvt = uitofp <4 x i32> %a to <4 x float>
  ret <4 x float> %cvt
}

define <4 x float> @uitofp_4i16_to_4f32(<8 x i16> %a) {












  %shuf = shufflevector <8 x i16> %a, <8 x i16> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %cvt = uitofp <4 x i16> %shuf to <4 x float>
  ret <4 x float> %cvt
}

define <4 x float> @uitofp_8i16_to_4f32(<8 x i16> %a) {























  %cvt = uitofp <8 x i16> %a to <8 x float>
  %shuf = shufflevector <8 x float> %cvt, <8 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x float> %shuf
}

define <4 x float> @uitofp_4i8_to_4f32(<16 x i8> %a) {













  %shuf = shufflevector <16 x i8> %a, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %cvt = uitofp <4 x i8> %shuf to <4 x float>
  ret <4 x float> %cvt
}

define <4 x float> @uitofp_16i8_to_4f32(<16 x i8> %a) {


























  %cvt = uitofp <16 x i8> %a to <16 x float>
  %shuf = shufflevector <16 x float> %cvt, <16 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x float> %shuf
}

define <4 x float> @uitofp_4i64_to_4f32(<4 x i64> %a) {











































































































































































































  %cvt = uitofp <4 x i64> %a to <4 x float>
  ret <4 x float> %cvt
}

define <8 x float> @uitofp_8i32_to_8f32(<8 x i32> %a) {













































  %cvt = uitofp <8 x i32> %a to <8 x float>
  ret <8 x float> %cvt
}

define <8 x float> @uitofp_8i16_to_8f32(<8 x i16> %a) {

























  %cvt = uitofp <8 x i16> %a to <8 x float>
  ret <8 x float> %cvt
}

define <8 x float> @uitofp_8i8_to_8f32(<16 x i8> %a) {
































  %shuf = shufflevector <16 x i8> %a, <16 x i8> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cvt = uitofp <8 x i8> %shuf to <8 x float>
  ret <8 x float> %cvt
}

define <8 x float> @uitofp_16i8_to_8f32(<16 x i8> %a) {






























  %cvt = uitofp <16 x i8> %a to <16 x float>
  %shuf = shufflevector <16 x float> %cvt, <16 x float> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x float> %shuf
}





%Arguments = type <{ <8 x i8>, <8 x i16>, <8 x float>* }>
define void @aggregate_sitofp_8i16_to_8f32(%Arguments* nocapture readonly %a0) {




































 %1 = load %Arguments, %Arguments* %a0, align 1
 %2 = extractvalue %Arguments %1, 1
 %3 = extractvalue %Arguments %1, 2
 %4 = sitofp <8 x i16> %2 to <8 x float>
 store <8 x float> %4, <8 x float>* %3, align 32
 ret void
}
