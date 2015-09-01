






target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-unknown"

define <2 x i64> @shuffle_v2i64_00(<2 x i64> %a, <2 x i64> %b) {














  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 0, i32 0>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_10(<2 x i64> %a, <2 x i64> %b) {









  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 1, i32 0>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_11(<2 x i64> %a, <2 x i64> %b) {









  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 1, i32 1>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_22(<2 x i64> %a, <2 x i64> %b) {














  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 2, i32 2>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_32(<2 x i64> %a, <2 x i64> %b) {









  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 3, i32 2>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_33(<2 x i64> %a, <2 x i64> %b) {









  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 3, i32 3>
  ret <2 x i64> %shuffle
}

define <2 x double> @shuffle_v2f64_00(<2 x double> %a, <2 x double> %b) {
























  %shuffle = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 0, i32 0>
  ret <2 x double> %shuffle
}
define <2 x double> @shuffle_v2f64_10(<2 x double> %a, <2 x double> %b) {









  %shuffle = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 1, i32 0>
  ret <2 x double> %shuffle
}
define <2 x double> @shuffle_v2f64_11(<2 x double> %a, <2 x double> %b) {









  %shuffle = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 1, i32 1>
  ret <2 x double> %shuffle
}
define <2 x double> @shuffle_v2f64_22(<2 x double> %a, <2 x double> %b) {

























  %shuffle = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 2, i32 2>
  ret <2 x double> %shuffle
}
define <2 x double> @shuffle_v2f64_32(<2 x double> %a, <2 x double> %b) {










  %shuffle = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 3, i32 2>
  ret <2 x double> %shuffle
}
define <2 x double> @shuffle_v2f64_33(<2 x double> %a, <2 x double> %b) {










  %shuffle = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 3, i32 3>
  ret <2 x double> %shuffle
}
define <2 x double> @shuffle_v2f64_03(<2 x double> %a, <2 x double> %b) {



























  %shuffle = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %shuffle
}
define <2 x double> @shuffle_v2f64_21(<2 x double> %a, <2 x double> %b) {
























  %shuffle = shufflevector <2 x double> %a, <2 x double> %b, <2 x i32> <i32 2, i32 1>
  ret <2 x double> %shuffle
}


define <2 x i64> @shuffle_v2i64_02(<2 x i64> %a, <2 x i64> %b) {









  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 0, i32 2>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_02_copy(<2 x i64> %nonce, <2 x i64> %a, <2 x i64> %b) {










  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 0, i32 2>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_03(<2 x i64> %a, <2 x i64> %b) {
































  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_03_copy(<2 x i64> %nonce, <2 x i64> %a, <2 x i64> %b) {

































  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_12(<2 x i64> %a, <2 x i64> %b) {


























  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 1, i32 2>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_12_copy(<2 x i64> %nonce, <2 x i64> %a, <2 x i64> %b) {




























  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 1, i32 2>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_13(<2 x i64> %a, <2 x i64> %b) {









  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_13_copy(<2 x i64> %nonce, <2 x i64> %a, <2 x i64> %b) {










  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_20(<2 x i64> %a, <2 x i64> %b) {










  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 2, i32 0>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_20_copy(<2 x i64> %nonce, <2 x i64> %a, <2 x i64> %b) {










  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 2, i32 0>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_21(<2 x i64> %a, <2 x i64> %b) {





























  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 2, i32 1>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_21_copy(<2 x i64> %nonce, <2 x i64> %a, <2 x i64> %b) {

































  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 2, i32 1>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_30(<2 x i64> %a, <2 x i64> %b) {


























  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 3, i32 0>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_30_copy(<2 x i64> %nonce, <2 x i64> %a, <2 x i64> %b) {




























  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 3, i32 0>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_31(<2 x i64> %a, <2 x i64> %b) {










  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 3, i32 1>
  ret <2 x i64> %shuffle
}
define <2 x i64> @shuffle_v2i64_31_copy(<2 x i64> %nonce, <2 x i64> %a, <2 x i64> %b) {










  %shuffle = shufflevector <2 x i64> %a, <2 x i64> %b, <2 x i32> <i32 3, i32 1>
  ret <2 x i64> %shuffle
}

define <2 x i64> @shuffle_v2i64_0z(<2 x i64> %a) {









  %shuffle = shufflevector <2 x i64> %a, <2 x i64> zeroinitializer, <2 x i32> <i32 0, i32 3>
  ret <2 x i64> %shuffle
}

define <2 x i64> @shuffle_v2i64_1z(<2 x i64> %a) {









  %shuffle = shufflevector <2 x i64> %a, <2 x i64> zeroinitializer, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}

define <2 x i64> @shuffle_v2i64_z0(<2 x i64> %a) {









  %shuffle = shufflevector <2 x i64> %a, <2 x i64> zeroinitializer, <2 x i32> <i32 2, i32 0>
  ret <2 x i64> %shuffle
}

define <2 x i64> @shuffle_v2i64_z1(<2 x i64> %a) {



































  %shuffle = shufflevector <2 x i64> %a, <2 x i64> zeroinitializer, <2 x i32> <i32 2, i32 1>
  ret <2 x i64> %shuffle
}

define <2 x double> @shuffle_v2f64_0z(<2 x double> %a) {









  %shuffle = shufflevector <2 x double> %a, <2 x double> zeroinitializer, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %shuffle
}

define <2 x double> @shuffle_v2f64_1z(<2 x double> %a) {











  %shuffle = shufflevector <2 x double> %a, <2 x double> zeroinitializer, <2 x i32> <i32 1, i32 3>
  ret <2 x double> %shuffle
}

define <2 x double> @shuffle_v2f64_z0(<2 x double> %a) {












  %shuffle = shufflevector <2 x double> %a, <2 x double> zeroinitializer, <2 x i32> <i32 2, i32 0>
  ret <2 x double> %shuffle
}

define <2 x double> @shuffle_v2f64_z1(<2 x double> %a) {





























  %shuffle = shufflevector <2 x double> %a, <2 x double> zeroinitializer, <2 x i32> <i32 2, i32 1>
  ret <2 x double> %shuffle
}

define <2 x double> @shuffle_v2f64_bitcast_1z(<2 x double> %a) {











  %shuffle64 = shufflevector <2 x double> %a, <2 x double> zeroinitializer, <2 x i32> <i32 2, i32 1>
  %bitcast32 = bitcast <2 x double> %shuffle64 to <4 x float>
  %shuffle32 = shufflevector <4 x float> %bitcast32, <4 x float> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %bitcast64 = bitcast <4 x float> %shuffle32 to <2 x double>
  ret <2 x double> %bitcast64
}

define <2 x i64> @insert_reg_and_zero_v2i64(i64 %a) {









  %v = insertelement <2 x i64> undef, i64 %a, i32 0
  %shuffle = shufflevector <2 x i64> %v, <2 x i64> zeroinitializer, <2 x i32> <i32 0, i32 3>
  ret <2 x i64> %shuffle
}

define <2 x i64> @insert_mem_and_zero_v2i64(i64* %ptr) {









  %a = load i64, i64* %ptr
  %v = insertelement <2 x i64> undef, i64 %a, i32 0
  %shuffle = shufflevector <2 x i64> %v, <2 x i64> zeroinitializer, <2 x i32> <i32 0, i32 3>
  ret <2 x i64> %shuffle
}

define <2 x double> @insert_reg_and_zero_v2f64(double %a) {









  %v = insertelement <2 x double> undef, double %a, i32 0
  %shuffle = shufflevector <2 x double> %v, <2 x double> zeroinitializer, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %shuffle
}

define <2 x double> @insert_mem_and_zero_v2f64(double* %ptr) {









  %a = load double, double* %ptr
  %v = insertelement <2 x double> undef, double %a, i32 0
  %shuffle = shufflevector <2 x double> %v, <2 x double> zeroinitializer, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %shuffle
}

define <2 x i64> @insert_reg_lo_v2i64(i64 %a, <2 x i64> %b) {



































  %v = insertelement <2 x i64> undef, i64 %a, i32 0
  %shuffle = shufflevector <2 x i64> %v, <2 x i64> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x i64> %shuffle
}

define <2 x i64> @insert_mem_lo_v2i64(i64* %ptr, <2 x i64> %b) {
































  %a = load i64, i64* %ptr
  %v = insertelement <2 x i64> undef, i64 %a, i32 0
  %shuffle = shufflevector <2 x i64> %v, <2 x i64> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x i64> %shuffle
}

define <2 x i64> @insert_reg_hi_v2i64(i64 %a, <2 x i64> %b) {











  %v = insertelement <2 x i64> undef, i64 %a, i32 0
  %shuffle = shufflevector <2 x i64> %v, <2 x i64> %b, <2 x i32> <i32 2, i32 0>
  ret <2 x i64> %shuffle
}

define <2 x i64> @insert_mem_hi_v2i64(i64* %ptr, <2 x i64> %b) {











  %a = load i64, i64* %ptr
  %v = insertelement <2 x i64> undef, i64 %a, i32 0
  %shuffle = shufflevector <2 x i64> %v, <2 x i64> %b, <2 x i32> <i32 2, i32 0>
  ret <2 x i64> %shuffle
}

define <2 x double> @insert_reg_lo_v2f64(double %a, <2 x double> %b) {










  %v = insertelement <2 x double> undef, double %a, i32 0
  %shuffle = shufflevector <2 x double> %v, <2 x double> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %shuffle
}

define <2 x double> @insert_mem_lo_v2f64(double* %ptr, <2 x double> %b) {









  %a = load double, double* %ptr
  %v = insertelement <2 x double> undef, double %a, i32 0
  %shuffle = shufflevector <2 x double> %v, <2 x double> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %shuffle
}

define <2 x double> @insert_reg_hi_v2f64(double %a, <2 x double> %b) {










  %v = insertelement <2 x double> undef, double %a, i32 0
  %shuffle = shufflevector <2 x double> %v, <2 x double> %b, <2 x i32> <i32 2, i32 0>
  ret <2 x double> %shuffle
}

define <2 x double> @insert_mem_hi_v2f64(double* %ptr, <2 x double> %b) {









  %a = load double, double* %ptr
  %v = insertelement <2 x double> undef, double %a, i32 0
  %shuffle = shufflevector <2 x double> %v, <2 x double> %b, <2 x i32> <i32 2, i32 0>
  ret <2 x double> %shuffle
}

define <2 x double> @insert_dup_reg_v2f64(double %a) {


























  %v = insertelement <2 x double> undef, double %a, i32 0
  %shuffle = shufflevector <2 x double> %v, <2 x double> undef, <2 x i32> <i32 0, i32 0>
  ret <2 x double> %shuffle
}
define <2 x double> @insert_dup_mem_v2f64(double* %ptr) {

























  %a = load double, double* %ptr
  %v = insertelement <2 x double> undef, double %a, i32 0
  %shuffle = shufflevector <2 x double> %v, <2 x double> undef, <2 x i32> <i32 0, i32 0>
  ret <2 x double> %shuffle
}

define <2 x i64> @insert_dup_mem_v2i64(i64* %ptr) {
















  %tmp = load i64, i64* %ptr, align 1
  %tmp1 = insertelement <2 x i64> undef, i64 %tmp, i32 0
  %tmp2 = shufflevector <2 x i64> %tmp1, <2 x i64> undef, <2 x i32> zeroinitializer
  ret <2 x i64> %tmp2
}

define <2 x double> @shuffle_mem_v2f64_10(<2 x double>* %ptr) {










  %a = load <2 x double>, <2 x double>* %ptr
  %shuffle = shufflevector <2 x double> %a, <2 x double> undef, <2 x i32> <i32 1, i32 0>
  ret <2 x double> %shuffle
}
