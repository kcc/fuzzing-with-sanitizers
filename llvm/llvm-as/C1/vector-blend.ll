







define <4 x float> @vsel_float(<4 x float> %v1, <4 x float> %v2) {





















entry:
  %vsel = select <4 x i1> <i1 true, i1 false, i1 true, i1 false>, <4 x float> %v1, <4 x float> %v2
  ret <4 x float> %vsel
}

define <4 x float> @vsel_float2(<4 x float> %v1, <4 x float> %v2) {





















entry:
  %vsel = select <4 x i1> <i1 true, i1 false, i1 false, i1 false>, <4 x float> %v1, <4 x float> %v2
  ret <4 x float> %vsel
}

define <4 x i8> @vsel_4xi8(<4 x i8> %v1, <4 x i8> %v2) {


























entry:
  %vsel = select <4 x i1> <i1 true, i1 true, i1 false, i1 true>, <4 x i8> %v1, <4 x i8> %v2
  ret <4 x i8> %vsel
}

define <4 x i16> @vsel_4xi16(<4 x i16> %v1, <4 x i16> %v2) {




























entry:
  %vsel = select <4 x i1> <i1 true, i1 false, i1 true, i1 true>, <4 x i16> %v1, <4 x i16> %v2
  ret <4 x i16> %vsel
}

define <4 x i32> @vsel_i32(<4 x i32> %v1, <4 x i32> %v2) {




























entry:
  %vsel = select <4 x i1> <i1 true, i1 false, i1 true, i1 false>, <4 x i32> %v1, <4 x i32> %v2
  ret <4 x i32> %vsel
}

define <2 x double> @vsel_double(<2 x double> %v1, <2 x double> %v2) {





















entry:
  %vsel = select <2 x i1> <i1 true, i1 false>, <2 x double> %v1, <2 x double> %v2
  ret <2 x double> %vsel
}

define <2 x i64> @vsel_i64(<2 x i64> %v1, <2 x i64> %v2) {


























entry:
  %vsel = select <2 x i1> <i1 true, i1 false>, <2 x i64> %v1, <2 x i64> %v2
  ret <2 x i64> %vsel
}

define <8 x i16> @vsel_8xi16(<8 x i16> %v1, <8 x i16> %v2) {



























entry:
  %vsel = select <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <8 x i16> %v1, <8 x i16> %v2
  ret <8 x i16> %vsel
}

define <16 x i8> @vsel_i8(<16 x i8> %v1, <16 x i8> %v2) {




























entry:
  %vsel = select <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <16 x i8> %v1, <16 x i8> %v2
  ret <16 x i8> %vsel
}




define <8 x float> @vsel_float8(<8 x float> %v1, <8 x float> %v2) {


























entry:
  %vsel = select <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <8 x float> %v1, <8 x float> %v2
  ret <8 x float> %vsel
}

define <8 x i32> @vsel_i328(<8 x i32> %v1, <8 x i32> %v2) {































entry:
  %vsel = select <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <8 x i32> %v1, <8 x i32> %v2
  ret <8 x i32> %vsel
}

define <8 x double> @vsel_double8(<8 x double> %v1, <8 x double> %v2) {

































entry:
  %vsel = select <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <8 x double> %v1, <8 x double> %v2
  ret <8 x double> %vsel
}

define <8 x i64> @vsel_i648(<8 x i64> %v1, <8 x i64> %v2) {







































entry:
  %vsel = select <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <8 x i64> %v1, <8 x i64> %v2
  ret <8 x i64> %vsel
}

define <4 x double> @vsel_double4(<4 x double> %v1, <4 x double> %v2) {


























entry:
  %vsel = select <4 x i1> <i1 true, i1 false, i1 true, i1 false>, <4 x double> %v1, <4 x double> %v2
  ret <4 x double> %vsel
}

define <2 x double> @testa(<2 x double> %x, <2 x double> %y) {
































entry:
  %max_is_x = fcmp oge <2 x double> %x, %y
  %max = select <2 x i1> %max_is_x, <2 x double> %x, <2 x double> %y
  ret <2 x double> %max
}

define <2 x double> @testb(<2 x double> %x, <2 x double> %y) {
































entry:
  %min_is_x = fcmp ult <2 x double> %x, %y
  %min = select <2 x i1> %min_is_x, <2 x double> %x, <2 x double> %y
  ret <2 x double> %min
}



define <4 x double> @constant_blendvpd_avx(<4 x double> %xy, <4 x double> %ab) {
























entry:
  %select = select <4 x i1> <i1 false, i1 false, i1 true, i1 false>, <4 x double> %xy, <4 x double> %ab
  ret <4 x double> %select
}

define <8 x float> @constant_blendvps_avx(<8 x float> %xyzw, <8 x float> %abcd) {






























entry:
  %select = select <8 x i1> <i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>, <8 x float> %xyzw, <8 x float> %abcd
  ret <8 x float> %select
}

define <32 x i8> @constant_pblendvb_avx2(<32 x i8> %xyzw, <32 x i8> %abcd) {















































entry:
  %select = select <32 x i1> <i1 false, i1 false, i1 true, i1 false, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 true, i1 true, i1 true, i1 false>, <32 x i8> %xyzw, <32 x i8> %abcd
  ret <32 x i8> %select
}

declare <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float>, <8 x float>, <8 x float>)
declare <4 x double> @llvm.x86.avx.blendv.pd.256(<4 x double>, <4 x double>, <4 x double>)


define <4 x float> @blend_shufflevector_4xfloat(<4 x float> %a, <4 x float> %b) {





















entry:
  %select = shufflevector <4 x float> %a, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  ret <4 x float> %select
}

define <8 x float> @blend_shufflevector_8xfloat(<8 x float> %a, <8 x float> %b) {




























entry:
  %select = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 6, i32 15>
  ret <8 x float> %select
}

define <4 x double> @blend_shufflevector_4xdouble(<4 x double> %a, <4 x double> %b) {





















entry:
  %select = shufflevector <4 x double> %a, <4 x double> %b, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  ret <4 x double> %select
}

define <4 x i64> @blend_shufflevector_4xi64(<4 x i64> %a, <4 x i64> %b) {



























entry:
  %select = shufflevector <4 x i64> %a, <4 x i64> %b, <4 x i32> <i32 4, i32 1, i32 6, i32 7>
  ret <4 x i64> %select
}
