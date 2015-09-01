

declare <16 x float> @llvm.x86.avx512.gather.dps.512 (<16 x float>, i8*, <16 x i32>, i16, i32)
declare void @llvm.x86.avx512.scatter.dps.512 (i8*, i16, <16 x i32>, <16 x float>, i32)
declare <8 x double> @llvm.x86.avx512.gather.dpd.512 (<8 x double>, i8*, <8 x i32>, i8, i32)
declare void @llvm.x86.avx512.scatter.dpd.512 (i8*, i8, <8 x i32>, <8 x double>, i32)

declare <8 x float> @llvm.x86.avx512.gather.qps.512 (<8 x float>, i8*, <8 x i64>, i8, i32)
declare void @llvm.x86.avx512.scatter.qps.512 (i8*, i8, <8 x i64>, <8 x float>, i32)
declare <8 x double> @llvm.x86.avx512.gather.qpd.512 (<8 x double>, i8*, <8 x i64>, i8, i32)
declare void @llvm.x86.avx512.scatter.qpd.512 (i8*, i8, <8 x i64>, <8 x double>, i32)

define void @gather_mask_dps(<16 x i32> %ind, <16 x float> %src, i16 %mask, i8* %base, i8* %stbuf)  {








  %x = call <16 x float> @llvm.x86.avx512.gather.dps.512 (<16 x float> %src, i8* %base, <16 x i32>%ind, i16 %mask, i32 4)
  %ind2 = add <16 x i32> %ind, <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  call void @llvm.x86.avx512.scatter.dps.512 (i8* %stbuf, i16 %mask, <16 x i32>%ind2, <16 x float> %x, i32 4)
  ret void
}

define void @gather_mask_dpd(<8 x i32> %ind, <8 x double> %src, i8 %mask, i8* %base, i8* %stbuf)  {








  %x = call <8 x double> @llvm.x86.avx512.gather.dpd.512 (<8 x double> %src, i8* %base, <8 x i32>%ind, i8 %mask, i32 4)
  %ind2 = add <8 x i32> %ind, <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  call void @llvm.x86.avx512.scatter.dpd.512 (i8* %stbuf, i8 %mask, <8 x i32>%ind2, <8 x double> %x, i32 4)
  ret void
}

define void @gather_mask_qps(<8 x i64> %ind, <8 x float> %src, i8 %mask, i8* %base, i8* %stbuf)  {








  %x = call <8 x float> @llvm.x86.avx512.gather.qps.512 (<8 x float> %src, i8* %base, <8 x i64>%ind, i8 %mask, i32 4)
  %ind2 = add <8 x i64> %ind, <i64 0, i64 1, i64 2, i64 3, i64 0, i64 1, i64 2, i64 3>
  call void @llvm.x86.avx512.scatter.qps.512 (i8* %stbuf, i8 %mask, <8 x i64>%ind2, <8 x float> %x, i32 4)
  ret void
}

define void @gather_mask_qpd(<8 x i64> %ind, <8 x double> %src, i8 %mask, i8* %base, i8* %stbuf)  {








  %x = call <8 x double> @llvm.x86.avx512.gather.qpd.512 (<8 x double> %src, i8* %base, <8 x i64>%ind, i8 %mask, i32 4)
  %ind2 = add <8 x i64> %ind, <i64 0, i64 1, i64 2, i64 3, i64 0, i64 1, i64 2, i64 3>
  call void @llvm.x86.avx512.scatter.qpd.512 (i8* %stbuf, i8 %mask, <8 x i64>%ind2, <8 x double> %x, i32 4)
  ret void
}



declare <16 x i32> @llvm.x86.avx512.gather.dpi.512 (<16 x i32>, i8*, <16 x i32>, i16, i32)
declare void @llvm.x86.avx512.scatter.dpi.512 (i8*, i16, <16 x i32>, <16 x i32>, i32)
declare <8 x i64> @llvm.x86.avx512.gather.dpq.512 (<8 x i64>, i8*, <8 x i32>, i8, i32)
declare void @llvm.x86.avx512.scatter.dpq.512 (i8*, i8, <8 x i32>, <8 x i64>, i32)

declare <8 x i32> @llvm.x86.avx512.gather.qpi.512 (<8 x i32>, i8*, <8 x i64>, i8, i32)
declare void @llvm.x86.avx512.scatter.qpi.512 (i8*, i8, <8 x i64>, <8 x i32>, i32)
declare <8 x i64> @llvm.x86.avx512.gather.qpq.512 (<8 x i64>, i8*, <8 x i64>, i8, i32)
declare void @llvm.x86.avx512.scatter.qpq.512 (i8*, i8, <8 x i64>, <8 x i64>, i32)

define void @gather_mask_dd(<16 x i32> %ind, <16 x i32> %src, i16 %mask, i8* %base, i8* %stbuf)  {








  %x = call <16 x i32> @llvm.x86.avx512.gather.dpi.512 (<16 x i32> %src, i8* %base, <16 x i32>%ind, i16 %mask, i32 4)
  %ind2 = add <16 x i32> %ind, <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  call void @llvm.x86.avx512.scatter.dpi.512 (i8* %stbuf, i16 %mask, <16 x i32>%ind2, <16 x i32> %x, i32 4)
  ret void
}

define void @gather_mask_qd(<8 x i64> %ind, <8 x i32> %src, i8 %mask, i8* %base, i8* %stbuf)  {








  %x = call <8 x i32> @llvm.x86.avx512.gather.qpi.512 (<8 x i32> %src, i8* %base, <8 x i64>%ind, i8 %mask, i32 4)
  %ind2 = add <8 x i64> %ind, <i64 0, i64 1, i64 2, i64 3, i64 0, i64 1, i64 2, i64 3>
  call void @llvm.x86.avx512.scatter.qpi.512 (i8* %stbuf, i8 %mask, <8 x i64>%ind2, <8 x i32> %x, i32 4)
  ret void
}

define void @gather_mask_qq(<8 x i64> %ind, <8 x i64> %src, i8 %mask, i8* %base, i8* %stbuf)  {








  %x = call <8 x i64> @llvm.x86.avx512.gather.qpq.512 (<8 x i64> %src, i8* %base, <8 x i64>%ind, i8 %mask, i32 4)
  %ind2 = add <8 x i64> %ind, <i64 0, i64 1, i64 2, i64 3, i64 0, i64 1, i64 2, i64 3>
  call void @llvm.x86.avx512.scatter.qpq.512 (i8* %stbuf, i8 %mask, <8 x i64>%ind2, <8 x i64> %x, i32 4)
  ret void
}

define void @gather_mask_dq(<8 x i32> %ind, <8 x i64> %src, i8 %mask, i8* %base, i8* %stbuf)  {








  %x = call <8 x i64> @llvm.x86.avx512.gather.dpq.512 (<8 x i64> %src, i8* %base, <8 x i32>%ind, i8 %mask, i32 4)
  %ind2 = add <8 x i32> %ind, <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  call void @llvm.x86.avx512.scatter.dpq.512 (i8* %stbuf, i8 %mask, <8 x i32>%ind2, <8 x i64> %x, i32 4)
  ret void
}

define void @gather_mask_dpd_execdomain(<8 x i32> %ind, <8 x double> %src, i8 %mask, i8* %base, <8 x double>* %stbuf)  {






  %x = call <8 x double> @llvm.x86.avx512.gather.dpd.512 (<8 x double> %src, i8* %base, <8 x i32>%ind, i8 %mask, i32 4)
  store <8 x double> %x, <8 x double>* %stbuf
  ret void
}

define void @gather_mask_qpd_execdomain(<8 x i64> %ind, <8 x double> %src, i8 %mask, i8* %base, <8 x double>* %stbuf)  {






  %x = call <8 x double> @llvm.x86.avx512.gather.qpd.512 (<8 x double> %src, i8* %base, <8 x i64>%ind, i8 %mask, i32 4)
  store <8 x double> %x, <8 x double>* %stbuf
  ret void
}

define <16 x float> @gather_mask_dps_execdomain(<16 x i32> %ind, <16 x float> %src, i16 %mask, i8* %base)  {






  %res = call <16 x float> @llvm.x86.avx512.gather.dps.512 (<16 x float> %src, i8* %base, <16 x i32>%ind, i16 %mask, i32 4)
  ret <16 x float> %res
}

define <8 x float> @gather_mask_qps_execdomain(<8 x i64> %ind, <8 x float> %src, i8 %mask, i8* %base)  {






  %res = call <8 x float> @llvm.x86.avx512.gather.qps.512 (<8 x float> %src, i8* %base, <8 x i64>%ind, i8 %mask, i32 4)
  ret <8 x float> %res
}

define void @scatter_mask_dpd_execdomain(<8 x i32> %ind, <8 x double>* %src, i8 %mask, i8* %base, i8* %stbuf)  {






  %x = load <8 x double>, <8 x double>* %src, align 64
  call void @llvm.x86.avx512.scatter.dpd.512 (i8* %stbuf, i8 %mask, <8 x i32>%ind, <8 x double> %x, i32 4)
  ret void
}

define void @scatter_mask_qpd_execdomain(<8 x i64> %ind, <8 x double>* %src, i8 %mask, i8* %base, i8* %stbuf)  {






  %x = load <8 x double>, <8 x double>* %src, align 64
  call void @llvm.x86.avx512.scatter.qpd.512 (i8* %stbuf, i8 %mask, <8 x i64>%ind, <8 x double> %x, i32 4)
  ret void
}

define void @scatter_mask_dps_execdomain(<16 x i32> %ind, <16 x float>* %src, i16 %mask, i8* %base, i8* %stbuf)  {






  %x = load <16 x float>, <16 x float>* %src, align 64
  call void @llvm.x86.avx512.scatter.dps.512 (i8* %stbuf, i16 %mask, <16 x i32>%ind, <16 x float> %x, i32 4)
  ret void
}

define void @scatter_mask_qps_execdomain(<8 x i64> %ind, <8 x float>* %src, i8 %mask, i8* %base, i8* %stbuf)  {






  %x = load <8 x float>, <8 x float>* %src, align 32
  call void @llvm.x86.avx512.scatter.qps.512 (i8* %stbuf, i8 %mask, <8 x i64>%ind, <8 x float> %x, i32 4)
  ret void
}

define void @gather_qps(<8 x i64> %ind, <8 x float> %src, i8* %base, i8* %stbuf)  {








  %x = call <8 x float> @llvm.x86.avx512.gather.qps.512 (<8 x float> %src, i8* %base, <8 x i64>%ind, i8 -1, i32 4)
  %ind2 = add <8 x i64> %ind, <i64 0, i64 1, i64 2, i64 3, i64 0, i64 1, i64 2, i64 3>
  call void @llvm.x86.avx512.scatter.qps.512 (i8* %stbuf, i8 -1, <8 x i64>%ind2, <8 x float> %x, i32 4)
  ret void
}

declare  void @llvm.x86.avx512.gatherpf.qps.512(i8, <8 x i64>, i8* , i32, i32)
declare  void @llvm.x86.avx512.scatterpf.qps.512(i8, <8 x i64>, i8* , i32, i32)
define void @prefetch(<8 x i64> %ind, i8* %base) {








  call void @llvm.x86.avx512.gatherpf.qps.512(i8 -1, <8 x i64> %ind, i8* %base, i32 4, i32 0)
  call void @llvm.x86.avx512.gatherpf.qps.512(i8 -1, <8 x i64> %ind, i8* %base, i32 4, i32 1)
  call void @llvm.x86.avx512.scatterpf.qps.512(i8 -1, <8 x i64> %ind, i8* %base, i32 2, i32 0)
  call void @llvm.x86.avx512.scatterpf.qps.512(i8 -1, <8 x i64> %ind, i8* %base, i32 2, i32 1)
  ret void
}


declare <2 x double> @llvm.x86.avx512.gather3div2.df(<2 x double>, i8*, <2 x i64>, i8, i32)

define <2 x double>@test_int_x86_avx512_gather3div2_df(<2 x double> %x0, i8* %x1, <2 x i64> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.gather3div2.df(<2 x double> %x0, i8* %x1, <2 x i64> %x2, i8 %x3, i32 4)
  %res1 = call <2 x double> @llvm.x86.avx512.gather3div2.df(<2 x double> %x0, i8* %x1, <2 x i64> %x2, i8 -1, i32 0)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <4 x i32> @llvm.x86.avx512.gather3div2.di(<2 x i64>, i8*, <2 x i64>, i8, i32)

define <4 x i32>@test_int_x86_avx512_gather3div2_di(<2 x i64> %x0, i8* %x1, <2 x i64> %x2, i8 %x3) {






  %res = call <4 x i32> @llvm.x86.avx512.gather3div2.di(<2 x i64> %x0, i8* %x1, <2 x i64> %x2, i8 %x3, i32 8)
  %res1 = call <4 x i32> @llvm.x86.avx512.gather3div2.di(<2 x i64> %x0, i8* %x1, <2 x i64> %x2, i8 %x3, i32 8)
  %res2 = add <4 x i32> %res, %res1
  ret <4 x i32> %res2
}

declare <4 x double> @llvm.x86.avx512.gather3div4.df(<4 x double>, i8*, <4 x i64>, i8, i32)

define <4 x double>@test_int_x86_avx512_gather3div4_df(<4 x double> %x0, i8* %x1, <4 x i64> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.gather3div4.df(<4 x double> %x0, i8* %x1, <4 x i64> %x2, i8 %x3, i32 4)
  %res1 = call <4 x double> @llvm.x86.avx512.gather3div4.df(<4 x double> %x0, i8* %x1, <4 x i64> %x2, i8 -1, i32 0)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <8 x i32> @llvm.x86.avx512.gather3div4.di(<4 x i64>, i8*, <4 x i64>, i8, i32)

define <8 x i32>@test_int_x86_avx512_gather3div4_di(<4 x i64> %x0, i8* %x1, <4 x i64> %x2, i8 %x3) {









  %res = call <8 x i32> @llvm.x86.avx512.gather3div4.di(<4 x i64> %x0, i8* %x1, <4 x i64> %x2, i8 %x3, i32 8)
  %res1 = call <8 x i32> @llvm.x86.avx512.gather3div4.di(<4 x i64> %x0, i8* %x1, <4 x i64> %x2, i8 -1, i32 8)
  %res2 = add <8 x i32> %res, %res1
  ret <8 x i32> %res2
}

declare <4 x float> @llvm.x86.avx512.gather3div4.sf(<4 x float>, i8*, <2 x i64>, i8, i32)

define <4 x float>@test_int_x86_avx512_gather3div4_sf(<4 x float> %x0, i8* %x1, <2 x i64> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.gather3div4.sf(<4 x float> %x0, i8* %x1, <2 x i64> %x2, i8 %x3, i32 4)
  %res1 = call <4 x float> @llvm.x86.avx512.gather3div4.sf(<4 x float> %x0, i8* %x1, <2 x i64> %x2, i8 -1, i32 0)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <4 x i32> @llvm.x86.avx512.gather3div4.si(<4 x i32>, i8*, <2 x i64>, i8, i32)

define <4 x i32>@test_int_x86_avx512_gather3div4_si(<4 x i32> %x0, i8* %x1, <2 x i64> %x2, i8 %x3) {









  %res = call <4 x i32> @llvm.x86.avx512.gather3div4.si(<4 x i32> %x0, i8* %x1, <2 x i64> %x2, i8 -1, i32 4)
  %res1 = call <4 x i32> @llvm.x86.avx512.gather3div4.si(<4 x i32> %x0, i8* %x1, <2 x i64> %x2, i8 %x3, i32 4)
  %res2 = add <4 x i32> %res, %res1
  ret <4 x i32> %res2
}

declare <4 x float> @llvm.x86.avx512.gather3div8.sf(<4 x float>, i8*, <4 x i64>, i8, i32)

define <4 x float>@test_int_x86_avx512_gather3div8_sf(<4 x float> %x0, i8* %x1, <4 x i64> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.gather3div8.sf(<4 x float> %x0, i8* %x1, <4 x i64> %x2, i8 %x3, i32 4)
  %res1 = call <4 x float> @llvm.x86.avx512.gather3div8.sf(<4 x float> %x0, i8* %x1, <4 x i64> %x2, i8 -1, i32 0)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <4 x i32> @llvm.x86.avx512.gather3div8.si(<4 x i32>, i8*, <4 x i64>, i8, i32)

define <4 x i32>@test_int_x86_avx512_gather3div8_si(<4 x i32> %x0, i8* %x1, <4 x i64> %x2, i8 %x3) {









  %res = call <4 x i32> @llvm.x86.avx512.gather3div8.si(<4 x i32> %x0, i8* %x1, <4 x i64> %x2, i8 %x3, i32 4)
  %res1 = call <4 x i32> @llvm.x86.avx512.gather3div8.si(<4 x i32> %x0, i8* %x1, <4 x i64> %x2, i8 %x3, i32 2)
  %res2 = add <4 x i32> %res, %res1
  ret <4 x i32> %res2
}

declare <2 x double> @llvm.x86.avx512.gather3siv2.df(<2 x double>, i8*, <4 x i32>, i8, i32)

define <2 x double>@test_int_x86_avx512_gather3siv2_df(<2 x double> %x0, i8* %x1, <4 x i32> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.gather3siv2.df(<2 x double> %x0, i8* %x1, <4 x i32> %x2, i8 %x3, i32 4)
  %res1 = call <2 x double> @llvm.x86.avx512.gather3siv2.df(<2 x double> %x0, i8* %x1, <4 x i32> %x2, i8 -1, i32 0)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <4 x i32> @llvm.x86.avx512.gather3siv2.di(<2 x i64>, i8*, <4 x i32>, i8, i32)

define <4 x i32>@test_int_x86_avx512_gather3siv2_di(<2 x i64> %x0, i8* %x1, <4 x i32> %x2, i8 %x3) {






  %res = call <4 x i32> @llvm.x86.avx512.gather3siv2.di(<2 x i64> %x0, i8* %x1, <4 x i32> %x2, i8 %x3, i32 8)
  %res1 = call <4 x i32> @llvm.x86.avx512.gather3siv2.di(<2 x i64> %x0, i8* %x1, <4 x i32> %x2, i8 %x3, i32 8)
  %res2 = add <4 x i32> %res, %res1
  ret <4 x i32> %res2
}

declare <4 x double> @llvm.x86.avx512.gather3siv4.df(<4 x double>, i8*, <4 x i32>, i8, i32)

define <4 x double>@test_int_x86_avx512_gather3siv4_df(<4 x double> %x0, i8* %x1, <4 x i32> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.gather3siv4.df(<4 x double> %x0, i8* %x1, <4 x i32> %x2, i8 %x3, i32 4)
  %res1 = call <4 x double> @llvm.x86.avx512.gather3siv4.df(<4 x double> %x0, i8* %x1, <4 x i32> %x2, i8 -1, i32 0)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <8 x i32> @llvm.x86.avx512.gather3siv4.di(<4 x i64>, i8*, <4 x i32>, i8, i32)

define <8 x i32>@test_int_x86_avx512_gather3siv4_di(<4 x i64> %x0, i8* %x1, <4 x i32> %x2, i8 %x3) {






  %res = call <8 x i32> @llvm.x86.avx512.gather3siv4.di(<4 x i64> %x0, i8* %x1, <4 x i32> %x2, i8 %x3, i32 8)
  %res1 = call <8 x i32> @llvm.x86.avx512.gather3siv4.di(<4 x i64> %x0, i8* %x1, <4 x i32> %x2, i8 %x3, i32 8)
  %res2 = add <8 x i32> %res, %res1
  ret <8 x i32> %res2
}

declare <4 x float> @llvm.x86.avx512.gather3siv4.sf(<4 x float>, i8*, <4 x i32>, i8, i32)

define <4 x float>@test_int_x86_avx512_gather3siv4_sf(<4 x float> %x0, i8* %x1, <4 x i32> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.gather3siv4.sf(<4 x float> %x0, i8* %x1, <4 x i32> %x2, i8 %x3, i32 4)
  %res1 = call <4 x float> @llvm.x86.avx512.gather3siv4.sf(<4 x float> %x0, i8* %x1, <4 x i32> %x2, i8 -1, i32 0)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <4 x i32> @llvm.x86.avx512.gather3siv4.si(<4 x i32>, i8*, <4 x i32>, i8, i32)

define <4 x i32>@test_int_x86_avx512_gather3siv4_si(<4 x i32> %x0, i8* %x1, <4 x i32> %x2, i8 %x3) {









  %res = call <4 x i32> @llvm.x86.avx512.gather3siv4.si(<4 x i32> %x0, i8* %x1, <4 x i32> %x2, i8 -1, i32 4)
  %res1 = call <4 x i32> @llvm.x86.avx512.gather3siv4.si(<4 x i32> %x0, i8* %x1, <4 x i32> %x2, i8 %x3, i32 0)
  %res2 = add <4 x i32> %res, %res1
  ret <4 x i32> %res2
}

declare <8 x float> @llvm.x86.avx512.gather3siv8.sf(<8 x float>, i8*, <8 x i32>, i8, i32)

define <8 x float>@test_int_x86_avx512_gather3siv8_sf(<8 x float> %x0, i8* %x1, <8 x i32> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.gather3siv8.sf(<8 x float> %x0, i8* %x1, <8 x i32> %x2, i8 %x3, i32 4)
  %res1 = call <8 x float> @llvm.x86.avx512.gather3siv8.sf(<8 x float> %x0, i8* %x1, <8 x i32> %x2, i8 -1, i32 0)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <8 x i32> @llvm.x86.avx512.gather3siv8.si(<8 x i32>, i8*, <8 x i32>, i8, i32)

define <8 x i32>@test_int_x86_avx512_gather3siv8_si(<8 x i32> %x0, i8* %x1, <8 x i32> %x2, i8 %x3) {









  %res = call <8 x i32> @llvm.x86.avx512.gather3siv8.si(<8 x i32> %x0, i8* %x1, <8 x i32> %x2, i8 %x3, i32 4)
  %res1 = call <8 x i32> @llvm.x86.avx512.gather3siv8.si(<8 x i32> %x0, i8* %x1, <8 x i32> %x2, i8 %x3, i32 0)
  %res2 = add <8 x i32> %res, %res1
  ret <8 x i32> %res2
}

declare void @llvm.x86.avx512.scatterdiv2.df(i8*, i8, <2 x i64>, <2 x double>, i32)

define void@test_int_x86_avx512_scatterdiv2_df(i8* %x0, i8 %x1, <2 x i64> %x2, <2 x double> %x3) {







  call void @llvm.x86.avx512.scatterdiv2.df(i8* %x0, i8 -1, <2 x i64> %x2, <2 x double> %x3, i32 0)
  call void @llvm.x86.avx512.scatterdiv2.df(i8* %x0, i8 %x1, <2 x i64> %x2, <2 x double> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scatterdiv2.di(i8*, i8, <2 x i64>, <2 x i64>, i32)

define void@test_int_x86_avx512_scatterdiv2_di(i8* %x0, i8 %x1, <2 x i64> %x2, <2 x i64> %x3) {







  call void @llvm.x86.avx512.scatterdiv2.di(i8* %x0, i8 %x1, <2 x i64> %x2, <2 x i64> %x3, i32 0)
  call void @llvm.x86.avx512.scatterdiv2.di(i8* %x0, i8 -1, <2 x i64> %x2, <2 x i64> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scatterdiv4.df(i8*, i8, <4 x i64>, <4 x double>, i32)

define void@test_int_x86_avx512_scatterdiv4_df(i8* %x0, i8 %x1, <4 x i64> %x2, <4 x double> %x3) {







  call void @llvm.x86.avx512.scatterdiv4.df(i8* %x0, i8 %x1, <4 x i64> %x2, <4 x double> %x3, i32 0)
  call void @llvm.x86.avx512.scatterdiv4.df(i8* %x0, i8 -1, <4 x i64> %x2, <4 x double> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scatterdiv4.di(i8*, i8, <4 x i64>, <4 x i64>, i32)

define void@test_int_x86_avx512_scatterdiv4_di(i8* %x0, i8 %x1, <4 x i64> %x2, <4 x i64> %x3) {







  call void @llvm.x86.avx512.scatterdiv4.di(i8* %x0, i8 %x1, <4 x i64> %x2, <4 x i64> %x3, i32 0)
  call void @llvm.x86.avx512.scatterdiv4.di(i8* %x0, i8 -1, <4 x i64> %x2, <4 x i64> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scatterdiv4.sf(i8*, i8, <2 x i64>, <4 x float>, i32)

define void@test_int_x86_avx512_scatterdiv4_sf(i8* %x0, i8 %x1, <2 x i64> %x2, <4 x float> %x3) {







  call void @llvm.x86.avx512.scatterdiv4.sf(i8* %x0, i8 %x1, <2 x i64> %x2, <4 x float> %x3, i32 0)
  call void @llvm.x86.avx512.scatterdiv4.sf(i8* %x0, i8 -1, <2 x i64> %x2, <4 x float> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scatterdiv4.si(i8*, i8, <2 x i64>, <4 x i32>, i32)

define void@test_int_x86_avx512_scatterdiv4_si(i8* %x0, i8 %x1, <2 x i64> %x2, <4 x i32> %x3) {







  call void @llvm.x86.avx512.scatterdiv4.si(i8* %x0, i8 -1, <2 x i64> %x2, <4 x i32> %x3, i32 0)
  call void @llvm.x86.avx512.scatterdiv4.si(i8* %x0, i8 %x1, <2 x i64> %x2, <4 x i32> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scatterdiv8.sf(i8*, i8, <4 x i64>, <4 x float>, i32)

define void@test_int_x86_avx512_scatterdiv8_sf(i8* %x0, i8 %x1, <4 x i64> %x2, <4 x float> %x3) {







  call void @llvm.x86.avx512.scatterdiv8.sf(i8* %x0, i8 %x1, <4 x i64> %x2, <4 x float> %x3, i32 0)
  call void @llvm.x86.avx512.scatterdiv8.sf(i8* %x0, i8 -1, <4 x i64> %x2, <4 x float> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scatterdiv8.si(i8*, i8, <4 x i64>, <4 x i32>, i32)

define void@test_int_x86_avx512_scatterdiv8_si(i8* %x0, i8 %x1, <4 x i64> %x2, <4 x i32> %x3) {







  call void @llvm.x86.avx512.scatterdiv8.si(i8* %x0, i8 %x1, <4 x i64> %x2, <4 x i32> %x3, i32 0)
  call void @llvm.x86.avx512.scatterdiv8.si(i8* %x0, i8 -1, <4 x i64> %x2, <4 x i32> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scattersiv2.df(i8*, i8, <4 x i32>, <2 x double>, i32)

define void@test_int_x86_avx512_scattersiv2_df(i8* %x0, i8 %x1, <4 x i32> %x2, <2 x double> %x3) {







  call void @llvm.x86.avx512.scattersiv2.df(i8* %x0, i8 -1, <4 x i32> %x2, <2 x double> %x3, i32 0)
  call void @llvm.x86.avx512.scattersiv2.df(i8* %x0, i8 %x1, <4 x i32> %x2, <2 x double> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scattersiv2.di(i8*, i8, <4 x i32>, <2 x i64>, i32)

define void@test_int_x86_avx512_scattersiv2_di(i8* %x0, i8 %x1, <4 x i32> %x2, <2 x i64> %x3) {







  call void @llvm.x86.avx512.scattersiv2.di(i8* %x0, i8 -1, <4 x i32> %x2, <2 x i64> %x3, i32 0)
  call void @llvm.x86.avx512.scattersiv2.di(i8* %x0, i8 %x1, <4 x i32> %x2, <2 x i64> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scattersiv4.df(i8*, i8, <4 x i32>, <4 x double>, i32)

define void@test_int_x86_avx512_scattersiv4_df(i8* %x0, i8 %x1, <4 x i32> %x2, <4 x double> %x3) {







  call void @llvm.x86.avx512.scattersiv4.df(i8* %x0, i8 %x1, <4 x i32> %x2, <4 x double> %x3, i32 0)
  call void @llvm.x86.avx512.scattersiv4.df(i8* %x0, i8 -1, <4 x i32> %x2, <4 x double> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scattersiv4.di(i8*, i8, <4 x i32>, <4 x i64>, i32)

define void@test_int_x86_avx512_scattersiv4_di(i8* %x0, i8 %x1, <4 x i32> %x2, <4 x i64> %x3) {







  call void @llvm.x86.avx512.scattersiv4.di(i8* %x0, i8 -1, <4 x i32> %x2, <4 x i64> %x3, i32 0)
  call void @llvm.x86.avx512.scattersiv4.di(i8* %x0, i8 %x1, <4 x i32> %x2, <4 x i64> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scattersiv4.sf(i8*, i8, <4 x i32>, <4 x float>, i32)

define void@test_int_x86_avx512_scattersiv4_sf(i8* %x0, i8 %x1, <4 x i32> %x2, <4 x float> %x3) {







  call void @llvm.x86.avx512.scattersiv4.sf(i8* %x0, i8 %x1, <4 x i32> %x2, <4 x float> %x3, i32 0)
  call void @llvm.x86.avx512.scattersiv4.sf(i8* %x0, i8 -1, <4 x i32> %x2, <4 x float> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scattersiv4.si(i8*, i8, <4 x i32>, <4 x i32>, i32)

define void@test_int_x86_avx512_scattersiv4_si(i8* %x0, i8 %x1, <4 x i32> %x2, <4 x i32> %x3) {







  call void @llvm.x86.avx512.scattersiv4.si(i8* %x0, i8 %x1, <4 x i32> %x2, <4 x i32> %x3, i32 0)
  call void @llvm.x86.avx512.scattersiv4.si(i8* %x0, i8 -1, <4 x i32> %x2, <4 x i32> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scattersiv8.sf(i8*, i8, <8 x i32>, <8 x float>, i32)

define void@test_int_x86_avx512_scattersiv8_sf(i8* %x0, i8 %x1, <8 x i32> %x2, <8 x float> %x3) {







  call void @llvm.x86.avx512.scattersiv8.sf(i8* %x0, i8 %x1, <8 x i32> %x2, <8 x float> %x3, i32 0)
  call void @llvm.x86.avx512.scattersiv8.sf(i8* %x0, i8 -1, <8 x i32> %x2, <8 x float> %x3, i32 4)
  ret void
}

declare void @llvm.x86.avx512.scattersiv8.si(i8*, i8, <8 x i32>, <8 x i32>, i32)

define void@test_int_x86_avx512_scattersiv8_si(i8* %x0, i8 %x1, <8 x i32> %x2, <8 x i32> %x3) {







  call void @llvm.x86.avx512.scattersiv8.si(i8* %x0, i8 %x1, <8 x i32> %x2, <8 x i32> %x3, i32 0)
  call void @llvm.x86.avx512.scattersiv8.si(i8* %x0, i8 -1, <8 x i32> %x2, <8 x i32> %x3, i32 4)
  ret void
}

