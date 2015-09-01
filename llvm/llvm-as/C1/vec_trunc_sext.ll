









define <4 x i32> @trunc_sext(<4 x i16>* %in) {
  %load = load <4 x i16>, <4 x i16>* %in
  %trunc = trunc <4 x i16> %load to <4 x i8>
  %sext = sext <4 x i8> %trunc to <4 x i32>
  ret <4 x i32> %sext













}

