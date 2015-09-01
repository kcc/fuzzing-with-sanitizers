

declare <16 x i8> @llvm.aarch64.crypto.aese(<16 x i8> %data, <16 x i8> %key)
declare <16 x i8> @llvm.aarch64.crypto.aesd(<16 x i8> %data, <16 x i8> %key)
declare <16 x i8> @llvm.aarch64.crypto.aesmc(<16 x i8> %data)
declare <16 x i8> @llvm.aarch64.crypto.aesimc(<16 x i8> %data)

define <16 x i8> @test_aese(<16 x i8> %data, <16 x i8> %key) {


  %res = call <16 x i8> @llvm.aarch64.crypto.aese(<16 x i8> %data, <16 x i8> %key)
  ret <16 x i8> %res
}

define <16 x i8> @test_aesd(<16 x i8> %data, <16 x i8> %key) {


  %res = call <16 x i8> @llvm.aarch64.crypto.aesd(<16 x i8> %data, <16 x i8> %key)
  ret <16 x i8> %res
}

define <16 x i8> @test_aesmc(<16 x i8> %data) {


 %res = call <16 x i8> @llvm.aarch64.crypto.aesmc(<16 x i8> %data)
  ret <16 x i8> %res
}

define <16 x i8> @test_aesimc(<16 x i8> %data) {


 %res = call <16 x i8> @llvm.aarch64.crypto.aesimc(<16 x i8> %data)
  ret <16 x i8> %res
}

declare <4 x i32> @llvm.aarch64.crypto.sha1c(<4 x i32> %hash_abcd, i32 %hash_e, <4 x i32> %wk)
declare <4 x i32> @llvm.aarch64.crypto.sha1p(<4 x i32> %hash_abcd, i32 %hash_e, <4 x i32> %wk)
declare <4 x i32> @llvm.aarch64.crypto.sha1m(<4 x i32> %hash_abcd, i32 %hash_e, <4 x i32> %wk)
declare i32 @llvm.aarch64.crypto.sha1h(i32 %hash_e)
declare <4 x i32> @llvm.aarch64.crypto.sha1su0(<4 x i32> %wk0_3, <4 x i32> %wk4_7, <4 x i32> %wk8_11)
declare <4 x i32> @llvm.aarch64.crypto.sha1su1(<4 x i32> %wk0_3, <4 x i32> %wk12_15)

define <4 x i32> @test_sha1c(<4 x i32> %hash_abcd, i32 %hash_e, <4 x i32> %wk) {



  %res = call <4 x i32> @llvm.aarch64.crypto.sha1c(<4 x i32> %hash_abcd, i32 %hash_e, <4 x i32> %wk)
  ret <4 x i32> %res
}


define <4 x i32> @test_sha1c_in_a_row(<4 x i32> %hash_abcd, i32 %hash_e, <4 x i32> %wk) {





  %res = call <4 x i32> @llvm.aarch64.crypto.sha1c(<4 x i32> %hash_abcd, i32 %hash_e, <4 x i32> %wk)
  %extract = extractelement <4 x i32> %res, i32 0
  %res2 = call <4 x i32> @llvm.aarch64.crypto.sha1c(<4 x i32> %hash_abcd, i32 %extract, <4 x i32> %wk)
  ret <4 x i32> %res2
}

define <4 x i32> @test_sha1p(<4 x i32> %hash_abcd, i32 %hash_e, <4 x i32> %wk) {



  %res = call <4 x i32> @llvm.aarch64.crypto.sha1p(<4 x i32> %hash_abcd, i32 %hash_e, <4 x i32> %wk)
  ret <4 x i32> %res
}

define <4 x i32> @test_sha1m(<4 x i32> %hash_abcd, i32 %hash_e, <4 x i32> %wk) {



  %res = call <4 x i32> @llvm.aarch64.crypto.sha1m(<4 x i32> %hash_abcd, i32 %hash_e, <4 x i32> %wk)
  ret <4 x i32> %res
}

define i32 @test_sha1h(i32 %hash_e) {




  %res = call i32 @llvm.aarch64.crypto.sha1h(i32 %hash_e)
  ret i32 %res
}

define <4 x i32> @test_sha1su0(<4 x i32> %wk0_3, <4 x i32> %wk4_7, <4 x i32> %wk8_11) {


  %res = call <4 x i32> @llvm.aarch64.crypto.sha1su0(<4 x i32> %wk0_3, <4 x i32> %wk4_7, <4 x i32> %wk8_11)
  ret <4 x i32> %res
}

define <4 x i32> @test_sha1su1(<4 x i32> %wk0_3, <4 x i32> %wk12_15) {


  %res = call <4 x i32> @llvm.aarch64.crypto.sha1su1(<4 x i32> %wk0_3, <4 x i32> %wk12_15)
  ret <4 x i32> %res
}

declare <4 x i32> @llvm.aarch64.crypto.sha256h(<4 x i32> %hash_abcd, <4 x i32> %hash_efgh, <4 x i32> %wk)
declare <4 x i32> @llvm.aarch64.crypto.sha256h2(<4 x i32> %hash_efgh, <4 x i32> %hash_abcd, <4 x i32> %wk)
declare <4 x i32> @llvm.aarch64.crypto.sha256su0(<4 x i32> %w0_3, <4 x i32> %w4_7)
declare <4 x i32> @llvm.aarch64.crypto.sha256su1(<4 x i32> %w0_3, <4 x i32> %w8_11, <4 x i32> %w12_15)

define <4 x i32> @test_sha256h(<4 x i32> %hash_abcd, <4 x i32> %hash_efgh, <4 x i32> %wk) {


  %res = call <4 x i32> @llvm.aarch64.crypto.sha256h(<4 x i32> %hash_abcd, <4 x i32> %hash_efgh, <4 x i32> %wk)
  ret <4 x i32> %res
}

define <4 x i32> @test_sha256h2(<4 x i32> %hash_efgh, <4 x i32> %hash_abcd, <4 x i32> %wk) {



  %res = call <4 x i32> @llvm.aarch64.crypto.sha256h2(<4 x i32> %hash_efgh, <4 x i32> %hash_abcd, <4 x i32> %wk)
  ret <4 x i32> %res
}

define <4 x i32> @test_sha256su0(<4 x i32> %w0_3, <4 x i32> %w4_7) {


  %res = call <4 x i32> @llvm.aarch64.crypto.sha256su0(<4 x i32> %w0_3, <4 x i32> %w4_7)
  ret <4 x i32> %res
}

define <4 x i32> @test_sha256su1(<4 x i32> %w0_3, <4 x i32> %w8_11, <4 x i32> %w12_15) {


  %res = call <4 x i32> @llvm.aarch64.crypto.sha256su1(<4 x i32> %w0_3, <4 x i32> %w8_11, <4 x i32> %w12_15)
  ret <4 x i32> %res
}
