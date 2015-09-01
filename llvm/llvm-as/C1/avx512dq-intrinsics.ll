


declare <8 x i64> @llvm.x86.avx512.mask.cvtpd2qq.512(<8 x double>, <8 x i64>, i8, i32)

define <8 x i64>@test_int_x86_avx512_mask_cvt_pd2qq_512(<8 x double> %x0, <8 x i64> %x1, i8 %x2) {







  %res = call <8 x i64> @llvm.x86.avx512.mask.cvtpd2qq.512(<8 x double> %x0, <8 x i64> %x1, i8 %x2, i32 2)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.cvtpd2qq.512(<8 x double> %x0, <8 x i64> %x1, i8 -1, i32 0)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.cvtpd2uqq.512(<8 x double>, <8 x i64>, i8, i32)

define <8 x i64>@test_int_x86_avx512_mask_cvt_pd2uqq_512(<8 x double> %x0, <8 x i64> %x1, i8 %x2) {







  %res = call <8 x i64> @llvm.x86.avx512.mask.cvtpd2uqq.512(<8 x double> %x0, <8 x i64> %x1, i8 %x2, i32 2)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.cvtpd2uqq.512(<8 x double> %x0, <8 x i64> %x1, i8 -1, i32 0)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.cvtps2qq.512(<8 x float>, <8 x i64>, i8, i32)

define <8 x i64>@test_int_x86_avx512_mask_cvt_ps2qq_512(<8 x float> %x0, <8 x i64> %x1, i8 %x2) {







  %res = call <8 x i64> @llvm.x86.avx512.mask.cvtps2qq.512(<8 x float> %x0, <8 x i64> %x1, i8 %x2, i32 2)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.cvtps2qq.512(<8 x float> %x0, <8 x i64> %x1, i8 -1, i32 0)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.cvtps2uqq.512(<8 x float>, <8 x i64>, i8, i32)

define <8 x i64>@test_int_x86_avx512_mask_cvt_ps2uqq_512(<8 x float> %x0, <8 x i64> %x1, i8 %x2) {







  %res = call <8 x i64> @llvm.x86.avx512.mask.cvtps2uqq.512(<8 x float> %x0, <8 x i64> %x1, i8 %x2, i32 2)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.cvtps2uqq.512(<8 x float> %x0, <8 x i64> %x1, i8 -1, i32 0)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <8 x double> @llvm.x86.avx512.mask.cvtqq2pd.512(<8 x i64>, <8 x double>, i8, i32)

define <8 x double>@test_int_x86_avx512_mask_cvt_qq2pd_512(<8 x i64> %x0, <8 x double> %x1, i8 %x2) {







  %res = call <8 x double> @llvm.x86.avx512.mask.cvtqq2pd.512(<8 x i64> %x0, <8 x double> %x1, i8 %x2, i32 4)
  %res1 = call <8 x double> @llvm.x86.avx512.mask.cvtqq2pd.512(<8 x i64> %x0, <8 x double> %x1, i8 -1, i32 0)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}

declare <8 x float> @llvm.x86.avx512.mask.cvtqq2ps.512(<8 x i64>, <8 x float>, i8, i32)

define <8 x float>@test_int_x86_avx512_mask_cvt_qq2ps_512(<8 x i64> %x0, <8 x float> %x1, i8 %x2) {







  %res = call <8 x float> @llvm.x86.avx512.mask.cvtqq2ps.512(<8 x i64> %x0, <8 x float> %x1, i8 %x2, i32 4)
  %res1 = call <8 x float> @llvm.x86.avx512.mask.cvtqq2ps.512(<8 x i64> %x0, <8 x float> %x1, i8 -1, i32 0)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.cvttpd2qq.512(<8 x double>, <8 x i64>, i8, i32)

define <8 x i64>@test_int_x86_avx512_mask_cvtt_pd2qq_512(<8 x double> %x0, <8 x i64> %x1, i8 %x2) {







  %res = call <8 x i64> @llvm.x86.avx512.mask.cvttpd2qq.512(<8 x double> %x0, <8 x i64> %x1, i8 %x2, i32 4)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.cvttpd2qq.512(<8 x double> %x0, <8 x i64> %x1, i8 -1, i32 8)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.cvttpd2uqq.512(<8 x double>, <8 x i64>, i8, i32)

define <8 x i64>@test_int_x86_avx512_mask_cvtt_pd2uqq_512(<8 x double> %x0, <8 x i64> %x1, i8 %x2) {







  %res = call <8 x i64> @llvm.x86.avx512.mask.cvttpd2uqq.512(<8 x double> %x0, <8 x i64> %x1, i8 %x2, i32 4)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.cvttpd2uqq.512(<8 x double> %x0, <8 x i64> %x1, i8 -1, i32 8)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.cvttps2qq.512(<8 x float>, <8 x i64>, i8, i32)

define <8 x i64>@test_int_x86_avx512_mask_cvtt_ps2qq_512(<8 x float> %x0, <8 x i64> %x1, i8 %x2) {







  %res = call <8 x i64> @llvm.x86.avx512.mask.cvttps2qq.512(<8 x float> %x0, <8 x i64> %x1, i8 %x2, i32 4)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.cvttps2qq.512(<8 x float> %x0, <8 x i64> %x1, i8 -1, i32 8)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <8 x i64> @llvm.x86.avx512.mask.cvttps2uqq.512(<8 x float>, <8 x i64>, i8, i32)

define <8 x i64>@test_int_x86_avx512_mask_cvtt_ps2uqq_512(<8 x float> %x0, <8 x i64> %x1, i8 %x2) {







  %res = call <8 x i64> @llvm.x86.avx512.mask.cvttps2uqq.512(<8 x float> %x0, <8 x i64> %x1, i8 %x2, i32 4)
  %res1 = call <8 x i64> @llvm.x86.avx512.mask.cvttps2uqq.512(<8 x float> %x0, <8 x i64> %x1, i8 -1, i32 8)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

declare <8 x double> @llvm.x86.avx512.mask.cvtuqq2pd.512(<8 x i64>, <8 x double>, i8, i32)

define <8 x double>@test_int_x86_avx512_mask_cvt_uqq2pd_512(<8 x i64> %x0, <8 x double> %x1, i8 %x2) {







  %res = call <8 x double> @llvm.x86.avx512.mask.cvtuqq2pd.512(<8 x i64> %x0, <8 x double> %x1, i8 %x2, i32 4)
  %res1 = call <8 x double> @llvm.x86.avx512.mask.cvtuqq2pd.512(<8 x i64> %x0, <8 x double> %x1, i8 -1, i32 0)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}

declare <8 x float> @llvm.x86.avx512.mask.cvtuqq2ps.512(<8 x i64>, <8 x float>, i8, i32)

define <8 x float>@test_int_x86_avx512_mask_cvt_uqq2ps_512(<8 x i64> %x0, <8 x float> %x1, i8 %x2) {







  %res = call <8 x float> @llvm.x86.avx512.mask.cvtuqq2ps.512(<8 x i64> %x0, <8 x float> %x1, i8 %x2, i32 4)
  %res1 = call <8 x float> @llvm.x86.avx512.mask.cvtuqq2ps.512(<8 x i64> %x0, <8 x float> %x1, i8 -1, i32 0)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <8 x double> @llvm.x86.avx512.mask.reduce.pd.512(<8 x double>, i32, <8 x double>, i8, i32)






define <8 x double>@test_int_x86_avx512_mask_reduce_pd_512(<8 x double> %x0, <8 x double> %x2, i8 %x3) {
  %res = call <8 x double> @llvm.x86.avx512.mask.reduce.pd.512(<8 x double> %x0, i32 8, <8 x double> %x2, i8 %x3, i32 4)
  %res1 = call <8 x double> @llvm.x86.avx512.mask.reduce.pd.512(<8 x double> %x0, i32 4, <8 x double> %x2, i8 -1, i32 8)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}

declare <16 x float> @llvm.x86.avx512.mask.reduce.ps.512(<16 x float>, i32, <16 x float>, i16, i32)







define <16 x float>@test_int_x86_avx512_mask_reduce_ps_512(<16 x float> %x0, <16 x float> %x2, i16 %x3) {
  %res = call <16 x float> @llvm.x86.avx512.mask.reduce.ps.512(<16 x float> %x0, i32 44, <16 x float> %x2, i16 %x3, i32 8)
  %res1 = call <16 x float> @llvm.x86.avx512.mask.reduce.ps.512(<16 x float> %x0, i32 11, <16 x float> %x2, i16 -1, i32 4)
  %res2 = fadd <16 x float> %res, %res1
  ret <16 x float> %res2
}

declare <8 x double> @llvm.x86.avx512.mask.range.pd.512(<8 x double>, <8 x double>, i32, <8 x double>, i8, i32)







define <8 x double>@test_int_x86_avx512_mask_range_pd_512(<8 x double> %x0, <8 x double> %x1, <8 x double> %x3, i8 %x4) {
  %res = call <8 x double> @llvm.x86.avx512.mask.range.pd.512(<8 x double> %x0, <8 x double> %x1, i32 8, <8 x double> %x3, i8 %x4, i32 4)
  %res1 = call <8 x double> @llvm.x86.avx512.mask.range.pd.512(<8 x double> %x0, <8 x double> %x1, i32 4, <8 x double> %x3, i8 -1, i32 8)
  %res2 = fadd <8 x double> %res, %res1
  ret <8 x double> %res2
}

declare <16 x float> @llvm.x86.avx512.mask.range.ps.512(<16 x float>, <16 x float>, i32, <16 x float>, i16, i32)








define <16 x float>@test_int_x86_avx512_mask_range_ps_512(<16 x float> %x0, <16 x float> %x1, <16 x float> %x3, i16 %x4) {
  %res = call <16 x float> @llvm.x86.avx512.mask.range.ps.512(<16 x float> %x0, <16 x float> %x1, i32 88, <16 x float> %x3, i16 %x4, i32 4)
  %res1 = call <16 x float> @llvm.x86.avx512.mask.range.ps.512(<16 x float> %x0, <16 x float> %x1, i32 4, <16 x float> %x3, i16 -1, i32 8)
  %res2 = fadd <16 x float> %res, %res1
  ret <16 x float> %res2
}

declare <4 x float> @llvm.x86.avx512.mask.reduce.ss(<4 x float>, <4 x float>,<4 x float>, i8, i32, i32)








define <4 x float>@test_int_x86_avx512_mask_reduce_ss(<4 x float> %x0, <4 x float> %x1, <4 x float> %x3, i8 %x4) {
  %res = call <4 x float> @llvm.x86.avx512.mask.reduce.ss(<4 x float> %x0, <4 x float> %x1, <4 x float> %x3, i8 %x4, i32 4, i32 4)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.reduce.ss(<4 x float> %x0, <4 x float> %x1, <4 x float> %x3, i8 -1, i32 4, i32 8)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <4 x float> @llvm.x86.avx512.mask.range.ss(<4 x float>, <4 x float>,<4 x float>, i8, i32, i32)








define <4 x float>@test_int_x86_avx512_mask_range_ss(<4 x float> %x0, <4 x float> %x1, <4 x float> %x3, i8 %x4) {
  %res = call <4 x float> @llvm.x86.avx512.mask.range.ss(<4 x float> %x0, <4 x float> %x1, <4 x float> %x3, i8 %x4, i32 4, i32 8)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.range.ss(<4 x float> %x0, <4 x float> %x1, <4 x float> %x3, i8 -1, i32 4, i32 8)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <2 x double> @llvm.x86.avx512.mask.reduce.sd(<2 x double>, <2 x double>,<2 x double>, i8, i32, i32)








define <2 x double>@test_int_x86_avx512_mask_reduce_sd(<2 x double> %x0, <2 x double> %x1, <2 x double> %x3, i8 %x4) {
  %res = call <2 x double> @llvm.x86.avx512.mask.reduce.sd(<2 x double> %x0, <2 x double> %x1, <2 x double> %x3, i8 %x4, i32 4, i32 4)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.reduce.sd(<2 x double> %x0, <2 x double> %x1, <2 x double> %x3, i8 -1, i32 4, i32 8)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <2 x double> @llvm.x86.avx512.mask.range.sd(<2 x double>, <2 x double>,<2 x double>, i8, i32, i32)







define <2 x double>@test_int_x86_avx512_mask_range_sd(<2 x double> %x0, <2 x double> %x1, <2 x double> %x3, i8 %x4) {
  %res = call <2 x double> @llvm.x86.avx512.mask.range.sd(<2 x double> %x0, <2 x double> %x1, <2 x double> %x3, i8 %x4, i32 4, i32 4)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.range.sd(<2 x double> %x0, <2 x double> %x1, <2 x double> %x3, i8 -1, i32 4, i32 8)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}
