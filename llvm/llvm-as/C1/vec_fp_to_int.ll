











define <2 x i64> @fptosi_2f64_to_2i64(<2 x double> %a) {




















  %cvt = fptosi <2 x double> %a to <2 x i64>
  ret <2 x i64> %cvt
}

define <4 x i32> @fptosi_2f64_to_2i32(<2 x double> %a) {





















  %cvt = fptosi <2 x double> %a to <2 x i32>
  %ext = shufflevector <2 x i32> %cvt, <2 x i32> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  ret <4 x i32> %ext
}

define <4 x i32> @fptosi_4f64_to_2i32(<2 x double> %a) {





















  %ext = shufflevector <2 x double> %a, <2 x double> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %cvt = fptosi <4 x double> %ext to <4 x i32>
  ret <4 x i32> %cvt
}

define <4 x i64> @fptosi_4f64_to_4i64(<4 x double> %a) {



































  %cvt = fptosi <4 x double> %a to <4 x i64>
  ret <4 x i64> %cvt
}

define <4 x i32> @fptosi_4f64_to_4i32(<4 x double> %a) {
























  %cvt = fptosi <4 x double> %a to <4 x i32>
  ret <4 x i32> %cvt
}





define <2 x i64> @fptoui_2f64_to_2i64(<2 x double> %a) {














































  %cvt = fptoui <2 x double> %a to <2 x i64>
  ret <2 x i64> %cvt
}

define <4 x i32> @fptoui_2f64_to_2i32(<2 x double> %a) {















































  %cvt = fptoui <2 x double> %a to <2 x i32>
  %ext = shufflevector <2 x i32> %cvt, <2 x i32> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  ret <4 x i32> %ext
}

define <4 x i32> @fptoui_4f64_to_2i32(<2 x double> %a) {












































  %ext = shufflevector <2 x double> %a, <2 x double> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %cvt = fptoui <4 x double> %ext to <4 x i32>
  ret <4 x i32> %cvt
}

define <4 x i64> @fptoui_4f64_to_4i64(<4 x double> %a) {


















































































  %cvt = fptoui <4 x double> %a to <4 x i64>
  ret <4 x i64> %cvt
}

define <4 x i32> @fptoui_4f64_to_4i32(<4 x double> %a) {




























































  %cvt = fptoui <4 x double> %a to <4 x i32>
  ret <4 x i32> %cvt
}





define <4 x i32> @fptosi_4f32_to_4i32(<4 x float> %a) {









  %cvt = fptosi <4 x float> %a to <4 x i32>
  ret <4 x i32> %cvt
}

define <2 x i64> @fptosi_2f32_to_2i64(<4 x float> %a) {




















  %shuf = shufflevector <4 x float> %a, <4 x float> undef, <2 x i32> <i32 0, i32 1>
  %cvt = fptosi <2 x float> %shuf to <2 x i64>
  ret <2 x i64> %cvt
}

define <2 x i64> @fptosi_4f32_to_2i64(<4 x float> %a) {




















  %cvt = fptosi <4 x float> %a to <4 x i64>
  %shuf = shufflevector <4 x i64> %cvt, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  ret <2 x i64> %shuf
}

define <8 x i32> @fptosi_8f32_to_8i32(<8 x float> %a) {










  %cvt = fptosi <8 x float> %a to <8 x i32>
  ret <8 x i32> %cvt
}

define <4 x i64> @fptosi_4f32_to_4i64(<8 x float> %a) {





































  %shuf = shufflevector <8 x float> %a, <8 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %cvt = fptosi <4 x float> %shuf to <4 x i64>
  ret <4 x i64> %cvt
}

define <4 x i64> @fptosi_8f32_to_4i64(<8 x float> %a) {





































  %cvt = fptosi <8 x float> %a to <8 x i64>
  %shuf = shufflevector <8 x i64> %cvt, <8 x i64> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x i64> %shuf
}





define <4 x i32> @fptoui_4f32_to_4i32(<4 x float> %a) {



































  %cvt = fptoui <4 x float> %a to <4 x i32>
  ret <4 x i32> %cvt
}

define <2 x i64> @fptoui_2f32_to_2i64(<4 x float> %a) {














































  %shuf = shufflevector <4 x float> %a, <4 x float> undef, <2 x i32> <i32 0, i32 1>
  %cvt = fptoui <2 x float> %shuf to <2 x i64>
  ret <2 x i64> %cvt
}

define <2 x i64> @fptoui_4f32_to_2i64(<4 x float> %a) {














































  %cvt = fptoui <4 x float> %a to <4 x i64>
  %shuf = shufflevector <4 x i64> %cvt, <4 x i64> undef, <2 x i32> <i32 0, i32 1>
  ret <2 x i64> %shuf
}

define <8 x i32> @fptoui_8f32_to_8i32(<8 x float> %a) {
































































  %cvt = fptoui <8 x float> %a to <8 x i32>
  ret <8 x i32> %cvt
}

define <4 x i64> @fptoui_4f32_to_4i64(<8 x float> %a) {





















































































  %shuf = shufflevector <8 x float> %a, <8 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %cvt = fptoui <4 x float> %shuf to <4 x i64>
  ret <4 x i64> %cvt
}

define <4 x i64> @fptoui_8f32_to_4i64(<8 x float> %a) {





















































































  %cvt = fptoui <8 x float> %a to <8 x i64>
  %shuf = shufflevector <8 x i64> %cvt, <8 x i64> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x i64> %shuf
}





define <2 x i64> @fptosi_2f64_to_2i64_const() {









  %cvt = fptosi <2 x double> <double 1.0, double -1.0> to <2 x i64>
  ret <2 x i64> %cvt
}

define <4 x i32> @fptosi_2f64_to_2i32_const() {









  %cvt = fptosi <2 x double> <double -1.0, double 1.0> to <2 x i32>
  %ext = shufflevector <2 x i32> %cvt, <2 x i32> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  ret <4 x i32> %ext
}

define <4 x i64> @fptosi_4f64_to_4i64_const() {










  %cvt = fptosi <4 x double> <double 1.0, double -1.0, double 2.0, double -3.0> to <4 x i64>
  ret <4 x i64> %cvt
}

define <4 x i32> @fptosi_4f64_to_4i32_const() {









  %cvt = fptosi <4 x double> <double -1.0, double 1.0, double -2.0, double 3.0> to <4 x i32>
  ret <4 x i32> %cvt
}

define <2 x i64> @fptoui_2f64_to_2i64_const() {









  %cvt = fptoui <2 x double> <double 2.0, double 4.0> to <2 x i64>
  ret <2 x i64> %cvt
}

define <4 x i32> @fptoui_2f64_to_2i32_const(<2 x double> %a) {









  %cvt = fptoui <2 x double> <double 2.0, double 4.0> to <2 x i32>
  %ext = shufflevector <2 x i32> %cvt, <2 x i32> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  ret <4 x i32> %ext
}

define <4 x i64> @fptoui_4f64_to_4i64_const(<4 x double> %a) {










  %cvt = fptoui <4 x double> <double 2.0, double 4.0, double 6.0, double 8.0> to <4 x i64>
  ret <4 x i64> %cvt
}

define <4 x i32> @fptoui_4f64_to_4i32_const(<4 x double> %a) {









  %cvt = fptoui <4 x double> <double 2.0, double 4.0, double 6.0, double 8.0> to <4 x i32>
  ret <4 x i32> %cvt
}

define <4 x i32> @fptosi_4f32_to_4i32_const() {









  %cvt = fptosi <4 x float> <float 1.0, float -1.0, float 2.0, float 3.0> to <4 x i32>
  ret <4 x i32> %cvt
}

define <4 x i64> @fptosi_4f32_to_4i64_const() {










  %cvt = fptosi <4 x float> <float 1.0, float -1.0, float 2.0, float 3.0> to <4 x i64>
  ret <4 x i64> %cvt
}

define <8 x i32> @fptosi_8f32_to_8i32_const(<8 x float> %a) {










  %cvt = fptosi <8 x float> <float 1.0, float -1.0, float 2.0, float 3.0, float 6.0, float -8.0, float 2.0, float -1.0> to <8 x i32>
  ret <8 x i32> %cvt
}

define <4 x i32> @fptoui_4f32_to_4i32_const(<4 x float> %a) {









  %cvt = fptoui <4 x float> <float 1.0, float 2.0, float 4.0, float 6.0> to <4 x i32>
  ret <4 x i32> %cvt
}

define <4 x i64> @fptoui_4f32_to_4i64_const() {










  %cvt = fptoui <4 x float> <float 1.0, float 2.0, float 4.0, float 8.0> to <4 x i64>
  ret <4 x i64> %cvt
}

define <8 x i32> @fptoui_8f32_to_8i32_const(<8 x float> %a) {










  %cvt = fptoui <8 x float> <float 1.0, float 2.0, float 4.0, float 6.0, float 8.0, float 6.0, float 4.0, float 1.0> to <8 x i32>
  ret <8 x i32> %cvt
}
