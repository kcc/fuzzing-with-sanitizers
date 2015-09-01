

target triple = "x86_64-unknown-unknown"

define <4 x float> @shuffle_v4f32_0001(<4 x float> %a, <4 x float> %b) {




  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  ret <4 x float> %shuffle
}
define <4 x float> @shuffle_v4f32_0020(<4 x float> %a, <4 x float> %b) {




  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  ret <4 x float> %shuffle
}
define <4 x float> @shuffle_v4f32_0300(<4 x float> %a, <4 x float> %b) {




  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 3, i32 0, i32 0>
  ret <4 x float> %shuffle
}
define <4 x float> @shuffle_v4f32_1000(<4 x float> %a, <4 x float> %b) {




  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  ret <4 x float> %shuffle
}
define <4 x float> @shuffle_v4f32_2200(<4 x float> %a, <4 x float> %b) {




  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 2, i32 2, i32 0, i32 0>
  ret <4 x float> %shuffle
}
define <4 x float> @shuffle_v4f32_3330(<4 x float> %a, <4 x float> %b) {




  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 3, i32 3, i32 3, i32 0>
  ret <4 x float> %shuffle
}
define <4 x float> @shuffle_v4f32_3210(<4 x float> %a, <4 x float> %b) {




  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  ret <4 x float> %shuffle
}
define <4 x float> @shuffle_v4f32_0011(<4 x float> %a, <4 x float> %b) {




  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  ret <4 x float> %shuffle
}
define <4 x float> @shuffle_v4f32_2233(<4 x float> %a, <4 x float> %b) {




  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  ret <4 x float> %shuffle
}
define <4 x float> @shuffle_v4f32_0022(<4 x float> %a, <4 x float> %b) {




  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  ret <4 x float> %shuffle
}
define <4 x float> @shuffle_v4f32_1133(<4 x float> %a, <4 x float> %b) {




  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  ret <4 x float> %shuffle
}

define <4 x float> @shuffle_v4f32_4zzz(<4 x float> %a) {






  %shuffle = shufflevector <4 x float> zeroinitializer, <4 x float> %a, <4 x i32> <i32 4, i32 1, i32 2, i32 3>
  ret <4 x float> %shuffle
}

define <4 x float> @shuffle_v4f32_z4zz(<4 x float> %a) {






  %shuffle = shufflevector <4 x float> zeroinitializer, <4 x float> %a, <4 x i32> <i32 2, i32 4, i32 3, i32 0>
  ret <4 x float> %shuffle
}

define <4 x float> @shuffle_v4f32_zz4z(<4 x float> %a) {







  %shuffle = shufflevector <4 x float> zeroinitializer, <4 x float> %a, <4 x i32> <i32 0, i32 0, i32 4, i32 0>
  ret <4 x float> %shuffle
}

define <4 x float> @shuffle_v4f32_zuu4(<4 x float> %a) {






  %shuffle = shufflevector <4 x float> zeroinitializer, <4 x float> %a, <4 x i32> <i32 0, i32 undef, i32 undef, i32 4>
  ret <4 x float> %shuffle
}

define <4 x float> @shuffle_v4f32_zzz7(<4 x float> %a) {







  %shuffle = shufflevector <4 x float> zeroinitializer, <4 x float> %a, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  ret <4 x float> %shuffle
}

define <4 x float> @shuffle_v4f32_z6zz(<4 x float> %a) {






  %shuffle = shufflevector <4 x float> zeroinitializer, <4 x float> %a, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  ret <4 x float> %shuffle
}

define <4 x float> @insert_reg_and_zero_v4f32(float %a) {






  %v = insertelement <4 x float> undef, float %a, i32 0
  %shuffle = shufflevector <4 x float> %v, <4 x float> zeroinitializer, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %shuffle
}

define <4 x float> @insert_mem_and_zero_v4f32(float* %ptr) {




  %a = load float, float* %ptr
  %v = insertelement <4 x float> undef, float %a, i32 0
  %shuffle = shufflevector <4 x float> %v, <4 x float> zeroinitializer, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %shuffle
}

define <4 x float> @insert_mem_lo_v4f32(<2 x float>* %ptr, <4 x float> %b) {














  %a = load <2 x float>, <2 x float>* %ptr
  %v = shufflevector <2 x float> %a, <2 x float> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %shuffle = shufflevector <4 x float> %v, <4 x float> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  ret <4 x float> %shuffle
}

define <4 x float> @insert_mem_hi_v4f32(<2 x float>* %ptr, <4 x float> %b) {













  %a = load <2 x float>, <2 x float>* %ptr
  %v = shufflevector <2 x float> %a, <2 x float> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %shuffle = shufflevector <4 x float> %v, <4 x float> %b, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  ret <4 x float> %shuffle
}

define <4 x float> @shuffle_mem_v4f32_3210(<4 x float>* %ptr) {





  %a = load <4 x float>, <4 x float>* %ptr
  %shuffle = shufflevector <4 x float> %a, <4 x float> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  ret <4 x float> %shuffle
}
