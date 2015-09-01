


define <8 x float> @insert_f32(<8 x float> %y, float %f, <8 x float> %x) {



  %i0 = insertelement <8 x float> %y, float %f, i32 0
  ret <8 x float> %i0
}

define <4 x double> @insert_f64(<4 x double> %y, double %f, <4 x double> %x) {



  %i0 = insertelement <4 x double> %y, double %f, i32 0
  ret <4 x double> %i0
}

define <32 x i8> @insert_i8(<32 x i8> %y, i8 %f, <32 x i8> %x) {











  %i0 = insertelement <32 x i8> %y, i8 %f, i32 0
  ret <32 x i8> %i0
}

define <16 x i16> @insert_i16(<16 x i16> %y, i16 %f, <16 x i16> %x) {











  %i0 = insertelement <16 x i16> %y, i16 %f, i32 0
  ret <16 x i16> %i0
}

define <8 x i32> @insert_i32(<8 x i32> %y, i32 %f, <8 x i32> %x) {











  %i0 = insertelement <8 x i32> %y, i32 %f, i32 0
  ret <8 x i32> %i0
}

define <4 x i64> @insert_i64(<4 x i64> %y, i64 %f, <4 x i64> %x) {











  %i0 = insertelement <4 x i64> %y, i64 %f, i32 0
  ret <4 x i64> %i0
}

