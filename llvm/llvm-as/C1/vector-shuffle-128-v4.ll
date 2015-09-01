






target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-unknown"

define <4 x i32> @shuffle_v4i32_0001(<4 x i32> %a, <4 x i32> %b) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_0020(<4 x i32> %a, <4 x i32> %b) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_0112(<4 x i32> %a, <4 x i32> %b) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_0300(<4 x i32> %a, <4 x i32> %b) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 3, i32 0, i32 0>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_1000(<4 x i32> %a, <4 x i32> %b) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_2200(<4 x i32> %a, <4 x i32> %b) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 2, i32 2, i32 0, i32 0>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_3330(<4 x i32> %a, <4 x i32> %b) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 3, i32 3, i32 3, i32 0>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_3210(<4 x i32> %a, <4 x i32> %b) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_2121(<4 x i32> %a, <4 x i32> %b) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 2, i32 1, i32 2, i32 1>
  ret <4 x i32> %shuffle
}

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

define <4 x i32> @shuffle_v4i32_0124(<4 x i32> %a, <4 x i32> %b) {



































  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_0142(<4 x i32> %a, <4 x i32> %b) {






































  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 1, i32 4, i32 2>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_0412(<4 x i32> %a, <4 x i32> %b) {









































  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 4, i32 1, i32 2>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_4012(<4 x i32> %a, <4 x i32> %b) {






































  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_0145(<4 x i32> %a, <4 x i32> %b) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_0451(<4 x i32> %a, <4 x i32> %b) {






































  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 4, i32 5, i32 1>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_4501(<4 x i32> %a, <4 x i32> %b) {










  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  ret <4 x i32> %shuffle
}
define <4 x i32> @shuffle_v4i32_4015(<4 x i32> %a, <4 x i32> %b) {






































  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 4, i32 0, i32 1, i32 5>
  ret <4 x i32> %shuffle
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

define <4 x float> @shuffle_v4f32_0z23(<4 x float> %a) {



































  %shuffle = shufflevector <4 x float> %a, <4 x float> zeroinitializer, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  ret <4 x float> %shuffle
}

define <4 x float> @shuffle_v4f32_01z3(<4 x float> %a) {
































  %shuffle = shufflevector <4 x float> %a, <4 x float> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  ret <4 x float> %shuffle
}

define <4 x float> @shuffle_v4f32_012z(<4 x float> %a) {
































  %shuffle = shufflevector <4 x float> %a, <4 x float> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  ret <4 x float> %shuffle
}

define <4 x float> @shuffle_v4f32_0zz3(<4 x float> %a) {
































  %shuffle = shufflevector <4 x float> %a, <4 x float> zeroinitializer, <4 x i32> <i32 0, i32 4, i32 4, i32 3>
  ret <4 x float> %shuffle
}

define <4 x float> @shuffle_v4f32_u051(<4 x float> %a, <4 x float> %b) {










  %shuffle = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 undef, i32 0, i32 5, i32 1>
  ret <4 x float> %shuffle
}

define <4 x i32> @shuffle_v4i32_4zzz(<4 x i32> %a) {
































  %shuffle = shufflevector <4 x i32> zeroinitializer, <4 x i32> %a, <4 x i32> <i32 4, i32 1, i32 2, i32 3>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_z4zz(<4 x i32> %a) {


































  %shuffle = shufflevector <4 x i32> zeroinitializer, <4 x i32> %a, <4 x i32> <i32 2, i32 4, i32 3, i32 0>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_zz4z(<4 x i32> %a) {


































  %shuffle = shufflevector <4 x i32> zeroinitializer, <4 x i32> %a, <4 x i32> <i32 0, i32 0, i32 4, i32 0>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_zuu4(<4 x i32> %a) {









  %shuffle = shufflevector <4 x i32> zeroinitializer, <4 x i32> %a, <4 x i32> <i32 0, i32 undef, i32 undef, i32 4>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_z6zz(<4 x i32> %a) {









































  %shuffle = shufflevector <4 x i32> zeroinitializer, <4 x i32> %a, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_7012(<4 x i32> %a, <4 x i32> %b) {




























  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 7, i32 0, i32 1, i32 2>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_6701(<4 x i32> %a, <4 x i32> %b) {


























  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 6, i32 7, i32 0, i32 1>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_5670(<4 x i32> %a, <4 x i32> %b) {




























  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 5, i32 6, i32 7, i32 0>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_1234(<4 x i32> %a, <4 x i32> %b) {




























  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_2345(<4 x i32> %a, <4 x i32> %b) {


























  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_40u1(<4 x i32> %a, <4 x i32> %b) {










  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 4, i32 0, i32 undef, i32 1>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_3456(<4 x i32> %a, <4 x i32> %b) {




























  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_0u1u(<4 x i32> %a, <4 x i32> %b) {
























  %shuffle = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 0, i32 undef, i32 1, i32 undef>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_0z1z(<4 x i32> %a) {



























  %shuffle = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32> <i32 0, i32 5, i32 1, i32 7>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_01zu(<4 x i32> %a) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 7, i32 undef>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_0z23(<4 x i32> %a) {
































  %shuffle = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_01z3(<4 x i32> %a) {
































  %shuffle = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_012z(<4 x i32> %a) {
































  %shuffle = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_0zz3(<4 x i32> %a) {
































  %shuffle = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32> <i32 0, i32 4, i32 4, i32 3>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_bitcast_0415(<4 x i32> %a, <4 x i32> %b) {









  %shuffle32 = shufflevector <4 x i32> %a, <4 x i32> %b, <4 x i32> <i32 1, i32 5, i32 0, i32 4>
  %bitcast64 = bitcast <4 x i32> %shuffle32 to <2 x double>
  %shuffle64 = shufflevector <2 x double> %bitcast64, <2 x double> undef, <2 x i32> <i32 1, i32 0>
  %bitcast32 = bitcast <2 x double> %shuffle64 to <4 x i32>
  ret <4 x i32> %bitcast32
}

define <4 x i32> @insert_reg_and_zero_v4i32(i32 %a) {









  %v = insertelement <4 x i32> undef, i32 %a, i32 0
  %shuffle = shufflevector <4 x i32> %v, <4 x i32> zeroinitializer, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x i32> %shuffle
}

define <4 x i32> @insert_mem_and_zero_v4i32(i32* %ptr) {









  %a = load i32, i32* %ptr
  %v = insertelement <4 x i32> undef, i32 %a, i32 0
  %shuffle = shufflevector <4 x i32> %v, <4 x i32> zeroinitializer, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x i32> %shuffle
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

define <4 x i32> @insert_reg_lo_v4i32(i64 %a, <4 x i32> %b) {



































  %a.cast = bitcast i64 %a to <2 x i32>
  %v = shufflevector <2 x i32> %a.cast, <2 x i32> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %shuffle = shufflevector <4 x i32> %v, <4 x i32> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  ret <4 x i32> %shuffle
}

define <4 x i32> @insert_mem_lo_v4i32(<2 x i32>* %ptr, <4 x i32> %b) {
































  %a = load <2 x i32>, <2 x i32>* %ptr
  %v = shufflevector <2 x i32> %a, <2 x i32> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %shuffle = shufflevector <4 x i32> %v, <4 x i32> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  ret <4 x i32> %shuffle
}

define <4 x i32> @insert_reg_hi_v4i32(i64 %a, <4 x i32> %b) {











  %a.cast = bitcast i64 %a to <2 x i32>
  %v = shufflevector <2 x i32> %a.cast, <2 x i32> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %shuffle = shufflevector <4 x i32> %v, <4 x i32> %b, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  ret <4 x i32> %shuffle
}

define <4 x i32> @insert_mem_hi_v4i32(<2 x i32>* %ptr, <4 x i32> %b) {











  %a = load <2 x i32>, <2 x i32>* %ptr
  %v = shufflevector <2 x i32> %a, <2 x i32> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %shuffle = shufflevector <4 x i32> %v, <4 x i32> %b, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  ret <4 x i32> %shuffle
}

define <4 x float> @insert_reg_lo_v4f32(double %a, <4 x float> %b) {










  %a.cast = bitcast double %a to <2 x float>
  %v = shufflevector <2 x float> %a.cast, <2 x float> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %shuffle = shufflevector <4 x float> %v, <4 x float> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  ret <4 x float> %shuffle
}

define <4 x float> @insert_mem_lo_v4f32(<2 x float>* %ptr, <4 x float> %b) {









  %a = load <2 x float>, <2 x float>* %ptr
  %v = shufflevector <2 x float> %a, <2 x float> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %shuffle = shufflevector <4 x float> %v, <4 x float> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  ret <4 x float> %shuffle
}

define <4 x float> @insert_reg_hi_v4f32(double %a, <4 x float> %b) {










  %a.cast = bitcast double %a to <2 x float>
  %v = shufflevector <2 x float> %a.cast, <2 x float> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %shuffle = shufflevector <4 x float> %v, <4 x float> %b, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
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

define <4 x i32> @insert_dup_mem_v4i32(i32* %ptr) {










  %tmp = load i32, i32* %ptr, align 4
  %tmp1 = insertelement <4 x i32> zeroinitializer, i32 %tmp, i32 0
  %tmp2 = shufflevector <4 x i32> %tmp1, <4 x i32> undef, <4 x i32> zeroinitializer
  ret <4 x i32> %tmp2
}





define <4 x i32> @shuffle_v4i32_z0zX(<4 x i32> %a) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32> <i32 4, i32 0, i32 4, i32 undef>
  ret <4 x i32> %shuffle
}

define <4 x i32> @shuffle_v4i32_1z3z(<4 x i32> %a) {









  %shuffle = shufflevector <4 x i32> %a, <4 x i32> zeroinitializer, <4 x i32> <i32 1, i32 4, i32 3, i32 4>
  ret <4 x i32> %shuffle
}
