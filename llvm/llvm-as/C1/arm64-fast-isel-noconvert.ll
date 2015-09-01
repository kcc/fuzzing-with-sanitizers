



define <4 x float> @test_uitofp(<4 x i32> %in) {



  %res = uitofp <4 x i32> %in to <4 x float>
  ret <4 x float> %res
}

define <2 x double> @test_sitofp(<2 x i32> %in) {




  %res = sitofp <2 x i32> %in to <2 x double>
  ret <2 x double> %res
}

define <2 x i32> @test_fptoui(<2 x float> %in) {



  %res = fptoui <2 x float> %in to <2 x i32>
  ret <2 x i32> %res
}

define <2 x i64> @test_fptosi(<2 x double> %in) {



  %res = fptosi <2 x double> %in to <2 x i64>
  ret <2 x i64> %res
}

define fp128 @uitofp_i32_fp128(i32 %a) {
entry:


  %conv = uitofp i32 %a to fp128
  ret fp128 %conv
}

define fp128 @uitofp_i64_fp128(i64 %a) {
entry:


  %conv = uitofp i64 %a to fp128
  ret fp128 %conv
}

define i32 @uitofp_fp128_i32(fp128 %a) {
entry:


  %conv = fptoui fp128 %a to i32
  ret i32 %conv
}

define i64 @uitofp_fp128_i64(fp128 %a) {
entry:


  %conv = fptoui fp128 %a to i64
  ret i64 %conv
}
