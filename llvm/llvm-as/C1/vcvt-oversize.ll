

define <8 x i8> @float_to_i8(<8 x float>* %in) {








  %l = load <8 x float>, <8 x float>* %in
  %scale = fmul <8 x float> %l, <float 2.0, float 2.0, float 2.0, float 2.0, float 2.0, float 2.0, float 2.0, float 2.0>
  %conv = fptoui <8 x float> %scale to <8 x i8>
  ret <8 x i8> %conv
}
