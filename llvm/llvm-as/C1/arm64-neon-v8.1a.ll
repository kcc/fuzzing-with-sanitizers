



declare <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16>, <4 x i16>)
declare <8 x i16> @llvm.aarch64.neon.sqrdmulh.v8i16(<8 x i16>, <8 x i16>)
declare <2 x i32> @llvm.aarch64.neon.sqrdmulh.v2i32(<2 x i32>, <2 x i32>)
declare <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32>, <4 x i32>)
declare i32 @llvm.aarch64.neon.sqrdmulh.i32(i32, i32)
declare i16 @llvm.aarch64.neon.sqrdmulh.i16(i16, i16)

declare <4 x i16> @llvm.aarch64.neon.sqadd.v4i16(<4 x i16>, <4 x i16>)
declare <8 x i16> @llvm.aarch64.neon.sqadd.v8i16(<8 x i16>, <8 x i16>)
declare <2 x i32> @llvm.aarch64.neon.sqadd.v2i32(<2 x i32>, <2 x i32>)
declare <4 x i32> @llvm.aarch64.neon.sqadd.v4i32(<4 x i32>, <4 x i32>)
declare i32 @llvm.aarch64.neon.sqadd.i32(i32, i32)
declare i16 @llvm.aarch64.neon.sqadd.i16(i16, i16)

declare <4 x i16> @llvm.aarch64.neon.sqsub.v4i16(<4 x i16>, <4 x i16>)
declare <8 x i16> @llvm.aarch64.neon.sqsub.v8i16(<8 x i16>, <8 x i16>)
declare <2 x i32> @llvm.aarch64.neon.sqsub.v2i32(<2 x i32>, <2 x i32>)
declare <4 x i32> @llvm.aarch64.neon.sqsub.v4i32(<4 x i32>, <4 x i32>)
declare i32 @llvm.aarch64.neon.sqsub.i32(i32, i32)
declare i16 @llvm.aarch64.neon.sqsub.i16(i16, i16)





define <4 x i16> @test_sqrdmlah_v4i16(<4 x i16> %acc, <4 x i16> %mhs, <4 x i16> %rhs) {

   %prod = call <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16> %mhs,  <4 x i16> %rhs)
   %retval =  call <4 x i16> @llvm.aarch64.neon.sqadd.v4i16(<4 x i16> %acc,  <4 x i16> %prod)



   ret <4 x i16> %retval
}

define <8 x i16> @test_sqrdmlah_v8i16(<8 x i16> %acc, <8 x i16> %mhs, <8 x i16> %rhs) {

   %prod = call <8 x i16> @llvm.aarch64.neon.sqrdmulh.v8i16(<8 x i16> %mhs, <8 x i16> %rhs)
   %retval =  call <8 x i16> @llvm.aarch64.neon.sqadd.v8i16(<8 x i16> %acc, <8 x i16> %prod)



   ret <8 x i16> %retval
}

define <2 x i32> @test_sqrdmlah_v2i32(<2 x i32> %acc, <2 x i32> %mhs, <2 x i32> %rhs) {

   %prod = call <2 x i32> @llvm.aarch64.neon.sqrdmulh.v2i32(<2 x i32> %mhs, <2 x i32> %rhs)
   %retval =  call <2 x i32> @llvm.aarch64.neon.sqadd.v2i32(<2 x i32> %acc, <2 x i32> %prod)



   ret <2 x i32> %retval
}

define <4 x i32> @test_sqrdmlah_v4i32(<4 x i32> %acc, <4 x i32> %mhs, <4 x i32> %rhs) {

   %prod = call <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32> %mhs, <4 x i32> %rhs)
   %retval =  call <4 x i32> @llvm.aarch64.neon.sqadd.v4i32(<4 x i32> %acc, <4 x i32> %prod)



   ret <4 x i32> %retval
}

define <4 x i16> @test_sqrdmlsh_v4i16(<4 x i16> %acc, <4 x i16> %mhs, <4 x i16> %rhs) {

   %prod = call <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16> %mhs,  <4 x i16> %rhs)
   %retval =  call <4 x i16> @llvm.aarch64.neon.sqsub.v4i16(<4 x i16> %acc, <4 x i16> %prod)



   ret <4 x i16> %retval
}

define <8 x i16> @test_sqrdmlsh_v8i16(<8 x i16> %acc, <8 x i16> %mhs, <8 x i16> %rhs) {

   %prod = call <8 x i16> @llvm.aarch64.neon.sqrdmulh.v8i16(<8 x i16> %mhs, <8 x i16> %rhs)
   %retval =  call <8 x i16> @llvm.aarch64.neon.sqsub.v8i16(<8 x i16> %acc, <8 x i16> %prod)



   ret <8 x i16> %retval
}

define <2 x i32> @test_sqrdmlsh_v2i32(<2 x i32> %acc, <2 x i32> %mhs, <2 x i32> %rhs) {

   %prod = call <2 x i32> @llvm.aarch64.neon.sqrdmulh.v2i32(<2 x i32> %mhs, <2 x i32> %rhs)
   %retval =  call <2 x i32> @llvm.aarch64.neon.sqsub.v2i32(<2 x i32> %acc, <2 x i32> %prod)



   ret <2 x i32> %retval
}

define <4 x i32> @test_sqrdmlsh_v4i32(<4 x i32> %acc, <4 x i32> %mhs, <4 x i32> %rhs) {

   %prod = call <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32> %mhs, <4 x i32> %rhs)
   %retval =  call <4 x i32> @llvm.aarch64.neon.sqsub.v4i32(<4 x i32> %acc, <4 x i32> %prod)



   ret <4 x i32> %retval
}





define <4 x i16> @test_sqrdmlah_lane_s16(<4 x i16> %acc, <4 x i16> %x, <4 x i16> %v) {

entry:
  %shuffle = shufflevector <4 x i16> %v, <4 x i16> undef, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %prod = call <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16> %x, <4 x i16> %shuffle)
  %retval =  call <4 x i16> @llvm.aarch64.neon.sqadd.v4i16(<4 x i16> %acc, <4 x i16> %prod)



  ret <4 x i16> %retval
}

define <8 x i16> @test_sqrdmlahq_lane_s16(<8 x i16> %acc, <8 x i16> %x, <8 x i16> %v) {

entry:
  %shuffle = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %prod = call <8 x i16> @llvm.aarch64.neon.sqrdmulh.v8i16(<8 x i16> %x, <8 x i16> %shuffle)
  %retval =  call <8 x i16> @llvm.aarch64.neon.sqadd.v8i16(<8 x i16> %acc, <8 x i16> %prod)



  ret <8 x i16> %retval
}

define <2 x i32> @test_sqrdmlah_lane_s32(<2 x i32> %acc, <2 x i32> %x, <2 x i32> %v) {

entry:
  %shuffle = shufflevector <2 x i32> %v, <2 x i32> undef, <2 x i32> <i32 1, i32 1>
  %prod = call <2 x i32> @llvm.aarch64.neon.sqrdmulh.v2i32(<2 x i32> %x, <2 x i32> %shuffle)
  %retval =  call <2 x i32> @llvm.aarch64.neon.sqadd.v2i32(<2 x i32> %acc, <2 x i32> %prod)



  ret <2 x i32> %retval
}

define <4 x i32> @test_sqrdmlahq_lane_s32(<4 x i32> %acc,<4 x i32> %x, <4 x i32> %v) {

entry:
  %shuffle = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> zeroinitializer
  %prod = call <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32> %x, <4 x i32> %shuffle)
  %retval =  call <4 x i32> @llvm.aarch64.neon.sqadd.v4i32(<4 x i32> %acc, <4 x i32> %prod)



  ret <4 x i32> %retval
}

define <4 x i16> @test_sqrdmlsh_lane_s16(<4 x i16> %acc, <4 x i16> %x, <4 x i16> %v) {

entry:
  %shuffle = shufflevector <4 x i16> %v, <4 x i16> undef, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %prod = call <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16> %x, <4 x i16> %shuffle)
  %retval =  call <4 x i16> @llvm.aarch64.neon.sqsub.v4i16(<4 x i16> %acc, <4 x i16> %prod)



  ret <4 x i16> %retval
}

define <8 x i16> @test_sqrdmlshq_lane_s16(<8 x i16> %acc, <8 x i16> %x, <8 x i16> %v) {

entry:
  %shuffle = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %prod = call <8 x i16> @llvm.aarch64.neon.sqrdmulh.v8i16(<8 x i16> %x, <8 x i16> %shuffle)
  %retval =  call <8 x i16> @llvm.aarch64.neon.sqsub.v8i16(<8 x i16> %acc, <8 x i16> %prod)



  ret <8 x i16> %retval
}

define <2 x i32> @test_sqrdmlsh_lane_s32(<2 x i32> %acc, <2 x i32> %x, <2 x i32> %v) {

entry:
  %shuffle = shufflevector <2 x i32> %v, <2 x i32> undef, <2 x i32> <i32 1, i32 1>
  %prod = call <2 x i32> @llvm.aarch64.neon.sqrdmulh.v2i32(<2 x i32> %x, <2 x i32> %shuffle)
  %retval =  call <2 x i32> @llvm.aarch64.neon.sqsub.v2i32(<2 x i32> %acc, <2 x i32> %prod)



  ret <2 x i32> %retval
}

define <4 x i32> @test_sqrdmlshq_lane_s32(<4 x i32> %acc,<4 x i32> %x, <4 x i32> %v) {

entry:
  %shuffle = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> zeroinitializer
  %prod = call <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32> %x, <4 x i32> %shuffle)
  %retval =  call <4 x i32> @llvm.aarch64.neon.sqsub.v4i32(<4 x i32> %acc, <4 x i32> %prod)



  ret <4 x i32> %retval
}






define i16 @test_sqrdmlah_extracted_lane_s16(i16 %acc,<4 x i16> %x, <4 x i16> %v) {

entry:
  %shuffle = shufflevector <4 x i16> %v, <4 x i16> undef, <4 x i32> <i32 1,i32 1,i32 1,i32 1>
  %prod = call <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16> %x, <4 x i16> %shuffle)
  %acc_vec = insertelement <4 x i16> undef, i16 %acc, i64 0
  %retval_vec =  call <4 x i16> @llvm.aarch64.neon.sqadd.v4i16(<4 x i16> %acc_vec, <4 x i16> %prod)
  %retval = extractelement <4 x i16> %retval_vec, i64 0



  ret i16 %retval
}

define i16 @test_sqrdmlahq_extracted_lane_s16(i16 %acc,<8 x i16> %x, <8 x i16> %v) {

entry:
  %shuffle = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 1,i32 1,i32 1,i32 1, i32 1,i32 1,i32 1,i32 1>
  %prod = call <8 x i16> @llvm.aarch64.neon.sqrdmulh.v8i16(<8 x i16> %x, <8 x i16> %shuffle)
  %acc_vec = insertelement <8 x i16> undef, i16 %acc, i64 0
  %retval_vec =  call <8 x i16> @llvm.aarch64.neon.sqadd.v8i16(<8 x i16> %acc_vec, <8 x i16> %prod)
  %retval = extractelement <8 x i16> %retval_vec, i64 0



  ret i16 %retval
}

define i32 @test_sqrdmlah_extracted_lane_s32(i32 %acc,<2 x i32> %x, <2 x i32> %v) {

entry:
  %shuffle = shufflevector <2 x i32> %v, <2 x i32> undef, <2 x i32> zeroinitializer
  %prod = call <2 x i32> @llvm.aarch64.neon.sqrdmulh.v2i32(<2 x i32> %x, <2 x i32> %shuffle)
  %extract = extractelement <2 x i32> %prod, i64 0
  %retval =  call i32 @llvm.aarch64.neon.sqadd.i32(i32 %acc, i32 %extract)



  ret i32 %retval
}

define i32 @test_sqrdmlahq_extracted_lane_s32(i32 %acc,<4 x i32> %x, <4 x i32> %v) {

entry:
  %shuffle = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> zeroinitializer
  %prod = call <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32> %x, <4 x i32> %shuffle)
  %extract = extractelement <4 x i32> %prod, i64 0
  %retval =  call i32 @llvm.aarch64.neon.sqadd.i32(i32 %acc, i32 %extract)



  ret i32 %retval
}

define i16 @test_sqrdmlsh_extracted_lane_s16(i16 %acc,<4 x i16> %x, <4 x i16> %v) {

entry:
  %shuffle = shufflevector <4 x i16> %v, <4 x i16> undef, <4 x i32> <i32 1,i32 1,i32 1,i32 1>
  %prod = call <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16> %x, <4 x i16> %shuffle)
  %acc_vec = insertelement <4 x i16> undef, i16 %acc, i64 0
  %retval_vec =  call <4 x i16> @llvm.aarch64.neon.sqsub.v4i16(<4 x i16> %acc_vec, <4 x i16> %prod)
  %retval = extractelement <4 x i16> %retval_vec, i64 0



  ret i16 %retval
}

define i16 @test_sqrdmlshq_extracted_lane_s16(i16 %acc,<8 x i16> %x, <8 x i16> %v) {

entry:
  %shuffle = shufflevector <8 x i16> %v, <8 x i16> undef, <8 x i32> <i32 1,i32 1,i32 1,i32 1, i32 1,i32 1,i32 1,i32 1>
  %prod = call <8 x i16> @llvm.aarch64.neon.sqrdmulh.v8i16(<8 x i16> %x, <8 x i16> %shuffle)
  %acc_vec = insertelement <8 x i16> undef, i16 %acc, i64 0
  %retval_vec =  call <8 x i16> @llvm.aarch64.neon.sqsub.v8i16(<8 x i16> %acc_vec, <8 x i16> %prod)
  %retval = extractelement <8 x i16> %retval_vec, i64 0



  ret i16 %retval
}

define i32 @test_sqrdmlsh_extracted_lane_s32(i32 %acc,<2 x i32> %x, <2 x i32> %v) {

entry:
  %shuffle = shufflevector <2 x i32> %v, <2 x i32> undef, <2 x i32> zeroinitializer
  %prod = call <2 x i32> @llvm.aarch64.neon.sqrdmulh.v2i32(<2 x i32> %x, <2 x i32> %shuffle)
  %extract = extractelement <2 x i32> %prod, i64 0
  %retval =  call i32 @llvm.aarch64.neon.sqsub.i32(i32 %acc, i32 %extract)



  ret i32 %retval
}

define i32 @test_sqrdmlshq_extracted_lane_s32(i32 %acc,<4 x i32> %x, <4 x i32> %v) {

entry:
  %shuffle = shufflevector <4 x i32> %v, <4 x i32> undef, <4 x i32> zeroinitializer
  %prod = call <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32> %x, <4 x i32> %shuffle)
  %extract = extractelement <4 x i32> %prod, i64 0
  %retval =  call i32 @llvm.aarch64.neon.sqsub.i32(i32 %acc, i32 %extract)



  ret i32 %retval
}





define i16 @test_sqrdmlah_v1i16(i16 %acc, i16 %x, i16 %y) {

  %x_vec = insertelement <4 x i16> undef, i16 %x, i64 0
  %y_vec = insertelement <4 x i16> undef, i16 %y, i64 0
  %prod_vec = call <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16> %x_vec,  <4 x i16> %y_vec)
  %acc_vec = insertelement <4 x i16> undef, i16 %acc, i64 0
  %retval_vec =  call <4 x i16> @llvm.aarch64.neon.sqadd.v4i16(<4 x i16> %acc_vec,  <4 x i16> %prod_vec)
  %retval = extractelement <4 x i16> %retval_vec, i64 0



  ret i16 %retval
}

define i32 @test_sqrdmlah_v1i32(i32 %acc, i32 %x, i32 %y) {

  %x_vec = insertelement <4 x i32> undef, i32 %x, i64 0
  %y_vec = insertelement <4 x i32> undef, i32 %y, i64 0
  %prod_vec = call <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32> %x_vec,  <4 x i32> %y_vec)
  %acc_vec = insertelement <4 x i32> undef, i32 %acc, i64 0
  %retval_vec =  call <4 x i32> @llvm.aarch64.neon.sqadd.v4i32(<4 x i32> %acc_vec,  <4 x i32> %prod_vec)
  %retval = extractelement <4 x i32> %retval_vec, i64 0



  ret i32 %retval
}


define i16 @test_sqrdmlsh_v1i16(i16 %acc, i16 %x, i16 %y) {

  %x_vec = insertelement <4 x i16> undef, i16 %x, i64 0
  %y_vec = insertelement <4 x i16> undef, i16 %y, i64 0
  %prod_vec = call <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16> %x_vec,  <4 x i16> %y_vec)
  %acc_vec = insertelement <4 x i16> undef, i16 %acc, i64 0
  %retval_vec =  call <4 x i16> @llvm.aarch64.neon.sqsub.v4i16(<4 x i16> %acc_vec,  <4 x i16> %prod_vec)
  %retval = extractelement <4 x i16> %retval_vec, i64 0



  ret i16 %retval
}

define i32 @test_sqrdmlsh_v1i32(i32 %acc, i32 %x, i32 %y) {

  %x_vec = insertelement <4 x i32> undef, i32 %x, i64 0
  %y_vec = insertelement <4 x i32> undef, i32 %y, i64 0
  %prod_vec = call <4 x i32> @llvm.aarch64.neon.sqrdmulh.v4i32(<4 x i32> %x_vec,  <4 x i32> %y_vec)
  %acc_vec = insertelement <4 x i32> undef, i32 %acc, i64 0
  %retval_vec =  call <4 x i32> @llvm.aarch64.neon.sqsub.v4i32(<4 x i32> %acc_vec,  <4 x i32> %prod_vec)
  %retval = extractelement <4 x i32> %retval_vec, i64 0



  ret i32 %retval
}
define i32 @test_sqrdmlah_i32(i32 %acc, i32 %mhs, i32 %rhs) {

  %prod = call i32 @llvm.aarch64.neon.sqrdmulh.i32(i32 %mhs,  i32 %rhs)
  %retval =  call i32 @llvm.aarch64.neon.sqadd.i32(i32 %acc,  i32 %prod)



  ret i32 %retval
}

define i32 @test_sqrdmlsh_i32(i32 %acc, i32 %mhs, i32 %rhs) {

  %prod = call i32 @llvm.aarch64.neon.sqrdmulh.i32(i32 %mhs,  i32 %rhs)
  %retval =  call i32 @llvm.aarch64.neon.sqsub.i32(i32 %acc,  i32 %prod)



  ret i32 %retval
}






define i16 @test_sqrdmlah_extract_i16(i16 %acc, i16 %x, <4 x i16> %y_vec) {

  %shuffle = shufflevector <4 x i16> %y_vec, <4 x i16> undef, <4 x i32> <i32 1,i32 1,i32 1,i32 1>
  %x_vec = insertelement <4 x i16> undef, i16 %x, i64 0
  %prod = call <4 x i16> @llvm.aarch64.neon.sqrdmulh.v4i16(<4 x i16> %x_vec, <4 x i16> %shuffle)
  %acc_vec = insertelement <4 x i16> undef, i16 %acc, i64 0
  %retval_vec =  call <4 x i16> @llvm.aarch64.neon.sqadd.v4i16(<4 x i16> %acc_vec, <4 x i16> %prod)
  %retval = extractelement <4 x i16> %retval_vec, i32 0



  ret i16 %retval
}

define i32 @test_sqrdmlah_extract_i32(i32 %acc, i32 %mhs, <4 x i32> %rhs) {

  %extract = extractelement <4 x i32> %rhs, i32 3
  %prod = call i32 @llvm.aarch64.neon.sqrdmulh.i32(i32 %mhs,  i32 %extract)
  %retval =  call i32 @llvm.aarch64.neon.sqadd.i32(i32 %acc,  i32 %prod)



  ret i32 %retval
}

define i16 @test_sqrdmlshq_extract_i16(i16 %acc, i16 %x, <8 x i16> %y_vec) {

  %shuffle = shufflevector <8 x i16> %y_vec, <8 x i16> undef, <8 x i32> <i32 1,i32 1,i32 1,i32 1,i32 1,i32 1,i32 1,i32 1>
  %x_vec = insertelement <8 x i16> undef, i16 %x, i64 0
  %prod = call <8 x i16> @llvm.aarch64.neon.sqrdmulh.v8i16(<8 x i16> %x_vec, <8 x i16> %shuffle)
  %acc_vec = insertelement <8 x i16> undef, i16 %acc, i64 0
  %retval_vec =  call <8 x i16> @llvm.aarch64.neon.sqsub.v8i16(<8 x i16> %acc_vec, <8 x i16> %prod)
  %retval = extractelement <8 x i16> %retval_vec, i32 0



  ret i16 %retval
}

define i32 @test_sqrdmlsh_extract_i32(i32 %acc, i32 %mhs, <4 x i32> %rhs) {

  %extract = extractelement <4 x i32> %rhs, i32 3
  %prod = call i32 @llvm.aarch64.neon.sqrdmulh.i32(i32 %mhs,  i32 %extract)
  %retval =  call i32 @llvm.aarch64.neon.sqsub.i32(i32 %acc,  i32 %prod)



  ret i32 %retval
}
