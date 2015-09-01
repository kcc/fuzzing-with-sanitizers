


target triple = "x86_64-unknown-unknown"

define <4 x double> @shuffle_v4f64_0000(<4 x double> %a, <4 x double> %b) {










  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 0, i32 0, i32 0>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0001(<4 x double> %a, <4 x double> %b) {










  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0020(<4 x double> %a, <4 x double> %b) {












  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0300(<4 x double> %a, <4 x double> %b) {











  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 3, i32 0, i32 0>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_1000(<4 x double> %a, <4 x double> %b) {











  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_2200(<4 x double> %a, <4 x double> %b) {










  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 2, i32 2, i32 0, i32 0>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_3330(<4 x double> %a, <4 x double> %b) {











  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 3, i32 3, i32 3, i32 0>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_3210(<4 x double> %a, <4 x double> %b) {










  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0023(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0022(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_1032(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_1133(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_1023(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_1022(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 1, i32 0, i32 2, i32 2>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0423(<4 x double> %a, <4 x double> %b) {











  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0462(<4 x double> %a, <4 x double> %b) {






  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 4, i32 6, i32 2>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0426(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_1537(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_4062(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 4, i32 0, i32 6, i32 2>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_5173(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 5, i32 1, i32 7, i32 3>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_5163(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 5, i32 1, i32 6, i32 3>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0527(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_4163(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 3>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0145(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_4501(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0167(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_1054(<4 x double> %a, <4 x double> %b) {





  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_3254(<4 x double> %a, <4 x double> %b) {





  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 3, i32 2, i32 5, i32 4>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_3276(<4 x double> %a, <4 x double> %b) {





  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_1076(<4 x double> %a, <4 x double> %b) {





  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_0415(<4 x double> %a, <4 x double> %b) {













  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  ret <4 x double> %shuffle
}

define <4 x double> @shuffle_v4f64_u062(<4 x double> %a, <4 x double> %b) {




  %shuffle = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 undef, i32 0, i32 6, i32 2>
  ret <4 x double> %shuffle
}

define <4 x i64> @shuffle_v4i64_0000(<4 x i64> %a, <4 x i64> %b) {










  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 0, i32 0, i32 0>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_0001(<4 x i64> %a, <4 x i64> %b) {










  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_0020(<4 x i64> %a, <4 x i64> %b) {












  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_0112(<4 x i64> %a, <4 x i64> %b) {











  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_0300(<4 x i64> %a, <4 x i64> %b) {











  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 3, i32 0, i32 0>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_1000(<4 x i64> %a, <4 x i64> %b) {











  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_2200(<4 x i64> %a, <4 x i64> %b) {










  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 2, i32 2, i32 0, i32 0>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_3330(<4 x i64> %a, <4 x i64> %b) {











  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 3, i32 3, i32 3, i32 0>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_3210(<4 x i64> %a, <4 x i64> %b) {










  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_0124(<4 x i64> %a, <4 x i64> %b) {












  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_0142(<4 x i64> %a, <4 x i64> %b) {













  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 1, i32 4, i32 2>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_0412(<4 x i64> %a, <4 x i64> %b) {















  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 4, i32 1, i32 2>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_4012(<4 x i64> %a, <4 x i64> %b) {














  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_0145(<4 x i64> %a, <4 x i64> %b) {




  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_0451(<4 x i64> %a, <4 x i64> %b) {













  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 4, i32 5, i32 1>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_4501(<4 x i64> %a, <4 x i64> %b) {




  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_4015(<4 x i64> %a, <4 x i64> %b) {













  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 4, i32 0, i32 1, i32 5>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_2u35(<4 x i64> %a, <4 x i64> %b) {












  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 2, i32 undef, i32 3, i32 5>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_1251(<4 x i64> %a, <4 x i64> %b) {















  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 1, i32 2, i32 5, i32 1>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_1054(<4 x i64> %a, <4 x i64> %b) {











  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_3254(<4 x i64> %a, <4 x i64> %b) {











  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 3, i32 2, i32 5, i32 4>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_3276(<4 x i64> %a, <4 x i64> %b) {











  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_1076(<4 x i64> %a, <4 x i64> %b) {











  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_0415(<4 x i64> %a, <4 x i64> %b) {













  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_z4z6(<4 x i64> %a) {










  %shuffle = shufflevector <4 x i64> zeroinitializer, <4 x i64> %a, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_5zuz(<4 x i64> %a) {










  %shuffle = shufflevector <4 x i64> zeroinitializer, <4 x i64> %a, <4 x i32> <i32 5, i32 0, i32 undef, i32 0>
  ret <4 x i64> %shuffle
}

define <4 x i64> @shuffle_v4i64_40u2(<4 x i64> %a, <4 x i64> %b) {









  %shuffle = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 4, i32 0, i32 undef, i32 2>
  ret <4 x i64> %shuffle
}

define <4 x i64> @stress_test1(<4 x i64> %a, <4 x i64> %b) {


  %c = shufflevector <4 x i64> %b, <4 x i64> undef, <4 x i32> <i32 3, i32 1, i32 1, i32 0>
  %d = shufflevector <4 x i64> %c, <4 x i64> undef, <4 x i32> <i32 3, i32 undef, i32 2, i32 undef>
  %e = shufflevector <4 x i64> %b, <4 x i64> undef, <4 x i32> <i32 3, i32 3, i32 1, i32 undef>
  %f = shufflevector <4 x i64> %d, <4 x i64> %e, <4 x i32> <i32 5, i32 1, i32 1, i32 0>

  ret <4 x i64> %f
}

define <4 x i64> @insert_reg_and_zero_v4i64(i64 %a) {




  %v = insertelement <4 x i64> undef, i64 %a, i64 0
  %shuffle = shufflevector <4 x i64> %v, <4 x i64> zeroinitializer, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x i64> %shuffle
}

define <4 x i64> @insert_mem_and_zero_v4i64(i64* %ptr) {




  %a = load i64, i64* %ptr
  %v = insertelement <4 x i64> undef, i64 %a, i64 0
  %shuffle = shufflevector <4 x i64> %v, <4 x i64> zeroinitializer, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x i64> %shuffle
}

define <4 x double> @insert_reg_and_zero_v4f64(double %a) {





  %v = insertelement <4 x double> undef, double %a, i32 0
  %shuffle = shufflevector <4 x double> %v, <4 x double> zeroinitializer, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x double> %shuffle
}

define <4 x double> @insert_mem_and_zero_v4f64(double* %ptr) {




  %a = load double, double* %ptr
  %v = insertelement <4 x double> undef, double %a, i32 0
  %shuffle = shufflevector <4 x double> %v, <4 x double> zeroinitializer, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x double> %shuffle
}

define <4 x double> @splat_mem_v4f64(double* %ptr) {




  %a = load double, double* %ptr
  %v = insertelement <4 x double> undef, double %a, i32 0
  %shuffle = shufflevector <4 x double> %v, <4 x double> undef, <4 x i32> <i32 0, i32 0, i32 0, i32 0>
  ret <4 x double> %shuffle
}

define <4 x i64> @splat_mem_v4i64(i64* %ptr) {




  %a = load i64, i64* %ptr
  %v = insertelement <4 x i64> undef, i64 %a, i64 0
  %shuffle = shufflevector <4 x i64> %v, <4 x i64> undef, <4 x i32> <i32 0, i32 0, i32 0, i32 0>
  ret <4 x i64> %shuffle
}

define <4 x double> @splat_mem_v4f64_2(double* %p) {




  %1 = load double, double* %p
  %2 = insertelement <2 x double> undef, double %1, i32 0
  %3 = shufflevector <2 x double> %2, <2 x double> undef, <4 x i32> zeroinitializer
  ret <4 x double> %3
}

define <4 x double> @splat_v4f64(<2 x double> %r) {










  %1 = shufflevector <2 x double> %r, <2 x double> undef, <4 x i32> zeroinitializer
  ret <4 x double> %1
}

define <4 x i64> @splat_mem_v4i64_from_v2i64(<2 x i64>* %ptr) {










  %v = load <2 x i64>, <2 x i64>* %ptr
  %shuffle = shufflevector <2 x i64> %v, <2 x i64> undef, <4 x i32> <i32 0, i32 0, i32 0, i32 0>
  ret <4 x i64> %shuffle
}

define <4 x double> @splat_mem_v4f64_from_v2f64(<2 x double>* %ptr) {










  %v = load <2 x double>, <2 x double>* %ptr
  %shuffle = shufflevector <2 x double> %v, <2 x double> undef, <4 x i32> <i32 0, i32 0, i32 0, i32 0>
  ret <4 x double> %shuffle
}

define <4 x i64> @splat128_mem_v4i64_from_v2i64(<2 x i64>* %ptr) {





  %v = load <2 x i64>, <2 x i64>* %ptr
  %shuffle = shufflevector <2 x i64> %v, <2 x i64> undef, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  ret <4 x i64> %shuffle
}

define <4 x double> @splat128_mem_v4f64_from_v2f64(<2 x double>* %ptr) {





  %v = load <2 x double>, <2 x double>* %ptr
  %shuffle = shufflevector <2 x double> %v, <2 x double> undef, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  ret <4 x double> %shuffle
}

define <4 x double> @bitcast_v4f64_0426(<4 x double> %a, <4 x double> %b) {









  %shuffle64 = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 4, i32 0, i32 6, i32 2>
  %bitcast32 = bitcast <4 x double> %shuffle64 to <8 x float>
  %shuffle32 = shufflevector <8 x float> %bitcast32, <8 x float> undef, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %bitcast16 = bitcast <8 x float> %shuffle32 to <16 x i16>
  %shuffle16 = shufflevector <16 x i16> %bitcast16, <16 x i16> undef, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %bitcast64 = bitcast <16 x i16> %shuffle16 to <4 x double>
  ret <4 x double> %bitcast64
}

define <4 x i64> @concat_v4i64_0167(<4 x i64> %a0, <4 x i64> %a1) {









  %a0lo = shufflevector <4 x i64> %a0, <4 x i64> %a1, <2 x i32> <i32 0, i32 1>
  %a1hi = shufflevector <4 x i64> %a0, <4 x i64> %a1, <2 x i32> <i32 6, i32 7>
  %shuffle64 = shufflevector <2 x i64> %a0lo, <2 x i64> %a1hi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x i64> %shuffle64
}

define <4 x i64> @concat_v4i64_0145_bc(<4 x i64> %a0, <4 x i64> %a1) {




  %a0lo = shufflevector <4 x i64> %a0, <4 x i64> %a1, <2 x i32> <i32 0, i32 1>
  %a1lo = shufflevector <4 x i64> %a0, <4 x i64> %a1, <2 x i32> <i32 4, i32 5>
  %bc0lo = bitcast <2 x i64> %a0lo to <4 x i32>
  %bc1lo = bitcast <2 x i64> %a1lo to <4 x i32>
  %shuffle32 = shufflevector <4 x i32> %bc0lo, <4 x i32> %bc1lo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %shuffle64 = bitcast <8 x i32> %shuffle32 to <4 x i64>
  ret <4 x i64> %shuffle64
}

define <4 x i64> @insert_dup_mem_v4i64(i64* %ptr) {




  %tmp = load i64, i64* %ptr, align 1
  %tmp1 = insertelement <2 x i64> undef, i64 %tmp, i32 0
  %tmp2 = shufflevector <2 x i64> %tmp1, <2 x i64> undef, <4 x i32> zeroinitializer
  ret <4 x i64> %tmp2
}
