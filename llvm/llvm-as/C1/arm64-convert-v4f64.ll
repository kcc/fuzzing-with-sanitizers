


define <4 x i16> @fptosi_v4f64_to_v4i16(<4 x double>* %ptr) {






  %tmp1 = load <4 x double>, <4 x double>* %ptr
  %tmp2 = fptosi <4 x double> %tmp1 to <4 x i16>
  ret <4 x i16> %tmp2
}

define <8 x i8> @fptosi_v4f64_to_v4i8(<8 x double>* %ptr) {












  %tmp1 = load <8 x double>, <8 x double>* %ptr
  %tmp2 = fptosi <8 x double> %tmp1 to <8 x i8>
  ret <8 x i8> %tmp2
}

define <4 x half> @uitofp_v4i64_to_v4f16(<4 x i64>* %ptr) {






  %tmp1 = load <4 x i64>, <4 x i64>* %ptr
  %tmp2 = uitofp <4 x i64> %tmp1 to <4 x half>
  ret <4 x half> %tmp2
}

define <4 x i16> @trunc_v4i64_to_v4i16(<4 x i64>* %ptr) {




  %tmp1 = load <4 x i64>, <4 x i64>* %ptr
  %tmp2 = trunc <4 x i64> %tmp1 to <4 x i16>
  ret <4 x i16> %tmp2
}

define <4 x i16> @fptoui_v4f64_to_v4i16(<4 x double>* %ptr) {






  %tmp1 = load <4 x double>, <4 x double>* %ptr
  %tmp2 = fptoui <4 x double> %tmp1 to <4 x i16>
  ret <4 x i16> %tmp2
}
