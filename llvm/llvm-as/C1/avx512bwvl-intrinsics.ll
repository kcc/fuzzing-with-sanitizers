



define i32 @test_pcmpeq_b_256(<32 x i8> %a, <32 x i8> %b) {


  %res = call i32 @llvm.x86.avx512.mask.pcmpeq.b.256(<32 x i8> %a, <32 x i8> %b, i32 -1)
  ret i32 %res
}

define i32 @test_mask_pcmpeq_b_256(<32 x i8> %a, <32 x i8> %b, i32 %mask) {


  %res = call i32 @llvm.x86.avx512.mask.pcmpeq.b.256(<32 x i8> %a, <32 x i8> %b, i32 %mask)
  ret i32 %res
}

declare i32 @llvm.x86.avx512.mask.pcmpeq.b.256(<32 x i8>, <32 x i8>, i32)

define i16 @test_pcmpeq_w_256(<16 x i16> %a, <16 x i16> %b) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpeq.w.256(<16 x i16> %a, <16 x i16> %b, i16 -1)
  ret i16 %res
}

define i16 @test_mask_pcmpeq_w_256(<16 x i16> %a, <16 x i16> %b, i16 %mask) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpeq.w.256(<16 x i16> %a, <16 x i16> %b, i16 %mask)
  ret i16 %res
}

declare i16 @llvm.x86.avx512.mask.pcmpeq.w.256(<16 x i16>, <16 x i16>, i16)

define i32 @test_pcmpgt_b_256(<32 x i8> %a, <32 x i8> %b) {


  %res = call i32 @llvm.x86.avx512.mask.pcmpgt.b.256(<32 x i8> %a, <32 x i8> %b, i32 -1)
  ret i32 %res
}

define i32 @test_mask_pcmpgt_b_256(<32 x i8> %a, <32 x i8> %b, i32 %mask) {


  %res = call i32 @llvm.x86.avx512.mask.pcmpgt.b.256(<32 x i8> %a, <32 x i8> %b, i32 %mask)
  ret i32 %res
}

declare i32 @llvm.x86.avx512.mask.pcmpgt.b.256(<32 x i8>, <32 x i8>, i32)

define i16 @test_pcmpgt_w_256(<16 x i16> %a, <16 x i16> %b) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpgt.w.256(<16 x i16> %a, <16 x i16> %b, i16 -1)
  ret i16 %res
}

define i16 @test_mask_pcmpgt_w_256(<16 x i16> %a, <16 x i16> %b, i16 %mask) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpgt.w.256(<16 x i16> %a, <16 x i16> %b, i16 %mask)
  ret i16 %res
}

declare i16 @llvm.x86.avx512.mask.pcmpgt.w.256(<16 x i16>, <16 x i16>, i16)

define <8 x i32> @test_cmp_b_256(<32 x i8> %a0, <32 x i8> %a1) {


  %res0 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 0, i32 -1)
  %vec0 = insertelement <8 x i32> undef, i32 %res0, i32 0

  %res1 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 1, i32 -1)
  %vec1 = insertelement <8 x i32> %vec0, i32 %res1, i32 1

  %res2 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 2, i32 -1)
  %vec2 = insertelement <8 x i32> %vec1, i32 %res2, i32 2

  %res3 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 3, i32 -1)
  %vec3 = insertelement <8 x i32> %vec2, i32 %res3, i32 3

  %res4 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 4, i32 -1)
  %vec4 = insertelement <8 x i32> %vec3, i32 %res4, i32 4

  %res5 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 5, i32 -1)
  %vec5 = insertelement <8 x i32> %vec4, i32 %res5, i32 5

  %res6 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 6, i32 -1)
  %vec6 = insertelement <8 x i32> %vec5, i32 %res6, i32 6

  %res7 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 7, i32 -1)
  %vec7 = insertelement <8 x i32> %vec6, i32 %res7, i32 7
  ret <8 x i32> %vec7
}

define <8 x i32> @test_mask_cmp_b_256(<32 x i8> %a0, <32 x i8> %a1, i32 %mask) {


  %res0 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 0, i32 %mask)
  %vec0 = insertelement <8 x i32> undef, i32 %res0, i32 0

  %res1 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 1, i32 %mask)
  %vec1 = insertelement <8 x i32> %vec0, i32 %res1, i32 1

  %res2 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 2, i32 %mask)
  %vec2 = insertelement <8 x i32> %vec1, i32 %res2, i32 2

  %res3 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 3, i32 %mask)
  %vec3 = insertelement <8 x i32> %vec2, i32 %res3, i32 3

  %res4 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 4, i32 %mask)
  %vec4 = insertelement <8 x i32> %vec3, i32 %res4, i32 4

  %res5 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 5, i32 %mask)
  %vec5 = insertelement <8 x i32> %vec4, i32 %res5, i32 5

  %res6 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 6, i32 %mask)
  %vec6 = insertelement <8 x i32> %vec5, i32 %res6, i32 6

  %res7 = call i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 7, i32 %mask)
  %vec7 = insertelement <8 x i32> %vec6, i32 %res7, i32 7
  ret <8 x i32> %vec7
}

declare i32 @llvm.x86.avx512.mask.cmp.b.256(<32 x i8>, <32 x i8>, i32, i32) nounwind readnone

define <8 x i32> @test_ucmp_b_256(<32 x i8> %a0, <32 x i8> %a1) {


  %res0 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 0, i32 -1)
  %vec0 = insertelement <8 x i32> undef, i32 %res0, i32 0

  %res1 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 1, i32 -1)
  %vec1 = insertelement <8 x i32> %vec0, i32 %res1, i32 1

  %res2 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 2, i32 -1)
  %vec2 = insertelement <8 x i32> %vec1, i32 %res2, i32 2

  %res3 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 3, i32 -1)
  %vec3 = insertelement <8 x i32> %vec2, i32 %res3, i32 3

  %res4 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 4, i32 -1)
  %vec4 = insertelement <8 x i32> %vec3, i32 %res4, i32 4

  %res5 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 5, i32 -1)
  %vec5 = insertelement <8 x i32> %vec4, i32 %res5, i32 5

  %res6 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 6, i32 -1)
  %vec6 = insertelement <8 x i32> %vec5, i32 %res6, i32 6

  %res7 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 7, i32 -1)
  %vec7 = insertelement <8 x i32> %vec6, i32 %res7, i32 7
  ret <8 x i32> %vec7
}

define <8 x i32> @test_mask_ucmp_b_256(<32 x i8> %a0, <32 x i8> %a1, i32 %mask) {


  %res0 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 0, i32 %mask)
  %vec0 = insertelement <8 x i32> undef, i32 %res0, i32 0

  %res1 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 1, i32 %mask)
  %vec1 = insertelement <8 x i32> %vec0, i32 %res1, i32 1

  %res2 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 2, i32 %mask)
  %vec2 = insertelement <8 x i32> %vec1, i32 %res2, i32 2

  %res3 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 3, i32 %mask)
  %vec3 = insertelement <8 x i32> %vec2, i32 %res3, i32 3

  %res4 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 4, i32 %mask)
  %vec4 = insertelement <8 x i32> %vec3, i32 %res4, i32 4

  %res5 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 5, i32 %mask)
  %vec5 = insertelement <8 x i32> %vec4, i32 %res5, i32 5

  %res6 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 6, i32 %mask)
  %vec6 = insertelement <8 x i32> %vec5, i32 %res6, i32 6

  %res7 = call i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8> %a0, <32 x i8> %a1, i32 7, i32 %mask)
  %vec7 = insertelement <8 x i32> %vec6, i32 %res7, i32 7
  ret <8 x i32> %vec7
}

declare i32 @llvm.x86.avx512.mask.ucmp.b.256(<32 x i8>, <32 x i8>, i32, i32) nounwind readnone

define <8 x i16> @test_cmp_w_256(<16 x i16> %a0, <16 x i16> %a1) {


  %res0 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 0, i16 -1)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 1, i16 -1)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 2, i16 -1)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 3, i16 -1)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 4, i16 -1)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 5, i16 -1)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 6, i16 -1)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 7, i16 -1)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

define <8 x i16> @test_mask_cmp_w_256(<16 x i16> %a0, <16 x i16> %a1, i16 %mask) {


  %res0 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 0, i16 %mask)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 1, i16 %mask)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 2, i16 %mask)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 3, i16 %mask)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 4, i16 %mask)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 5, i16 %mask)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 6, i16 %mask)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 7, i16 %mask)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

declare i16 @llvm.x86.avx512.mask.cmp.w.256(<16 x i16>, <16 x i16>, i32, i16) nounwind readnone

define <8 x i16> @test_ucmp_w_256(<16 x i16> %a0, <16 x i16> %a1) {


  %res0 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 0, i16 -1)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 1, i16 -1)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 2, i16 -1)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 3, i16 -1)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 4, i16 -1)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 5, i16 -1)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 6, i16 -1)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 7, i16 -1)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

define <8 x i16> @test_mask_ucmp_w_256(<16 x i16> %a0, <16 x i16> %a1, i16 %mask) {


  %res0 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 0, i16 %mask)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 1, i16 %mask)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 2, i16 %mask)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 3, i16 %mask)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 4, i16 %mask)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 5, i16 %mask)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 6, i16 %mask)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16> %a0, <16 x i16> %a1, i32 7, i16 %mask)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

declare i16 @llvm.x86.avx512.mask.ucmp.w.256(<16 x i16>, <16 x i16>, i32, i16) nounwind readnone



define i16 @test_pcmpeq_b_128(<16 x i8> %a, <16 x i8> %b) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpeq.b.128(<16 x i8> %a, <16 x i8> %b, i16 -1)
  ret i16 %res
}

define i16 @test_mask_pcmpeq_b_128(<16 x i8> %a, <16 x i8> %b, i16 %mask) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpeq.b.128(<16 x i8> %a, <16 x i8> %b, i16 %mask)
  ret i16 %res
}

declare i16 @llvm.x86.avx512.mask.pcmpeq.b.128(<16 x i8>, <16 x i8>, i16)

define i8 @test_pcmpeq_w_128(<8 x i16> %a, <8 x i16> %b) {


  %res = call i8 @llvm.x86.avx512.mask.pcmpeq.w.128(<8 x i16> %a, <8 x i16> %b, i8 -1)
  ret i8 %res
}

define i8 @test_mask_pcmpeq_w_128(<8 x i16> %a, <8 x i16> %b, i8 %mask) {


  %res = call i8 @llvm.x86.avx512.mask.pcmpeq.w.128(<8 x i16> %a, <8 x i16> %b, i8 %mask)
  ret i8 %res
}

declare i8 @llvm.x86.avx512.mask.pcmpeq.w.128(<8 x i16>, <8 x i16>, i8)

define i16 @test_pcmpgt_b_128(<16 x i8> %a, <16 x i8> %b) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpgt.b.128(<16 x i8> %a, <16 x i8> %b, i16 -1)
  ret i16 %res
}

define i16 @test_mask_pcmpgt_b_128(<16 x i8> %a, <16 x i8> %b, i16 %mask) {


  %res = call i16 @llvm.x86.avx512.mask.pcmpgt.b.128(<16 x i8> %a, <16 x i8> %b, i16 %mask)
  ret i16 %res
}

declare i16 @llvm.x86.avx512.mask.pcmpgt.b.128(<16 x i8>, <16 x i8>, i16)

define i8 @test_pcmpgt_w_128(<8 x i16> %a, <8 x i16> %b) {


  %res = call i8 @llvm.x86.avx512.mask.pcmpgt.w.128(<8 x i16> %a, <8 x i16> %b, i8 -1)
  ret i8 %res
}

define i8 @test_mask_pcmpgt_w_128(<8 x i16> %a, <8 x i16> %b, i8 %mask) {


  %res = call i8 @llvm.x86.avx512.mask.pcmpgt.w.128(<8 x i16> %a, <8 x i16> %b, i8 %mask)
  ret i8 %res
}

declare i8 @llvm.x86.avx512.mask.pcmpgt.w.128(<8 x i16>, <8 x i16>, i8)

define <8 x i16> @test_cmp_b_128(<16 x i8> %a0, <16 x i8> %a1) {


  %res0 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 0, i16 -1)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 1, i16 -1)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 2, i16 -1)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 3, i16 -1)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 4, i16 -1)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 5, i16 -1)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 6, i16 -1)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 7, i16 -1)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

define <8 x i16> @test_mask_cmp_b_128(<16 x i8> %a0, <16 x i8> %a1, i16 %mask) {


  %res0 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 0, i16 %mask)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 1, i16 %mask)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 2, i16 %mask)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 3, i16 %mask)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 4, i16 %mask)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 5, i16 %mask)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 6, i16 %mask)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 7, i16 %mask)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

declare i16 @llvm.x86.avx512.mask.cmp.b.128(<16 x i8>, <16 x i8>, i32, i16) nounwind readnone

define <8 x i16> @test_ucmp_b_128(<16 x i8> %a0, <16 x i8> %a1) {


  %res0 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 0, i16 -1)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 1, i16 -1)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 2, i16 -1)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 3, i16 -1)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 4, i16 -1)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 5, i16 -1)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 6, i16 -1)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 7, i16 -1)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

define <8 x i16> @test_mask_ucmp_b_128(<16 x i8> %a0, <16 x i8> %a1, i16 %mask) {


  %res0 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 0, i16 %mask)
  %vec0 = insertelement <8 x i16> undef, i16 %res0, i32 0

  %res1 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 1, i16 %mask)
  %vec1 = insertelement <8 x i16> %vec0, i16 %res1, i32 1

  %res2 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 2, i16 %mask)
  %vec2 = insertelement <8 x i16> %vec1, i16 %res2, i32 2

  %res3 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 3, i16 %mask)
  %vec3 = insertelement <8 x i16> %vec2, i16 %res3, i32 3

  %res4 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 4, i16 %mask)
  %vec4 = insertelement <8 x i16> %vec3, i16 %res4, i32 4

  %res5 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 5, i16 %mask)
  %vec5 = insertelement <8 x i16> %vec4, i16 %res5, i32 5

  %res6 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 6, i16 %mask)
  %vec6 = insertelement <8 x i16> %vec5, i16 %res6, i32 6

  %res7 = call i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8> %a0, <16 x i8> %a1, i32 7, i16 %mask)
  %vec7 = insertelement <8 x i16> %vec6, i16 %res7, i32 7
  ret <8 x i16> %vec7
}

declare i16 @llvm.x86.avx512.mask.ucmp.b.128(<16 x i8>, <16 x i8>, i32, i16) nounwind readnone

define <8 x i8> @test_cmp_w_128(<8 x i16> %a0, <8 x i16> %a1) {


  %res0 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 0, i8 -1)
  %vec0 = insertelement <8 x i8> undef, i8 %res0, i32 0

  %res1 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 1, i8 -1)
  %vec1 = insertelement <8 x i8> %vec0, i8 %res1, i32 1

  %res2 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 2, i8 -1)
  %vec2 = insertelement <8 x i8> %vec1, i8 %res2, i32 2

  %res3 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 3, i8 -1)
  %vec3 = insertelement <8 x i8> %vec2, i8 %res3, i32 3

  %res4 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 4, i8 -1)
  %vec4 = insertelement <8 x i8> %vec3, i8 %res4, i32 4

  %res5 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 5, i8 -1)
  %vec5 = insertelement <8 x i8> %vec4, i8 %res5, i32 5

  %res6 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 6, i8 -1)
  %vec6 = insertelement <8 x i8> %vec5, i8 %res6, i32 6

  %res7 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 7, i8 -1)
  %vec7 = insertelement <8 x i8> %vec6, i8 %res7, i32 7
  ret <8 x i8> %vec7
}

define <8 x i8> @test_mask_cmp_w_128(<8 x i16> %a0, <8 x i16> %a1, i8 %mask) {


  %res0 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 0, i8 %mask)
  %vec0 = insertelement <8 x i8> undef, i8 %res0, i32 0

  %res1 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 1, i8 %mask)
  %vec1 = insertelement <8 x i8> %vec0, i8 %res1, i32 1

  %res2 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 2, i8 %mask)
  %vec2 = insertelement <8 x i8> %vec1, i8 %res2, i32 2

  %res3 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 3, i8 %mask)
  %vec3 = insertelement <8 x i8> %vec2, i8 %res3, i32 3

  %res4 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 4, i8 %mask)
  %vec4 = insertelement <8 x i8> %vec3, i8 %res4, i32 4

  %res5 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 5, i8 %mask)
  %vec5 = insertelement <8 x i8> %vec4, i8 %res5, i32 5

  %res6 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 6, i8 %mask)
  %vec6 = insertelement <8 x i8> %vec5, i8 %res6, i32 6

  %res7 = call i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 7, i8 %mask)
  %vec7 = insertelement <8 x i8> %vec6, i8 %res7, i32 7
  ret <8 x i8> %vec7
}

declare i8 @llvm.x86.avx512.mask.cmp.w.128(<8 x i16>, <8 x i16>, i32, i8) nounwind readnone

define <8 x i8> @test_ucmp_w_128(<8 x i16> %a0, <8 x i16> %a1) {


  %res0 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 0, i8 -1)
  %vec0 = insertelement <8 x i8> undef, i8 %res0, i32 0

  %res1 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 1, i8 -1)
  %vec1 = insertelement <8 x i8> %vec0, i8 %res1, i32 1

  %res2 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 2, i8 -1)
  %vec2 = insertelement <8 x i8> %vec1, i8 %res2, i32 2

  %res3 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 3, i8 -1)
  %vec3 = insertelement <8 x i8> %vec2, i8 %res3, i32 3

  %res4 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 4, i8 -1)
  %vec4 = insertelement <8 x i8> %vec3, i8 %res4, i32 4

  %res5 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 5, i8 -1)
  %vec5 = insertelement <8 x i8> %vec4, i8 %res5, i32 5

  %res6 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 6, i8 -1)
  %vec6 = insertelement <8 x i8> %vec5, i8 %res6, i32 6

  %res7 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 7, i8 -1)
  %vec7 = insertelement <8 x i8> %vec6, i8 %res7, i32 7
  ret <8 x i8> %vec7
}

define <8 x i8> @test_mask_ucmp_w_128(<8 x i16> %a0, <8 x i16> %a1, i8 %mask) {


  %res0 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 0, i8 %mask)
  %vec0 = insertelement <8 x i8> undef, i8 %res0, i32 0

  %res1 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 1, i8 %mask)
  %vec1 = insertelement <8 x i8> %vec0, i8 %res1, i32 1

  %res2 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 2, i8 %mask)
  %vec2 = insertelement <8 x i8> %vec1, i8 %res2, i32 2

  %res3 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 3, i8 %mask)
  %vec3 = insertelement <8 x i8> %vec2, i8 %res3, i32 3

  %res4 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 4, i8 %mask)
  %vec4 = insertelement <8 x i8> %vec3, i8 %res4, i32 4

  %res5 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 5, i8 %mask)
  %vec5 = insertelement <8 x i8> %vec4, i8 %res5, i32 5

  %res6 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 6, i8 %mask)
  %vec6 = insertelement <8 x i8> %vec5, i8 %res6, i32 6

  %res7 = call i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16> %a0, <8 x i16> %a1, i32 7, i8 %mask)
  %vec7 = insertelement <8 x i8> %vec6, i8 %res7, i32 7
  ret <8 x i8> %vec7
}

declare i8 @llvm.x86.avx512.mask.ucmp.w.128(<8 x i16>, <8 x i16>, i32, i8) nounwind readnone

declare <8 x float> @llvm.x86.avx512.mask.vfmadd.ps.256(<8 x float>, <8 x float>, <8 x float>, i8) nounwind readnone

define <8 x float> @test_mask_vfmadd256_ps(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2, i8 %mask) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.vfmadd.ps.256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2, i8 %mask) nounwind
  ret <8 x float> %res
}

declare <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float>, <4 x float>, <4 x float>, i8) nounwind readnone

define <4 x float> @test_mask_vfmadd128_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) nounwind
  ret <4 x float> %res
}

declare <4 x double> @llvm.x86.avx512.mask.vfmadd.pd.256(<4 x double>, <4 x double>, <4 x double>, i8)

define <4 x double> @test_mask_fmadd256_pd(<4 x double> %a, <4 x double> %b, <4 x double> %c, i8 %mask) {


  %res = call <4 x double> @llvm.x86.avx512.mask.vfmadd.pd.256(<4 x double> %a, <4 x double> %b, <4 x double> %c, i8 %mask)
  ret <4 x double> %res
}

declare <2 x double> @llvm.x86.avx512.mask.vfmadd.pd.128(<2 x double>, <2 x double>, <2 x double>, i8)

define <2 x double> @test_mask_fmadd128_pd(<2 x double> %a, <2 x double> %b, <2 x double> %c, i8 %mask) {


  %res = call <2 x double> @llvm.x86.avx512.mask.vfmadd.pd.128(<2 x double> %a, <2 x double> %b, <2 x double> %c, i8 %mask)
  ret <2 x double> %res
}

define <2 x double>@test_int_x86_avx512_mask_vfmadd_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.mask.vfmadd.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.vfmadd.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <2 x double> @llvm.x86.avx512.mask3.vfmadd.pd.128(<2 x double>, <2 x double>, <2 x double>, i8)

define <2 x double>@test_int_x86_avx512_mask3_vfmadd_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.mask3.vfmadd.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.mask3.vfmadd.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <2 x double> @llvm.x86.avx512.maskz.vfmadd.pd.128(<2 x double>, <2 x double>, <2 x double>, i8)

define <2 x double>@test_int_x86_avx512_maskz_vfmadd_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.maskz.vfmadd.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.maskz.vfmadd.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

define <4 x double>@test_int_x86_avx512_mask_vfmadd_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.mask.vfmadd.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.mask.vfmadd.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <4 x double> @llvm.x86.avx512.mask3.vfmadd.pd.256(<4 x double>, <4 x double>, <4 x double>, i8)

define <4 x double>@test_int_x86_avx512_mask3_vfmadd_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.mask3.vfmadd.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.mask3.vfmadd.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <4 x double> @llvm.x86.avx512.maskz.vfmadd.pd.256(<4 x double>, <4 x double>, <4 x double>, i8)

define <4 x double>@test_int_x86_avx512_maskz_vfmadd_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.maskz.vfmadd.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.maskz.vfmadd.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

define <4 x float>@test_int_x86_avx512_mask_vfmadd_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <4 x float> @llvm.x86.avx512.mask3.vfmadd.ps.128(<4 x float>, <4 x float>, <4 x float>, i8)

define <4 x float>@test_int_x86_avx512_mask3_vfmadd_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.mask3.vfmadd.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.mask3.vfmadd.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <4 x float> @llvm.x86.avx512.maskz.vfmadd.ps.128(<4 x float>, <4 x float>, <4 x float>, i8)

define <4 x float>@test_int_x86_avx512_maskz_vfmadd_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.maskz.vfmadd.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.maskz.vfmadd.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

define <8 x float>@test_int_x86_avx512_mask_vfmadd_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.mask.vfmadd.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.mask.vfmadd.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <8 x float> @llvm.x86.avx512.mask3.vfmadd.ps.256(<8 x float>, <8 x float>, <8 x float>, i8)

define <8 x float>@test_int_x86_avx512_mask3_vfmadd_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.mask3.vfmadd.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.mask3.vfmadd.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <8 x float> @llvm.x86.avx512.maskz.vfmadd.ps.256(<8 x float>, <8 x float>, <8 x float>, i8)

define <8 x float>@test_int_x86_avx512_maskz_vfmadd_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.maskz.vfmadd.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.maskz.vfmadd.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}


declare <2 x double> @llvm.x86.avx512.mask3.vfmsub.pd.128(<2 x double>, <2 x double>, <2 x double>, i8)

define <2 x double>@test_int_x86_avx512_mask3_vfmsub_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.mask3.vfmsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.mask3.vfmsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}


declare <4 x double> @llvm.x86.avx512.mask3.vfmsub.pd.256(<4 x double>, <4 x double>, <4 x double>, i8)

define <4 x double>@test_int_x86_avx512_mask3_vfmsub_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.mask3.vfmsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.mask3.vfmsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <4 x float> @llvm.x86.avx512.mask3.vfmsub.ps.128(<4 x float>, <4 x float>, <4 x float>, i8)

define <4 x float>@test_int_x86_avx512_mask3_vfmsub_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.mask3.vfmsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.mask3.vfmsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <8 x float> @llvm.x86.avx512.mask3.vfmsub.ps.256(<8 x float>, <8 x float>, <8 x float>, i8)

define <8 x float>@test_int_x86_avx512_mask3_vfmsub_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.mask3.vfmsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.mask3.vfmsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <8 x float> @llvm.x86.avx512.mask.vfnmadd.ps.256(<8 x float>, <8 x float>, <8 x float>, i8) nounwind readnone

define <8 x float> @test_mask_vfnmadd256_ps(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2, i8 %mask) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.vfnmadd.ps.256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2, i8 %mask) nounwind
  ret <8 x float> %res
}

declare <4 x float> @llvm.x86.avx512.mask.vfnmadd.ps.128(<4 x float>, <4 x float>, <4 x float>, i8) nounwind readnone

define <4 x float> @test_mask_vfnmadd128_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.vfnmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) nounwind
  ret <4 x float> %res
}

declare <4 x double> @llvm.x86.avx512.mask.vfnmadd.pd.256(<4 x double>, <4 x double>, <4 x double>, i8) nounwind readnone

define <4 x double> @test_mask_vfnmadd256_pd(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2, i8 %mask) {
  
  
  %res = call <4 x double> @llvm.x86.avx512.mask.vfnmadd.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2, i8 %mask) nounwind
  ret <4 x double> %res
}

declare <2 x double> @llvm.x86.avx512.mask.vfnmadd.pd.128(<2 x double>, <2 x double>, <2 x double>, i8) nounwind readnone

define <2 x double> @test_mask_vfnmadd128_pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {
  
  
  %res = call <2 x double> @llvm.x86.avx512.mask.vfnmadd.pd.128(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) nounwind
  ret <2 x double> %res
}

declare <8 x float> @llvm.x86.avx512.mask.vfnmsub.ps.256(<8 x float>, <8 x float>, <8 x float>, i8) nounwind readnone

define <8 x float> @test_mask_vfnmsub256_ps(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2, i8 %mask) {
  
  
  %res = call <8 x float> @llvm.x86.avx512.mask.vfnmsub.ps.256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2, i8 %mask) nounwind
  ret <8 x float> %res
}

declare <4 x float> @llvm.x86.avx512.mask.vfnmsub.ps.128(<4 x float>, <4 x float>, <4 x float>, i8) nounwind readnone

define <4 x float> @test_mask_vfnmsub128_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.vfnmsub.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) nounwind
  ret <4 x float> %res
}

declare <4 x double> @llvm.x86.avx512.mask.vfnmsub.pd.256(<4 x double>, <4 x double>, <4 x double>, i8) nounwind readnone

define <4 x double> @test_mask_vfnmsub256_pd(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2, i8 %mask) {
  
  
  %res = call <4 x double> @llvm.x86.avx512.mask.vfnmsub.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2, i8 %mask) nounwind
  ret <4 x double> %res
}

declare <2 x double> @llvm.x86.avx512.mask.vfnmsub.pd.128(<2 x double>, <2 x double>, <2 x double>, i8) nounwind readnone

define <2 x double> @test_mask_vfnmsub128_pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {
  
  
  %res = call <2 x double> @llvm.x86.avx512.mask.vfnmsub.pd.128(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) nounwind
  ret <2 x double> %res
}


define <2 x double>@test_int_x86_avx512_mask_vfnmsub_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.mask.vfnmsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.vfnmsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <2 x double> @llvm.x86.avx512.mask3.vfnmsub.pd.128(<2 x double>, <2 x double>, <2 x double>, i8)

define <2 x double>@test_int_x86_avx512_mask3_vfnmsub_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.mask3.vfnmsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.mask3.vfnmsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

define <4 x double>@test_int_x86_avx512_mask_vfnmsub_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.mask.vfnmsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.mask.vfnmsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <4 x double> @llvm.x86.avx512.mask3.vfnmsub.pd.256(<4 x double>, <4 x double>, <4 x double>, i8)

define <4 x double>@test_int_x86_avx512_mask3_vfnmsub_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.mask3.vfnmsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.mask3.vfnmsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

define <4 x float>@test_int_x86_avx512_mask_vfnmsub_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.mask.vfnmsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.vfnmsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <4 x float> @llvm.x86.avx512.mask3.vfnmsub.ps.128(<4 x float>, <4 x float>, <4 x float>, i8)

define <4 x float>@test_int_x86_avx512_mask3_vfnmsub_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.mask3.vfnmsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.mask3.vfnmsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

define <8 x float>@test_int_x86_avx512_mask_vfnmsub_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.mask.vfnmsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.mask.vfnmsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <8 x float> @llvm.x86.avx512.mask3.vfnmsub.ps.256(<8 x float>, <8 x float>, <8 x float>, i8)

define <8 x float>@test_int_x86_avx512_mask3_vfnmsub_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.mask3.vfnmsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.mask3.vfnmsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

define <2 x double>@test_int_x86_avx512_mask_vfnmadd_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.mask.vfnmadd.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.vfnmadd.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

define <4 x double>@test_int_x86_avx512_mask_vfnmadd_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.mask.vfnmadd.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.mask.vfnmadd.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

define <4 x float>@test_int_x86_avx512_mask_vfnmadd_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.mask.vfnmadd.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.vfnmadd.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

define <8 x float>@test_int_x86_avx512_mask_vfnmadd_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.mask.vfnmadd.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.mask.vfnmadd.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <8 x float> @llvm.x86.avx512.mask.vfmaddsub.ps.256(<8 x float>, <8 x float>, <8 x float>, i8) nounwind readnone

define <8 x float> @test_mask_fmaddsub256_ps(<8 x float> %a, <8 x float> %b, <8 x float> %c, i8 %mask) {


  %res = call <8 x float> @llvm.x86.avx512.mask.vfmaddsub.ps.256(<8 x float> %a, <8 x float> %b, <8 x float> %c, i8 %mask)
  ret <8 x float> %res
}

declare <4 x float> @llvm.x86.avx512.mask.vfmaddsub.ps.128(<4 x float>, <4 x float>, <4 x float>, i8) nounwind readnone

define <4 x float> @test_mask_fmaddsub128_ps(<4 x float> %a, <4 x float> %b, <4 x float> %c, i8 %mask) {


  %res = call <4 x float> @llvm.x86.avx512.mask.vfmaddsub.ps.128(<4 x float> %a, <4 x float> %b, <4 x float> %c, i8 %mask)
  ret <4 x float> %res
}

declare <4 x double> @llvm.x86.avx512.mask.vfmaddsub.pd.256(<4 x double>, <4 x double>, <4 x double>, i8) nounwind readnone

define <4 x double> @test_mask_vfmaddsub256_pd(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2, i8 %mask) {
  
  
  %res = call <4 x double> @llvm.x86.avx512.mask.vfmaddsub.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2, i8 %mask) nounwind
  ret <4 x double> %res
}

declare <2 x double> @llvm.x86.avx512.mask.vfmaddsub.pd.128(<2 x double>, <2 x double>, <2 x double>, i8) nounwind readnone

define <2 x double> @test_mask_vfmaddsub128_pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {
  
  
  %res = call <2 x double> @llvm.x86.avx512.mask.vfmaddsub.pd.128(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) nounwind
  ret <2 x double> %res
}

define <2 x double>@test_int_x86_avx512_mask_vfmaddsub_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.mask.vfmaddsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.mask.vfmaddsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <2 x double> @llvm.x86.avx512.mask3.vfmaddsub.pd.128(<2 x double>, <2 x double>, <2 x double>, i8)

define <2 x double>@test_int_x86_avx512_mask3_vfmaddsub_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.mask3.vfmaddsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.mask3.vfmaddsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <2 x double> @llvm.x86.avx512.maskz.vfmaddsub.pd.128(<2 x double>, <2 x double>, <2 x double>, i8)

define <2 x double>@test_int_x86_avx512_maskz_vfmaddsub_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.maskz.vfmaddsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.maskz.vfmaddsub.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 -1)
  %res2 = fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

define <4 x double>@test_int_x86_avx512_mask_vfmaddsub_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.mask.vfmaddsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.mask.vfmaddsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <4 x double> @llvm.x86.avx512.mask3.vfmaddsub.pd.256(<4 x double>, <4 x double>, <4 x double>, i8)

define <4 x double>@test_int_x86_avx512_mask3_vfmaddsub_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.mask3.vfmaddsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.mask3.vfmaddsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <4 x double> @llvm.x86.avx512.maskz.vfmaddsub.pd.256(<4 x double>, <4 x double>, <4 x double>, i8)

define <4 x double>@test_int_x86_avx512_maskz_vfmaddsub_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.maskz.vfmaddsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.maskz.vfmaddsub.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 -1)
  %res2 = fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

define <4 x float>@test_int_x86_avx512_mask_vfmaddsub_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.mask.vfmaddsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.mask.vfmaddsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <4 x float> @llvm.x86.avx512.mask3.vfmaddsub.ps.128(<4 x float>, <4 x float>, <4 x float>, i8)

define <4 x float>@test_int_x86_avx512_mask3_vfmaddsub_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.mask3.vfmaddsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.mask3.vfmaddsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <4 x float> @llvm.x86.avx512.maskz.vfmaddsub.ps.128(<4 x float>, <4 x float>, <4 x float>, i8)

define <4 x float>@test_int_x86_avx512_maskz_vfmaddsub_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.maskz.vfmaddsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.maskz.vfmaddsub.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 -1)
  %res2 = fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

define <8 x float>@test_int_x86_avx512_mask_vfmaddsub_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.mask.vfmaddsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.mask.vfmaddsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <8 x float> @llvm.x86.avx512.mask3.vfmaddsub.ps.256(<8 x float>, <8 x float>, <8 x float>, i8)

define <8 x float>@test_int_x86_avx512_mask3_vfmaddsub_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.mask3.vfmaddsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.mask3.vfmaddsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <8 x float> @llvm.x86.avx512.maskz.vfmaddsub.ps.256(<8 x float>, <8 x float>, <8 x float>, i8)

define <8 x float>@test_int_x86_avx512_maskz_vfmaddsub_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.maskz.vfmaddsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.maskz.vfmaddsub.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 -1)
  %res2 = fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}

declare <2 x double> @llvm.x86.avx512.mask3.vfmsubadd.pd.128(<2 x double>, <2 x double>, <2 x double>, i8)

define <2 x double>@test_int_x86_avx512_mask3_vfmsubadd_pd_128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3) {









  %res = call <2 x double> @llvm.x86.avx512.mask3.vfmsubadd.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 %x3)
  %res1 = call <2 x double> @llvm.x86.avx512.mask3.vfmsubadd.pd.128(<2 x double> %x0, <2 x double> %x1, <2 x double> %x2, i8 -1)
  %res2=fadd <2 x double> %res, %res1
  ret <2 x double> %res2
}

declare <4 x double> @llvm.x86.avx512.mask3.vfmsubadd.pd.256(<4 x double>, <4 x double>, <4 x double>, i8)

define <4 x double>@test_int_x86_avx512_mask3_vfmsubadd_pd_256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3) {









  %res = call <4 x double> @llvm.x86.avx512.mask3.vfmsubadd.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 %x3)
  %res1 = call <4 x double> @llvm.x86.avx512.mask3.vfmsubadd.pd.256(<4 x double> %x0, <4 x double> %x1, <4 x double> %x2, i8 -1)
  %res2=fadd <4 x double> %res, %res1
  ret <4 x double> %res2
}

declare <4 x float> @llvm.x86.avx512.mask3.vfmsubadd.ps.128(<4 x float>, <4 x float>, <4 x float>, i8)

define <4 x float>@test_int_x86_avx512_mask3_vfmsubadd_ps_128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3) {









  %res = call <4 x float> @llvm.x86.avx512.mask3.vfmsubadd.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 %x3)
  %res1 = call <4 x float> @llvm.x86.avx512.mask3.vfmsubadd.ps.128(<4 x float> %x0, <4 x float> %x1, <4 x float> %x2, i8 -1)
  %res2=fadd <4 x float> %res, %res1
  ret <4 x float> %res2
}

declare <8 x float> @llvm.x86.avx512.mask3.vfmsubadd.ps.256(<8 x float>, <8 x float>, <8 x float>, i8)

define <8 x float>@test_int_x86_avx512_mask3_vfmsubadd_ps_256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3) {









  %res = call <8 x float> @llvm.x86.avx512.mask3.vfmsubadd.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 %x3)
  %res1 = call <8 x float> @llvm.x86.avx512.mask3.vfmsubadd.ps.256(<8 x float> %x0, <8 x float> %x1, <8 x float> %x2, i8 -1)
  %res2=fadd <8 x float> %res, %res1
  ret <8 x float> %res2
}


define <4 x float> @test_mask_vfmadd128_ps_r(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) nounwind
  ret <4 x float> %res
}

define <4 x float> @test_mask_vfmadd128_ps_rz(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) {
  
  
  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 -1) nounwind
  ret <4 x float> %res
}

define <4 x float> @test_mask_vfmadd128_ps_rmk(<4 x float> %a0, <4 x float> %a1, <4 x float>* %ptr_a2, i8 %mask) {
  
  
  %a2 = load <4 x float>, <4 x float>* %ptr_a2
  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) nounwind
  ret <4 x float> %res
}

define <4 x float> @test_mask_vfmadd128_ps_rmka(<4 x float> %a0, <4 x float> %a1, <4 x float>* %ptr_a2, i8 %mask) {
  
  
  %a2 = load <4 x float>, <4 x float>* %ptr_a2, align 8
  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 %mask) nounwind
  ret <4 x float> %res
}

define <4 x float> @test_mask_vfmadd128_ps_rmkz(<4 x float> %a0, <4 x float> %a1, <4 x float>* %ptr_a2) {
  
  
  %a2 = load <4 x float>, <4 x float>* %ptr_a2
  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 -1) nounwind
  ret <4 x float> %res
}

define <4 x float> @test_mask_vfmadd128_ps_rmkza(<4 x float> %a0, <4 x float> %a1, <4 x float>* %ptr_a2) {
  
  
  %a2 = load <4 x float>, <4 x float>* %ptr_a2, align 4
  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2, i8 -1) nounwind
  ret <4 x float> %res
}

define <4 x float> @test_mask_vfmadd128_ps_rmb(<4 x float> %a0, <4 x float> %a1, float* %ptr_a2, i8 %mask) {
  
  
  %q = load float, float* %ptr_a2
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %vecinit2.i = insertelement <4 x float> %vecinit.i, float %q, i32 1
  %vecinit4.i = insertelement <4 x float> %vecinit2.i, float %q, i32 2
  %vecinit6.i = insertelement <4 x float> %vecinit4.i, float %q, i32 3
  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %vecinit6.i, i8 %mask) nounwind
  ret <4 x float> %res
}

define <4 x float> @test_mask_vfmadd128_ps_rmba(<4 x float> %a0, <4 x float> %a1, float* %ptr_a2, i8 %mask) {
  
  
  %q = load float, float* %ptr_a2, align 4
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %vecinit2.i = insertelement <4 x float> %vecinit.i, float %q, i32 1
  %vecinit4.i = insertelement <4 x float> %vecinit2.i, float %q, i32 2
  %vecinit6.i = insertelement <4 x float> %vecinit4.i, float %q, i32 3
  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %vecinit6.i, i8 %mask) nounwind
  ret <4 x float> %res
}

define <4 x float> @test_mask_vfmadd128_ps_rmbz(<4 x float> %a0, <4 x float> %a1, float* %ptr_a2) {
  
  
  %q = load float, float* %ptr_a2
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %vecinit2.i = insertelement <4 x float> %vecinit.i, float %q, i32 1
  %vecinit4.i = insertelement <4 x float> %vecinit2.i, float %q, i32 2
  %vecinit6.i = insertelement <4 x float> %vecinit4.i, float %q, i32 3
  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %vecinit6.i, i8 -1) nounwind
  ret <4 x float> %res
}

define <4 x float> @test_mask_vfmadd128_ps_rmbza(<4 x float> %a0, <4 x float> %a1, float* %ptr_a2) {
  
  
  %q = load float, float* %ptr_a2, align 4
  %vecinit.i = insertelement <4 x float> undef, float %q, i32 0
  %vecinit2.i = insertelement <4 x float> %vecinit.i, float %q, i32 1
  %vecinit4.i = insertelement <4 x float> %vecinit2.i, float %q, i32 2
  %vecinit6.i = insertelement <4 x float> %vecinit4.i, float %q, i32 3
  %res = call <4 x float> @llvm.x86.avx512.mask.vfmadd.ps.128(<4 x float> %a0, <4 x float> %a1, <4 x float> %vecinit6.i, i8 -1) nounwind
  ret <4 x float> %res
}

define <2 x double> @test_mask_vfmadd128_pd_r(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) {
  
  
  %res = call <2 x double> @llvm.x86.avx512.mask.vfmadd.pd.128(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) nounwind
  ret <2 x double> %res
}

define <2 x double> @test_mask_vfmadd128_pd_rz(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) {
  
  
  %res = call <2 x double> @llvm.x86.avx512.mask.vfmadd.pd.128(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 -1) nounwind
  ret <2 x double> %res
}

define <2 x double> @test_mask_vfmadd128_pd_rmk(<2 x double> %a0, <2 x double> %a1, <2 x double>* %ptr_a2, i8 %mask) {
  
  
  %a2 = load <2 x double>, <2 x double>* %ptr_a2
  %res = call <2 x double> @llvm.x86.avx512.mask.vfmadd.pd.128(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 %mask) nounwind
  ret <2 x double> %res
}

define <2 x double> @test_mask_vfmadd128_pd_rmkz(<2 x double> %a0, <2 x double> %a1, <2 x double>* %ptr_a2) {
  
  
  %a2 = load <2 x double>, <2 x double>* %ptr_a2
  %res = call <2 x double> @llvm.x86.avx512.mask.vfmadd.pd.128(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2, i8 -1) nounwind
  ret <2 x double> %res
}

define <4 x double> @test_mask_vfmadd256_pd_r(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2, i8 %mask) {
  
  
  %res = call <4 x double> @llvm.x86.avx512.mask.vfmadd.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2, i8 %mask) nounwind
  ret <4 x double> %res
}

define <4 x double> @test_mask_vfmadd256_pd_rz(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2) {
  
  
  %res = call <4 x double> @llvm.x86.avx512.mask.vfmadd.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2, i8 -1) nounwind
  ret <4 x double> %res
}

define <4 x double> @test_mask_vfmadd256_pd_rmk(<4 x double> %a0, <4 x double> %a1, <4 x double>* %ptr_a2, i8 %mask) {
  
  
  %a2 = load <4 x double>, <4 x double>* %ptr_a2
  %res = call <4 x double> @llvm.x86.avx512.mask.vfmadd.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2, i8 %mask) nounwind
  ret <4 x double> %res
}

define <4 x double> @test_mask_vfmadd256_pd_rmkz(<4 x double> %a0, <4 x double> %a1, <4 x double>* %ptr_a2) {
  
  
  %a2 = load <4 x double>, <4 x double>* %ptr_a2
  %res = call <4 x double> @llvm.x86.avx512.mask.vfmadd.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2, i8 -1) nounwind
  ret <4 x double> %res
}
define <8 x i16> @test_mask_add_epi16_rr_128(<8 x i16> %a, <8 x i16> %b) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.padd.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_add_epi16_rrk_128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.padd.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_add_epi16_rrkz_128(<8 x i16> %a, <8 x i16> %b, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.padd.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_add_epi16_rm_128(<8 x i16> %a, <8 x i16>* %ptr_b) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.padd.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_add_epi16_rmk_128(<8 x i16> %a, <8 x i16>* %ptr_b, <8 x i16> %passThru, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.padd.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_add_epi16_rmkz_128(<8 x i16> %a, <8 x i16>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.padd.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

declare <8 x i16> @llvm.x86.avx512.mask.padd.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)

define <16 x i16> @test_mask_add_epi16_rr_256(<16 x i16> %a, <16 x i16> %b) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.padd.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_add_epi16_rrk_256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.padd.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_add_epi16_rrkz_256(<16 x i16> %a, <16 x i16> %b, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.padd.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_add_epi16_rm_256(<16 x i16> %a, <16 x i16>* %ptr_b) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.padd.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_add_epi16_rmk_256(<16 x i16> %a, <16 x i16>* %ptr_b, <16 x i16> %passThru, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.padd.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_add_epi16_rmkz_256(<16 x i16> %a, <16 x i16>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.padd.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

declare <16 x i16> @llvm.x86.avx512.mask.padd.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)

define <8 x i16> @test_mask_sub_epi16_rr_128(<8 x i16> %a, <8 x i16> %b) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.psub.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_sub_epi16_rrk_128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.psub.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_sub_epi16_rrkz_128(<8 x i16> %a, <8 x i16> %b, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.psub.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_sub_epi16_rm_128(<8 x i16> %a, <8 x i16>* %ptr_b) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.psub.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_sub_epi16_rmk_128(<8 x i16> %a, <8 x i16>* %ptr_b, <8 x i16> %passThru, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.psub.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_sub_epi16_rmkz_128(<8 x i16> %a, <8 x i16>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.psub.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

declare <8 x i16> @llvm.x86.avx512.mask.psub.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)

define <16 x i16> @test_mask_sub_epi16_rr_256(<16 x i16> %a, <16 x i16> %b) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.psub.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_sub_epi16_rrk_256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.psub.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_sub_epi16_rrkz_256(<16 x i16> %a, <16 x i16> %b, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.psub.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_sub_epi16_rm_256(<16 x i16> %a, <16 x i16>* %ptr_b) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.psub.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_sub_epi16_rmk_256(<16 x i16> %a, <16 x i16>* %ptr_b, <16 x i16> %passThru, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.psub.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_sub_epi16_rmkz_256(<16 x i16> %a, <16 x i16>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.psub.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

declare <16 x i16> @llvm.x86.avx512.mask.psub.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)

define <32 x i16> @test_mask_add_epi16_rr_512(<32 x i16> %a, <32 x i16> %b) {
  
  
  %res = call <32 x i16> @llvm.x86.avx512.mask.padd.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 -1)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_add_epi16_rrk_512(<32 x i16> %a, <32 x i16> %b, <32 x i16> %passThru, i32 %mask) {
  
  
  %res = call <32 x i16> @llvm.x86.avx512.mask.padd.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> %passThru, i32 %mask)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_add_epi16_rrkz_512(<32 x i16> %a, <32 x i16> %b, i32 %mask) {
  
  
  %res = call <32 x i16> @llvm.x86.avx512.mask.padd.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 %mask)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_add_epi16_rm_512(<32 x i16> %a, <32 x i16>* %ptr_b) {
  
  
  %b = load <32 x i16>, <32 x i16>* %ptr_b
  %res = call <32 x i16> @llvm.x86.avx512.mask.padd.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 -1)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_add_epi16_rmk_512(<32 x i16> %a, <32 x i16>* %ptr_b, <32 x i16> %passThru, i32 %mask) {
  
  
  %b = load <32 x i16>, <32 x i16>* %ptr_b
  %res = call <32 x i16> @llvm.x86.avx512.mask.padd.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> %passThru, i32 %mask)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_add_epi16_rmkz_512(<32 x i16> %a, <32 x i16>* %ptr_b, i32 %mask) {
  
  
  %b = load <32 x i16>, <32 x i16>* %ptr_b
  %res = call <32 x i16> @llvm.x86.avx512.mask.padd.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 %mask)
  ret <32 x i16> %res
}

declare <32 x i16> @llvm.x86.avx512.mask.padd.w.512(<32 x i16>, <32 x i16>, <32 x i16>, i32)

define <32 x i16> @test_mask_sub_epi16_rr_512(<32 x i16> %a, <32 x i16> %b) {
  
  
  %res = call <32 x i16> @llvm.x86.avx512.mask.psub.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 -1)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_sub_epi16_rrk_512(<32 x i16> %a, <32 x i16> %b, <32 x i16> %passThru, i32 %mask) {
  
  
  %res = call <32 x i16> @llvm.x86.avx512.mask.psub.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> %passThru, i32 %mask)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_sub_epi16_rrkz_512(<32 x i16> %a, <32 x i16> %b, i32 %mask) {
  
  
  %res = call <32 x i16> @llvm.x86.avx512.mask.psub.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 %mask)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_sub_epi16_rm_512(<32 x i16> %a, <32 x i16>* %ptr_b) {
  
  
  %b = load <32 x i16>, <32 x i16>* %ptr_b
  %res = call <32 x i16> @llvm.x86.avx512.mask.psub.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 -1)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_sub_epi16_rmk_512(<32 x i16> %a, <32 x i16>* %ptr_b, <32 x i16> %passThru, i32 %mask) {
  
  
  %b = load <32 x i16>, <32 x i16>* %ptr_b
  %res = call <32 x i16> @llvm.x86.avx512.mask.psub.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> %passThru, i32 %mask)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_sub_epi16_rmkz_512(<32 x i16> %a, <32 x i16>* %ptr_b, i32 %mask) {
  
  
  %b = load <32 x i16>, <32 x i16>* %ptr_b
  %res = call <32 x i16> @llvm.x86.avx512.mask.psub.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 %mask)
  ret <32 x i16> %res
}

declare <32 x i16> @llvm.x86.avx512.mask.psub.w.512(<32 x i16>, <32 x i16>, <32 x i16>, i32)

define <32 x i16> @test_mask_mullo_epi16_rr_512(<32 x i16> %a, <32 x i16> %b) {
  
  
  %res = call <32 x i16> @llvm.x86.avx512.mask.pmull.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 -1)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_mullo_epi16_rrk_512(<32 x i16> %a, <32 x i16> %b, <32 x i16> %passThru, i32 %mask) {
  
  
  %res = call <32 x i16> @llvm.x86.avx512.mask.pmull.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> %passThru, i32 %mask)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_mullo_epi16_rrkz_512(<32 x i16> %a, <32 x i16> %b, i32 %mask) {
  
  
  %res = call <32 x i16> @llvm.x86.avx512.mask.pmull.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 %mask)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_mullo_epi16_rm_512(<32 x i16> %a, <32 x i16>* %ptr_b) {
  
  
  %b = load <32 x i16>, <32 x i16>* %ptr_b
  %res = call <32 x i16> @llvm.x86.avx512.mask.pmull.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 -1)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_mullo_epi16_rmk_512(<32 x i16> %a, <32 x i16>* %ptr_b, <32 x i16> %passThru, i32 %mask) {
  
  
  %b = load <32 x i16>, <32 x i16>* %ptr_b
  %res = call <32 x i16> @llvm.x86.avx512.mask.pmull.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> %passThru, i32 %mask)
  ret <32 x i16> %res
}

define <32 x i16> @test_mask_mullo_epi16_rmkz_512(<32 x i16> %a, <32 x i16>* %ptr_b, i32 %mask) {
  
  
  %b = load <32 x i16>, <32 x i16>* %ptr_b
  %res = call <32 x i16> @llvm.x86.avx512.mask.pmull.w.512(<32 x i16> %a, <32 x i16> %b, <32 x i16> zeroinitializer, i32 %mask)
  ret <32 x i16> %res
}

declare <32 x i16> @llvm.x86.avx512.mask.pmull.w.512(<32 x i16>, <32 x i16>, <32 x i16>, i32)

define <8 x i16> @test_mask_mullo_epi16_rr_128(<8 x i16> %a, <8 x i16> %b) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmull.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_mullo_epi16_rrk_128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmull.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_mullo_epi16_rrkz_128(<8 x i16> %a, <8 x i16> %b, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmull.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_mullo_epi16_rm_128(<8 x i16> %a, <8 x i16>* %ptr_b) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmull.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_mullo_epi16_rmk_128(<8 x i16> %a, <8 x i16>* %ptr_b, <8 x i16> %passThru, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmull.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_mullo_epi16_rmkz_128(<8 x i16> %a, <8 x i16>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmull.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

declare <8 x i16> @llvm.x86.avx512.mask.pmull.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)

define <16 x i16> @test_mask_mullo_epi16_rr_256(<16 x i16> %a, <16 x i16> %b) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmull.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_mullo_epi16_rrk_256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmull.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_mullo_epi16_rrkz_256(<16 x i16> %a, <16 x i16> %b, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmull.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_mullo_epi16_rm_256(<16 x i16> %a, <16 x i16>* %ptr_b) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmull.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_mullo_epi16_rmk_256(<16 x i16> %a, <16 x i16>* %ptr_b, <16 x i16> %passThru, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmull.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_mullo_epi16_rmkz_256(<16 x i16> %a, <16 x i16>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmull.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

declare <16 x i16> @llvm.x86.avx512.mask.pmull.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)


define <8 x i16> @test_mask_packs_epi32_rr_128(<4 x i32> %a, <4 x i32> %b) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.packssdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packs_epi32_rrk_128(<4 x i32> %a, <4 x i32> %b, <8 x i16> %passThru, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.packssdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packs_epi32_rrkz_128(<4 x i32> %a, <4 x i32> %b, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.packssdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packs_epi32_rm_128(<4 x i32> %a, <4 x i32>* %ptr_b) {
  
  
  %b = load <4 x i32>, <4 x i32>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.packssdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packs_epi32_rmk_128(<4 x i32> %a, <4 x i32>* %ptr_b, <8 x i16> %passThru, i8 %mask) {
  
  
  %b = load <4 x i32>, <4 x i32>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.packssdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packs_epi32_rmkz_128(<4 x i32> %a, <4 x i32>* %ptr_b, i8 %mask) {
  
  
  %b = load <4 x i32>, <4 x i32>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.packssdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packs_epi32_rmb_128(<4 x i32> %a, i32* %ptr_b) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <4 x i32> undef, i32 %q, i32 0
  %b = shufflevector <4 x i32> %vecinit.i, <4 x i32> undef, <4 x i32> zeroinitializer
  %res = call <8 x i16> @llvm.x86.avx512.mask.packssdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packs_epi32_rmbk_128(<4 x i32> %a, i32* %ptr_b, <8 x i16> %passThru, i8 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <4 x i32> undef, i32 %q, i32 0
  %b = shufflevector <4 x i32> %vecinit.i, <4 x i32> undef, <4 x i32> zeroinitializer
  %res = call <8 x i16> @llvm.x86.avx512.mask.packssdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packs_epi32_rmbkz_128(<4 x i32> %a, i32* %ptr_b, i8 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <4 x i32> undef, i32 %q, i32 0
  %b = shufflevector <4 x i32> %vecinit.i, <4 x i32> undef, <4 x i32> zeroinitializer
  %res = call <8 x i16> @llvm.x86.avx512.mask.packssdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

declare <8 x i16> @llvm.x86.avx512.mask.packssdw.128(<4 x i32>, <4 x i32>, <8 x i16>, i8)

define <16 x i16> @test_mask_packs_epi32_rr_256(<8 x i32> %a, <8 x i32> %b) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.packssdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packs_epi32_rrk_256(<8 x i32> %a, <8 x i32> %b, <16 x i16> %passThru, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.packssdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packs_epi32_rrkz_256(<8 x i32> %a, <8 x i32> %b, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.packssdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packs_epi32_rm_256(<8 x i32> %a, <8 x i32>* %ptr_b) {
  
  
  %b = load <8 x i32>, <8 x i32>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.packssdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packs_epi32_rmk_256(<8 x i32> %a, <8 x i32>* %ptr_b, <16 x i16> %passThru, i16 %mask) {
  
  
  %b = load <8 x i32>, <8 x i32>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.packssdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packs_epi32_rmkz_256(<8 x i32> %a, <8 x i32>* %ptr_b, i16 %mask) {
  
  
  %b = load <8 x i32>, <8 x i32>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.packssdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packs_epi32_rmb_256(<8 x i32> %a, i32* %ptr_b) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <8 x i32> undef, i32 %q, i32 0
  %b = shufflevector <8 x i32> %vecinit.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %res = call <16 x i16> @llvm.x86.avx512.mask.packssdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packs_epi32_rmbk_256(<8 x i32> %a, i32* %ptr_b, <16 x i16> %passThru, i16 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <8 x i32> undef, i32 %q, i32 0
  %b = shufflevector <8 x i32> %vecinit.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %res = call <16 x i16> @llvm.x86.avx512.mask.packssdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packs_epi32_rmbkz_256(<8 x i32> %a, i32* %ptr_b, i16 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <8 x i32> undef, i32 %q, i32 0
  %b = shufflevector <8 x i32> %vecinit.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %res = call <16 x i16> @llvm.x86.avx512.mask.packssdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

declare <16 x i16> @llvm.x86.avx512.mask.packssdw.256(<8 x i32>, <8 x i32>, <16 x i16>, i16)

define <16 x i8> @test_mask_packs_epi16_rr_128(<8 x i16> %a, <8 x i16> %b) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.packsswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_packs_epi16_rrk_128(<8 x i16> %a, <8 x i16> %b, <16 x i8> %passThru, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.packsswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_packs_epi16_rrkz_128(<8 x i16> %a, <8 x i16> %b, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.packsswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_packs_epi16_rm_128(<8 x i16> %a, <8 x i16>* %ptr_b) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.packsswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_packs_epi16_rmk_128(<8 x i16> %a, <8 x i16>* %ptr_b, <16 x i8> %passThru, i16 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.packsswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_packs_epi16_rmkz_128(<8 x i16> %a, <8 x i16>* %ptr_b, i16 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.packsswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

declare <16 x i8> @llvm.x86.avx512.mask.packsswb.128(<8 x i16>, <8 x i16>, <16 x i8>, i16)

define <32 x i8> @test_mask_packs_epi16_rr_256(<16 x i16> %a, <16 x i16> %b) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.packsswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_packs_epi16_rrk_256(<16 x i16> %a, <16 x i16> %b, <32 x i8> %passThru, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.packsswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_packs_epi16_rrkz_256(<16 x i16> %a, <16 x i16> %b, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.packsswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_packs_epi16_rm_256(<16 x i16> %a, <16 x i16>* %ptr_b) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.packsswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_packs_epi16_rmk_256(<16 x i16> %a, <16 x i16>* %ptr_b, <32 x i8> %passThru, i32 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.packsswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_packs_epi16_rmkz_256(<16 x i16> %a, <16 x i16>* %ptr_b, i32 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.packsswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

declare <32 x i8> @llvm.x86.avx512.mask.packsswb.256(<16 x i16>, <16 x i16>, <32 x i8>, i32)


define <8 x i16> @test_mask_packus_epi32_rr_128(<4 x i32> %a, <4 x i32> %b) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.packusdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packus_epi32_rrk_128(<4 x i32> %a, <4 x i32> %b, <8 x i16> %passThru, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.packusdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packus_epi32_rrkz_128(<4 x i32> %a, <4 x i32> %b, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.packusdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packus_epi32_rm_128(<4 x i32> %a, <4 x i32>* %ptr_b) {
  
  
  %b = load <4 x i32>, <4 x i32>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.packusdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packus_epi32_rmk_128(<4 x i32> %a, <4 x i32>* %ptr_b, <8 x i16> %passThru, i8 %mask) {
  
  
  %b = load <4 x i32>, <4 x i32>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.packusdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packus_epi32_rmkz_128(<4 x i32> %a, <4 x i32>* %ptr_b, i8 %mask) {
  
  
  %b = load <4 x i32>, <4 x i32>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.packusdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packus_epi32_rmb_128(<4 x i32> %a, i32* %ptr_b) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <4 x i32> undef, i32 %q, i32 0
  %b = shufflevector <4 x i32> %vecinit.i, <4 x i32> undef, <4 x i32> zeroinitializer
  %res = call <8 x i16> @llvm.x86.avx512.mask.packusdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packus_epi32_rmbk_128(<4 x i32> %a, i32* %ptr_b, <8 x i16> %passThru, i8 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <4 x i32> undef, i32 %q, i32 0
  %b = shufflevector <4 x i32> %vecinit.i, <4 x i32> undef, <4 x i32> zeroinitializer
  %res = call <8 x i16> @llvm.x86.avx512.mask.packusdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_packus_epi32_rmbkz_128(<4 x i32> %a, i32* %ptr_b, i8 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <4 x i32> undef, i32 %q, i32 0
  %b = shufflevector <4 x i32> %vecinit.i, <4 x i32> undef, <4 x i32> zeroinitializer
  %res = call <8 x i16> @llvm.x86.avx512.mask.packusdw.128(<4 x i32> %a, <4 x i32> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

declare <8 x i16> @llvm.x86.avx512.mask.packusdw.128(<4 x i32>, <4 x i32>, <8 x i16>, i8)

define <16 x i16> @test_mask_packus_epi32_rr_256(<8 x i32> %a, <8 x i32> %b) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.packusdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packus_epi32_rrk_256(<8 x i32> %a, <8 x i32> %b, <16 x i16> %passThru, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.packusdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packus_epi32_rrkz_256(<8 x i32> %a, <8 x i32> %b, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.packusdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packus_epi32_rm_256(<8 x i32> %a, <8 x i32>* %ptr_b) {
  
  
  %b = load <8 x i32>, <8 x i32>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.packusdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packus_epi32_rmk_256(<8 x i32> %a, <8 x i32>* %ptr_b, <16 x i16> %passThru, i16 %mask) {
  
  
  %b = load <8 x i32>, <8 x i32>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.packusdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packus_epi32_rmkz_256(<8 x i32> %a, <8 x i32>* %ptr_b, i16 %mask) {
  
  
  %b = load <8 x i32>, <8 x i32>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.packusdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packus_epi32_rmb_256(<8 x i32> %a, i32* %ptr_b) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <8 x i32> undef, i32 %q, i32 0
  %b = shufflevector <8 x i32> %vecinit.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %res = call <16 x i16> @llvm.x86.avx512.mask.packusdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packus_epi32_rmbk_256(<8 x i32> %a, i32* %ptr_b, <16 x i16> %passThru, i16 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <8 x i32> undef, i32 %q, i32 0
  %b = shufflevector <8 x i32> %vecinit.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %res = call <16 x i16> @llvm.x86.avx512.mask.packusdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_packus_epi32_rmbkz_256(<8 x i32> %a, i32* %ptr_b, i16 %mask) {
  
  
  %q = load i32, i32* %ptr_b
  %vecinit.i = insertelement <8 x i32> undef, i32 %q, i32 0
  %b = shufflevector <8 x i32> %vecinit.i, <8 x i32> undef, <8 x i32> zeroinitializer
  %res = call <16 x i16> @llvm.x86.avx512.mask.packusdw.256(<8 x i32> %a, <8 x i32> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

declare <16 x i16> @llvm.x86.avx512.mask.packusdw.256(<8 x i32>, <8 x i32>, <16 x i16>, i16)

define <16 x i8> @test_mask_packus_epi16_rr_128(<8 x i16> %a, <8 x i16> %b) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.packuswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_packus_epi16_rrk_128(<8 x i16> %a, <8 x i16> %b, <16 x i8> %passThru, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.packuswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_packus_epi16_rrkz_128(<8 x i16> %a, <8 x i16> %b, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.packuswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_packus_epi16_rm_128(<8 x i16> %a, <8 x i16>* %ptr_b) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.packuswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_packus_epi16_rmk_128(<8 x i16> %a, <8 x i16>* %ptr_b, <16 x i8> %passThru, i16 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.packuswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_packus_epi16_rmkz_128(<8 x i16> %a, <8 x i16>* %ptr_b, i16 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.packuswb.128(<8 x i16> %a, <8 x i16> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

declare <16 x i8> @llvm.x86.avx512.mask.packuswb.128(<8 x i16>, <8 x i16>, <16 x i8>, i16)

define <32 x i8> @test_mask_packus_epi16_rr_256(<16 x i16> %a, <16 x i16> %b) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.packuswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_packus_epi16_rrk_256(<16 x i16> %a, <16 x i16> %b, <32 x i8> %passThru, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.packuswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_packus_epi16_rrkz_256(<16 x i16> %a, <16 x i16> %b, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.packuswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_packus_epi16_rm_256(<16 x i16> %a, <16 x i16>* %ptr_b) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.packuswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_packus_epi16_rmk_256(<16 x i16> %a, <16 x i16>* %ptr_b, <32 x i8> %passThru, i32 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.packuswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_packus_epi16_rmkz_256(<16 x i16> %a, <16 x i16>* %ptr_b, i32 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.packuswb.256(<16 x i16> %a, <16 x i16> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

declare <32 x i8> @llvm.x86.avx512.mask.packuswb.256(<16 x i16>, <16 x i16>, <32 x i8>, i32)

define <8 x i16> @test_mask_adds_epi16_rr_128(<8 x i16> %a, <8 x i16> %b) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.padds.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_adds_epi16_rrk_128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.padds.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_adds_epi16_rrkz_128(<8 x i16> %a, <8 x i16> %b, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.padds.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_adds_epi16_rm_128(<8 x i16> %a, <8 x i16>* %ptr_b) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.padds.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_adds_epi16_rmk_128(<8 x i16> %a, <8 x i16>* %ptr_b, <8 x i16> %passThru, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.padds.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_adds_epi16_rmkz_128(<8 x i16> %a, <8 x i16>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.padds.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

declare <8 x i16> @llvm.x86.avx512.mask.padds.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)

define <16 x i16> @test_mask_adds_epi16_rr_256(<16 x i16> %a, <16 x i16> %b) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.padds.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_adds_epi16_rrk_256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.padds.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_adds_epi16_rrkz_256(<16 x i16> %a, <16 x i16> %b, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.padds.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_adds_epi16_rm_256(<16 x i16> %a, <16 x i16>* %ptr_b) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.padds.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_adds_epi16_rmk_256(<16 x i16> %a, <16 x i16>* %ptr_b, <16 x i16> %passThru, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.padds.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_adds_epi16_rmkz_256(<16 x i16> %a, <16 x i16>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.padds.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

declare <16 x i16> @llvm.x86.avx512.mask.padds.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)

define <8 x i16> @test_mask_subs_epi16_rr_128(<8 x i16> %a, <8 x i16> %b) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubs.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_subs_epi16_rrk_128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubs.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_subs_epi16_rrkz_128(<8 x i16> %a, <8 x i16> %b, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubs.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_subs_epi16_rm_128(<8 x i16> %a, <8 x i16>* %ptr_b) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubs.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_subs_epi16_rmk_128(<8 x i16> %a, <8 x i16>* %ptr_b, <8 x i16> %passThru, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubs.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_subs_epi16_rmkz_128(<8 x i16> %a, <8 x i16>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubs.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

declare <8 x i16> @llvm.x86.avx512.mask.psubs.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)

define <16 x i16> @test_mask_subs_epi16_rr_256(<16 x i16> %a, <16 x i16> %b) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubs.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_subs_epi16_rrk_256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubs.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_subs_epi16_rrkz_256(<16 x i16> %a, <16 x i16> %b, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubs.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_subs_epi16_rm_256(<16 x i16> %a, <16 x i16>* %ptr_b) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubs.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_subs_epi16_rmk_256(<16 x i16> %a, <16 x i16>* %ptr_b, <16 x i16> %passThru, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubs.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_subs_epi16_rmkz_256(<16 x i16> %a, <16 x i16>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubs.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

declare <16 x i16> @llvm.x86.avx512.mask.psubs.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)

define <8 x i16> @test_mask_adds_epu16_rr_128(<8 x i16> %a, <8 x i16> %b) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.paddus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_adds_epu16_rrk_128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.paddus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_adds_epu16_rrkz_128(<8 x i16> %a, <8 x i16> %b, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.paddus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_adds_epu16_rm_128(<8 x i16> %a, <8 x i16>* %ptr_b) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.paddus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_adds_epu16_rmk_128(<8 x i16> %a, <8 x i16>* %ptr_b, <8 x i16> %passThru, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.paddus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_adds_epu16_rmkz_128(<8 x i16> %a, <8 x i16>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.paddus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

declare <8 x i16> @llvm.x86.avx512.mask.paddus.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)

define <16 x i16> @test_mask_adds_epu16_rr_256(<16 x i16> %a, <16 x i16> %b) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.paddus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_adds_epu16_rrk_256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.paddus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_adds_epu16_rrkz_256(<16 x i16> %a, <16 x i16> %b, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.paddus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_adds_epu16_rm_256(<16 x i16> %a, <16 x i16>* %ptr_b) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.paddus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_adds_epu16_rmk_256(<16 x i16> %a, <16 x i16>* %ptr_b, <16 x i16> %passThru, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.paddus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_adds_epu16_rmkz_256(<16 x i16> %a, <16 x i16>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.paddus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

declare <16 x i16> @llvm.x86.avx512.mask.paddus.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)

define <8 x i16> @test_mask_subs_epu16_rr_128(<8 x i16> %a, <8 x i16> %b) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_subs_epu16_rrk_128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_subs_epu16_rrkz_128(<8 x i16> %a, <8 x i16> %b, i8 %mask) {
  
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_subs_epu16_rm_128(<8 x i16> %a, <8 x i16>* %ptr_b) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 -1)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_subs_epu16_rmk_128(<8 x i16> %a, <8 x i16>* %ptr_b, <8 x i16> %passThru, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> %passThru, i8 %mask)
  ret <8 x i16> %res
}

define <8 x i16> @test_mask_subs_epu16_rmkz_128(<8 x i16> %a, <8 x i16>* %ptr_b, i8 %mask) {
  
  
  %b = load <8 x i16>, <8 x i16>* %ptr_b
  %res = call <8 x i16> @llvm.x86.avx512.mask.psubus.w.128(<8 x i16> %a, <8 x i16> %b, <8 x i16> zeroinitializer, i8 %mask)
  ret <8 x i16> %res
}

declare <8 x i16> @llvm.x86.avx512.mask.psubus.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)

define <16 x i16> @test_mask_subs_epu16_rr_256(<16 x i16> %a, <16 x i16> %b) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_subs_epu16_rrk_256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_subs_epu16_rrkz_256(<16 x i16> %a, <16 x i16> %b, i16 %mask) {
  
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_subs_epu16_rm_256(<16 x i16> %a, <16 x i16>* %ptr_b) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 -1)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_subs_epu16_rmk_256(<16 x i16> %a, <16 x i16>* %ptr_b, <16 x i16> %passThru, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> %passThru, i16 %mask)
  ret <16 x i16> %res
}

define <16 x i16> @test_mask_subs_epu16_rmkz_256(<16 x i16> %a, <16 x i16>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i16>, <16 x i16>* %ptr_b
  %res = call <16 x i16> @llvm.x86.avx512.mask.psubus.w.256(<16 x i16> %a, <16 x i16> %b, <16 x i16> zeroinitializer, i16 %mask)
  ret <16 x i16> %res
}

declare <16 x i16> @llvm.x86.avx512.mask.psubus.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)

define <16 x i8> @test_mask_adds_epi8_rr_128(<16 x i8> %a, <16 x i8> %b) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.padds.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_adds_epi8_rrk_128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.padds.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_adds_epi8_rrkz_128(<16 x i8> %a, <16 x i8> %b, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.padds.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_adds_epi8_rm_128(<16 x i8> %a, <16 x i8>* %ptr_b) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.padds.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_adds_epi8_rmk_128(<16 x i8> %a, <16 x i8>* %ptr_b, <16 x i8> %passThru, i16 %mask) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.padds.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_adds_epi8_rmkz_128(<16 x i8> %a, <16 x i8>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.padds.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

declare <16 x i8> @llvm.x86.avx512.mask.padds.b.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)

define <32 x i8> @test_mask_adds_epi8_rr_256(<32 x i8> %a, <32 x i8> %b) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.padds.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_adds_epi8_rrk_256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.padds.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_adds_epi8_rrkz_256(<32 x i8> %a, <32 x i8> %b, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.padds.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_adds_epi8_rm_256(<32 x i8> %a, <32 x i8>* %ptr_b) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.padds.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_adds_epi8_rmk_256(<32 x i8> %a, <32 x i8>* %ptr_b, <32 x i8> %passThru, i32 %mask) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.padds.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_adds_epi8_rmkz_256(<32 x i8> %a, <32 x i8>* %ptr_b, i32 %mask) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.padds.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

declare <32 x i8> @llvm.x86.avx512.mask.padds.b.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)

define <16 x i8> @test_mask_subs_epi8_rr_128(<16 x i8> %a, <16 x i8> %b) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubs.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_subs_epi8_rrk_128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubs.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_subs_epi8_rrkz_128(<16 x i8> %a, <16 x i8> %b, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubs.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_subs_epi8_rm_128(<16 x i8> %a, <16 x i8>* %ptr_b) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubs.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_subs_epi8_rmk_128(<16 x i8> %a, <16 x i8>* %ptr_b, <16 x i8> %passThru, i16 %mask) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubs.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_subs_epi8_rmkz_128(<16 x i8> %a, <16 x i8>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubs.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

declare <16 x i8> @llvm.x86.avx512.mask.psubs.b.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)

define <32 x i8> @test_mask_subs_epi8_rr_256(<32 x i8> %a, <32 x i8> %b) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubs.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_subs_epi8_rrk_256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubs.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_subs_epi8_rrkz_256(<32 x i8> %a, <32 x i8> %b, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubs.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_subs_epi8_rm_256(<32 x i8> %a, <32 x i8>* %ptr_b) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubs.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_subs_epi8_rmk_256(<32 x i8> %a, <32 x i8>* %ptr_b, <32 x i8> %passThru, i32 %mask) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubs.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_subs_epi8_rmkz_256(<32 x i8> %a, <32 x i8>* %ptr_b, i32 %mask) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubs.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

declare <32 x i8> @llvm.x86.avx512.mask.psubs.b.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)

define <16 x i8> @test_mask_adds_epu8_rr_128(<16 x i8> %a, <16 x i8> %b) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.paddus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_adds_epu8_rrk_128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.paddus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_adds_epu8_rrkz_128(<16 x i8> %a, <16 x i8> %b, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.paddus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_adds_epu8_rm_128(<16 x i8> %a, <16 x i8>* %ptr_b) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.paddus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_adds_epu8_rmk_128(<16 x i8> %a, <16 x i8>* %ptr_b, <16 x i8> %passThru, i16 %mask) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.paddus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_adds_epu8_rmkz_128(<16 x i8> %a, <16 x i8>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.paddus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

declare <16 x i8> @llvm.x86.avx512.mask.paddus.b.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)

define <32 x i8> @test_mask_adds_epu8_rr_256(<32 x i8> %a, <32 x i8> %b) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.paddus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_adds_epu8_rrk_256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.paddus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_adds_epu8_rrkz_256(<32 x i8> %a, <32 x i8> %b, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.paddus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_adds_epu8_rm_256(<32 x i8> %a, <32 x i8>* %ptr_b) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.paddus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_adds_epu8_rmk_256(<32 x i8> %a, <32 x i8>* %ptr_b, <32 x i8> %passThru, i32 %mask) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.paddus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_adds_epu8_rmkz_256(<32 x i8> %a, <32 x i8>* %ptr_b, i32 %mask) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.paddus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

declare <32 x i8> @llvm.x86.avx512.mask.paddus.b.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)

define <16 x i8> @test_mask_subs_epu8_rr_128(<16 x i8> %a, <16 x i8> %b) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_subs_epu8_rrk_128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_subs_epu8_rrkz_128(<16 x i8> %a, <16 x i8> %b, i16 %mask) {
  
  
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_subs_epu8_rm_128(<16 x i8> %a, <16 x i8>* %ptr_b) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 -1)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_subs_epu8_rmk_128(<16 x i8> %a, <16 x i8>* %ptr_b, <16 x i8> %passThru, i16 %mask) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> %passThru, i16 %mask)
  ret <16 x i8> %res
}

define <16 x i8> @test_mask_subs_epu8_rmkz_128(<16 x i8> %a, <16 x i8>* %ptr_b, i16 %mask) {
  
  
  %b = load <16 x i8>, <16 x i8>* %ptr_b
  %res = call <16 x i8> @llvm.x86.avx512.mask.psubus.b.128(<16 x i8> %a, <16 x i8> %b, <16 x i8> zeroinitializer, i16 %mask)
  ret <16 x i8> %res
}

declare <16 x i8> @llvm.x86.avx512.mask.psubus.b.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)

define <32 x i8> @test_mask_subs_epu8_rr_256(<32 x i8> %a, <32 x i8> %b) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_subs_epu8_rrk_256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_subs_epu8_rrkz_256(<32 x i8> %a, <32 x i8> %b, i32 %mask) {
  
  
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_subs_epu8_rm_256(<32 x i8> %a, <32 x i8>* %ptr_b) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 -1)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_subs_epu8_rmk_256(<32 x i8> %a, <32 x i8>* %ptr_b, <32 x i8> %passThru, i32 %mask) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> %passThru, i32 %mask)
  ret <32 x i8> %res
}

define <32 x i8> @test_mask_subs_epu8_rmkz_256(<32 x i8> %a, <32 x i8>* %ptr_b, i32 %mask) {
  
  
  %b = load <32 x i8>, <32 x i8>* %ptr_b
  %res = call <32 x i8> @llvm.x86.avx512.mask.psubus.b.256(<32 x i8> %a, <32 x i8> %b, <32 x i8> zeroinitializer, i32 %mask)
  ret <32 x i8> %res
}

declare <32 x i8> @llvm.x86.avx512.mask.psubus.b.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)

declare <16 x i8> @llvm.x86.avx512.mask.pmaxs.b.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)





define <16 x i8>@test_int_x86_avx512_mask_pmaxs_b_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %mask) {
  %res = call <16 x i8> @llvm.x86.avx512.mask.pmaxs.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2 ,i16 %mask)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmaxs.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> zeroinitializer, i16 %mask)
  %res2 = add <16 x i8> %res, %res1
  ret <16 x i8> %res2
}

declare <32 x i8> @llvm.x86.avx512.mask.pmaxs.b.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)





define <32 x i8>@test_int_x86_avx512_mask_pmaxs_b_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {
  %res = call <32 x i8> @llvm.x86.avx512.mask.pmaxs.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.pmaxs.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res2 = add <32 x i8> %res, %res1
  ret <32 x i8> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.pmaxs.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)





define <8 x i16>@test_int_x86_avx512_mask_pmaxs_w_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmaxs.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.pmaxs.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.pmaxs.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)





define <16 x i16>@test_int_x86_avx512_mask_pmaxs_w_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %mask) {
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmaxs.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %mask)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.pmaxs.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> zeroinitializer, i16 %mask)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <16 x i8> @llvm.x86.avx512.mask.pmaxu.b.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)





define <16 x i8>@test_int_x86_avx512_mask_pmaxu_b_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2,i16 %mask) {
  %res = call <16 x i8> @llvm.x86.avx512.mask.pmaxu.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %mask)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmaxu.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> zeroinitializer, i16 %mask)
  %res2 = add <16 x i8> %res, %res1
  ret <16 x i8> %res2
}

declare <32 x i8> @llvm.x86.avx512.mask.pmaxu.b.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)





define <32 x i8>@test_int_x86_avx512_mask_pmaxu_b_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {
  %res = call <32 x i8> @llvm.x86.avx512.mask.pmaxu.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.pmaxu.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res2 = add <32 x i8> %res, %res1
  ret <32 x i8> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.pmaxu.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)





define <8 x i16>@test_int_x86_avx512_mask_pmaxu_w_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmaxu.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.pmaxu.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.pmaxu.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)





define <16 x i16>@test_int_x86_avx512_mask_pmaxu_w_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %mask) {
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmaxu.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %mask)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.pmaxu.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> zeroinitializer, i16 %mask)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <16 x i8> @llvm.x86.avx512.mask.pmins.b.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)





define <16 x i8>@test_int_x86_avx512_mask_pmins_b_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %mask) {
  %res = call <16 x i8> @llvm.x86.avx512.mask.pmins.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %mask)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmins.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> zeroinitializer, i16 %mask)
  %res2 = add <16 x i8> %res, %res1
  ret <16 x i8> %res2
}

declare <32 x i8> @llvm.x86.avx512.mask.pmins.b.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)





define <32 x i8>@test_int_x86_avx512_mask_pmins_b_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {
  %res = call <32 x i8> @llvm.x86.avx512.mask.pmins.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.pmins.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res2 = add <32 x i8> %res, %res1
  ret <32 x i8> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.pmins.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)





define <8 x i16>@test_int_x86_avx512_mask_pmins_w_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmins.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.pmins.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.pmins.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)





define <16 x i16>@test_int_x86_avx512_mask_pmins_w_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %mask) {
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmins.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %mask)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.pmins.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> zeroinitializer, i16 %mask)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <16 x i8> @llvm.x86.avx512.mask.pminu.b.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)





define <16 x i8>@test_int_x86_avx512_mask_pminu_b_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %mask) {
  %res = call <16 x i8> @llvm.x86.avx512.mask.pminu.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %mask)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.pminu.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> zeroinitializer, i16 %mask)
  %res2 = add <16 x i8> %res, %res1
  ret <16 x i8> %res2
}

declare <32 x i8> @llvm.x86.avx512.mask.pminu.b.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)





define <32 x i8>@test_int_x86_avx512_mask_pminu_b_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {
  %res = call <32 x i8> @llvm.x86.avx512.mask.pminu.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.pminu.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res2 = add <32 x i8> %res, %res1
  ret <32 x i8> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.pminu.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)





define <8 x i16>@test_int_x86_avx512_mask_pminu_w_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {
  %res = call <8 x i16> @llvm.x86.avx512.mask.pminu.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.pminu.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.pminu.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)





define <16 x i16>@test_int_x86_avx512_mask_pminu_w_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %mask) {
  %res = call <16 x i16> @llvm.x86.avx512.mask.pminu.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %mask)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.pminu.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> zeroinitializer, i16 %mask)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.vpermt2var.hi.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)






define <8 x i16>@test_int_x86_avx512_mask_vpermt2var_hi_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {
  %res = call <8 x i16> @llvm.x86.avx512.mask.vpermt2var.hi.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.vpermt2var.hi.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <8 x i16> @llvm.x86.avx512.maskz.vpermt2var.hi.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)





define <8 x i16>@test_int_x86_avx512_maskz_vpermt2var_hi_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {
  %res = call <8 x i16> @llvm.x86.avx512.maskz.vpermt2var.hi.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.maskz.vpermt2var.hi.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.vpermt2var.hi.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)





define <16 x i16>@test_int_x86_avx512_mask_vpermt2var_hi_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3) {
  %res = call <16 x i16> @llvm.x86.avx512.mask.vpermt2var.hi.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.vpermt2var.hi.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 -1)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.maskz.vpermt2var.hi.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)





define <16 x i16>@test_int_x86_avx512_maskz_vpermt2var_hi_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3) {
  %res = call <16 x i16> @llvm.x86.avx512.maskz.vpermt2var.hi.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3)
  %res1 = call <16 x i16> @llvm.x86.avx512.maskz.vpermt2var.hi.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 -1)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.vpermi2var.hi.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)





define <8 x i16>@test_int_x86_avx512_mask_vpermi2var_hi_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {
  %res = call <8 x i16> @llvm.x86.avx512.mask.vpermi2var.hi.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.vpermi2var.hi.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.vpermi2var.hi.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)





define <16 x i16>@test_int_x86_avx512_mask_vpermi2var_hi_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3) {
  %res = call <16 x i16> @llvm.x86.avx512.mask.vpermi2var.hi.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.vpermi2var.hi.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 -1)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <16 x i8> @llvm.x86.avx512.mask.pavg.b.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)





define <16 x i8>@test_int_x86_avx512_mask_pavg_b_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3) {
  %res = call <16 x i8> @llvm.x86.avx512.mask.pavg.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.pavg.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 -1)
  %res2 = add <16 x i8> %res, %res1
  ret <16 x i8> %res2
}

declare <32 x i8> @llvm.x86.avx512.mask.pavg.b.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)





define <32 x i8>@test_int_x86_avx512_mask_pavg_b_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {
  %res = call <32 x i8> @llvm.x86.avx512.mask.pavg.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.pavg.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res2 = add <32 x i8> %res, %res1
  ret <32 x i8> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.pavg.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)





define <8 x i16>@test_int_x86_avx512_mask_pavg_w_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {
  %res = call <8 x i16> @llvm.x86.avx512.mask.pavg.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.pavg.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.pavg.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)





define <16 x i16>@test_int_x86_avx512_mask_pavg_w_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3) {
  %res = call <16 x i16> @llvm.x86.avx512.mask.pavg.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.pavg.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 -1)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <16 x i8> @llvm.x86.avx512.mask.pshuf.b.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)





define <16 x i8>@test_int_x86_avx512_mask_pshuf_b_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3) {
  %res = call <16 x i8> @llvm.x86.avx512.mask.pshuf.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.pshuf.b.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 -1)
  %res2 = add <16 x i8> %res, %res1
  ret <16 x i8> %res2
}

declare <32 x i8> @llvm.x86.avx512.mask.pshuf.b.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)





define <32 x i8>@test_int_x86_avx512_mask_pshuf_b_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {
  %res = call <32 x i8> @llvm.x86.avx512.mask.pshuf.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.pshuf.b.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res2 = add <32 x i8> %res, %res1
  ret <32 x i8> %res2
}

declare <16 x i8> @llvm.x86.avx512.mask.pabs.b.128(<16 x i8>, <16 x i8>, i16)





define <16 x i8>@test_int_x86_avx512_mask_pabs_b_128(<16 x i8> %x0, <16 x i8> %x1, i16 %x2) {
  %res = call <16 x i8> @llvm.x86.avx512.mask.pabs.b.128(<16 x i8> %x0, <16 x i8> %x1, i16 %x2)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.pabs.b.128(<16 x i8> %x0, <16 x i8> %x1, i16 -1)
  %res2 = add <16 x i8> %res, %res1
  ret <16 x i8> %res2
}

declare <32 x i8> @llvm.x86.avx512.mask.pabs.b.256(<32 x i8>, <32 x i8>, i32)





define <32 x i8>@test_int_x86_avx512_mask_pabs_b_256(<32 x i8> %x0, <32 x i8> %x1, i32 %x2) {
  %res = call <32 x i8> @llvm.x86.avx512.mask.pabs.b.256(<32 x i8> %x0, <32 x i8> %x1, i32 %x2)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.pabs.b.256(<32 x i8> %x0, <32 x i8> %x1, i32 -1)
  %res2 = add <32 x i8> %res, %res1
  ret <32 x i8> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.pabs.w.128(<8 x i16>, <8 x i16>, i8)





define <8 x i16>@test_int_x86_avx512_mask_pabs_w_128(<8 x i16> %x0, <8 x i16> %x1, i8 %x2) {
  %res = call <8 x i16> @llvm.x86.avx512.mask.pabs.w.128(<8 x i16> %x0, <8 x i16> %x1, i8 %x2)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.pabs.w.128(<8 x i16> %x0, <8 x i16> %x1, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.pabs.w.256(<16 x i16>, <16 x i16>, i16)





define <16 x i16>@test_int_x86_avx512_mask_pabs_w_256(<16 x i16> %x0, <16 x i16> %x1, i16 %x2) {
  %res = call <16 x i16> @llvm.x86.avx512.mask.pabs.w.256(<16 x i16> %x0, <16 x i16> %x1, i16 %x2)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.pabs.w.256(<16 x i16> %x0, <16 x i16> %x1, i16 -1)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}



define <32 x i8> @test_x86_mask_blend_b_256(i32 %a0, <32 x i8> %a1, <32 x i8> %a2) {
  %res = call <32 x i8> @llvm.x86.avx512.mask.blend.b.256(<32 x i8> %a1, <32 x i8> %a2, i32 %a0) 
  ret <32 x i8> %res
}
declare <32 x i8> @llvm.x86.avx512.mask.blend.b.256(<32 x i8>, <32 x i8>, i32) nounwind readonly


define <16 x i16> @test_x86_mask_blend_w_256(i16 %mask, <16 x i16> %a1, <16 x i16> %a2) {
  
  %res = call <16 x i16> @llvm.x86.avx512.mask.blend.w.256(<16 x i16> %a1, <16 x i16> %a2, i16 %mask) 
  ret <16 x i16> %res
}
declare <16 x i16> @llvm.x86.avx512.mask.blend.w.256(<16 x i16>, <16 x i16>, i16) nounwind readonly



define <16 x i8> @test_x86_mask_blend_b_128(i16 %a0, <16 x i8> %a1, <16 x i8> %a2) {
  %res = call <16 x i8> @llvm.x86.avx512.mask.blend.b.128(<16 x i8> %a1, <16 x i8> %a2, i16 %a0) 
  ret <16 x i8> %res
}
declare <16 x i8> @llvm.x86.avx512.mask.blend.b.128(<16 x i8>, <16 x i8>, i16) nounwind readonly


define <8 x i16> @test_x86_mask_blend_w_128(i8 %mask, <8 x i16> %a1, <8 x i16> %a2) {
  
  %res = call <8 x i16> @llvm.x86.avx512.mask.blend.w.128(<8 x i16> %a1, <8 x i16> %a2, i8 %mask) 
  ret <8 x i16> %res
}
declare <8 x i16> @llvm.x86.avx512.mask.blend.w.128(<8 x i16>, <8 x i16>, i8) nounwind readonly

declare <8 x i16> @llvm.x86.avx512.mask.pmulhu.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)






define <8 x i16>@test_int_x86_avx512_mask_pmulhu_w_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmulhu.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.pmulhu.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.pmulhu.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)






define <16 x i16>@test_int_x86_avx512_mask_pmulhu_w_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3) {
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmulhu.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.pmulhu.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 -1)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.pmulh.w.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)






define <8 x i16>@test_int_x86_avx512_mask_pmulh_w_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmulh.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.pmulh.w.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.pmulh.w.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)





define <16 x i16>@test_int_x86_avx512_mask_pmulh_w_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3) {
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmulh.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.pmulh.w.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 -1)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.pmul.hr.sw.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)





define <8 x i16>@test_int_x86_avx512_mask_pmulhr_sw_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {
  %res = call <8 x i16> @llvm.x86.avx512.mask.pmul.hr.sw.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.pmul.hr.sw.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.pmul.hr.sw.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)





define <16 x i16>@test_int_x86_avx512_mask_pmulhr_sw_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3) {
  %res = call <16 x i16> @llvm.x86.avx512.mask.pmul.hr.sw.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.pmul.hr.sw.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 -1)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <16 x i8> @llvm.x86.avx512.mask.pmov.wb.128(<8 x i16>, <16 x i8>, i8)

define <16 x i8>@test_int_x86_avx512_mask_pmov_wb_128(<8 x i16> %x0, <16 x i8> %x1, i8 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmov.wb.128(<8 x i16> %x0, <16 x i8> %x1, i8 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmov.wb.128(<8 x i16> %x0, <16 x i8> %x1, i8 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmov.wb.128(<8 x i16> %x0, <16 x i8> zeroinitializer, i8 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmov.wb.mem.128(i8* %ptr, <8 x i16>, i8)

define void @test_int_x86_avx512_mask_pmov_wb_mem_128(i8* %ptr, <8 x i16> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmov.wb.mem.128(i8* %ptr, <8 x i16> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmov.wb.mem.128(i8* %ptr, <8 x i16> %x1, i8 %x2)
    ret void
}

declare <16 x i8> @llvm.x86.avx512.mask.pmovs.wb.128(<8 x i16>, <16 x i8>, i8)

define <16 x i8>@test_int_x86_avx512_mask_pmovs_wb_128(<8 x i16> %x0, <16 x i8> %x1, i8 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.wb.128(<8 x i16> %x0, <16 x i8> %x1, i8 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.wb.128(<8 x i16> %x0, <16 x i8> %x1, i8 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.wb.128(<8 x i16> %x0, <16 x i8> zeroinitializer, i8 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmovs.wb.mem.128(i8* %ptr, <8 x i16>, i8)

define void @test_int_x86_avx512_mask_pmovs_wb_mem_128(i8* %ptr, <8 x i16> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmovs.wb.mem.128(i8* %ptr, <8 x i16> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmovs.wb.mem.128(i8* %ptr, <8 x i16> %x1, i8 %x2)
    ret void
}

declare <16 x i8> @llvm.x86.avx512.mask.pmovus.wb.128(<8 x i16>, <16 x i8>, i8)

define <16 x i8>@test_int_x86_avx512_mask_pmovus_wb_128(<8 x i16> %x0, <16 x i8> %x1, i8 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.wb.128(<8 x i16> %x0, <16 x i8> %x1, i8 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.wb.128(<8 x i16> %x0, <16 x i8> %x1, i8 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.wb.128(<8 x i16> %x0, <16 x i8> zeroinitializer, i8 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmovus.wb.mem.128(i8* %ptr, <8 x i16>, i8)

define void @test_int_x86_avx512_mask_pmovus_wb_mem_128(i8* %ptr, <8 x i16> %x1, i8 %x2) {



    call void @llvm.x86.avx512.mask.pmovus.wb.mem.128(i8* %ptr, <8 x i16> %x1, i8 -1)
    call void @llvm.x86.avx512.mask.pmovus.wb.mem.128(i8* %ptr, <8 x i16> %x1, i8 %x2)
    ret void
}

declare <16 x i8> @llvm.x86.avx512.mask.pmov.wb.256(<16 x i16>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_pmov_wb_256(<16 x i16> %x0, <16 x i8> %x1, i16 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmov.wb.256(<16 x i16> %x0, <16 x i8> %x1, i16 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmov.wb.256(<16 x i16> %x0, <16 x i8> %x1, i16 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmov.wb.256(<16 x i16> %x0, <16 x i8> zeroinitializer, i16 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmov.wb.mem.256(i8* %ptr, <16 x i16>, i16)

define void @test_int_x86_avx512_mask_pmov_wb_mem_256(i8* %ptr, <16 x i16> %x1, i16 %x2) {



    call void @llvm.x86.avx512.mask.pmov.wb.mem.256(i8* %ptr, <16 x i16> %x1, i16 -1)
    call void @llvm.x86.avx512.mask.pmov.wb.mem.256(i8* %ptr, <16 x i16> %x1, i16 %x2)
    ret void
}

declare <16 x i8> @llvm.x86.avx512.mask.pmovs.wb.256(<16 x i16>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_pmovs_wb_256(<16 x i16> %x0, <16 x i8> %x1, i16 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.wb.256(<16 x i16> %x0, <16 x i8> %x1, i16 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.wb.256(<16 x i16> %x0, <16 x i8> %x1, i16 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmovs.wb.256(<16 x i16> %x0, <16 x i8> zeroinitializer, i16 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmovs.wb.mem.256(i8* %ptr, <16 x i16>, i16)

define void @test_int_x86_avx512_mask_pmovs_wb_mem_256(i8* %ptr, <16 x i16> %x1, i16 %x2) {



    call void @llvm.x86.avx512.mask.pmovs.wb.mem.256(i8* %ptr, <16 x i16> %x1, i16 -1)
    call void @llvm.x86.avx512.mask.pmovs.wb.mem.256(i8* %ptr, <16 x i16> %x1, i16 %x2)
    ret void
}

declare <16 x i8> @llvm.x86.avx512.mask.pmovus.wb.256(<16 x i16>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_pmovus_wb_256(<16 x i16> %x0, <16 x i8> %x1, i16 %x2) {




    %res0 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.wb.256(<16 x i16> %x0, <16 x i8> %x1, i16 -1)
    %res1 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.wb.256(<16 x i16> %x0, <16 x i8> %x1, i16 %x2)
    %res2 = call <16 x i8> @llvm.x86.avx512.mask.pmovus.wb.256(<16 x i16> %x0, <16 x i8> zeroinitializer, i16 %x2)
    %res3 = add <16 x i8> %res0, %res1
    %res4 = add <16 x i8> %res3, %res2
    ret <16 x i8> %res4
}

declare void @llvm.x86.avx512.mask.pmovus.wb.mem.256(i8* %ptr, <16 x i16>, i16)

define void @test_int_x86_avx512_mask_pmovus_wb_mem_256(i8* %ptr, <16 x i16> %x1, i16 %x2) {



    call void @llvm.x86.avx512.mask.pmovus.wb.mem.256(i8* %ptr, <16 x i16> %x1, i16 -1)
    call void @llvm.x86.avx512.mask.pmovus.wb.mem.256(i8* %ptr, <16 x i16> %x1, i16 %x2)
    ret void
}

declare <4 x i32> @llvm.x86.avx512.mask.pmaddw.d.128(<8 x i16>, <8 x i16>, <4 x i32>, i8)

define <4 x i32>@test_int_x86_avx512_mask_pmaddw_d_128(<8 x i16> %x0, <8 x i16> %x1, <4 x i32> %x2, i8 %x3) {








  %res = call <4 x i32> @llvm.x86.avx512.mask.pmaddw.d.128(<8 x i16> %x0, <8 x i16> %x1, <4 x i32> %x2, i8 %x3)
  %res1 = call <4 x i32> @llvm.x86.avx512.mask.pmaddw.d.128(<8 x i16> %x0, <8 x i16> %x1, <4 x i32> %x2, i8 -1)
  %res2 = add <4 x i32> %res, %res1
  ret <4 x i32> %res2
}

declare <8 x i32> @llvm.x86.avx512.mask.pmaddw.d.256(<16 x i16>, <16 x i16>, <8 x i32>, i8)

define <8 x i32>@test_int_x86_avx512_mask_pmaddw_d_256(<16 x i16> %x0, <16 x i16> %x1, <8 x i32> %x2, i8 %x3) {








  %res = call <8 x i32> @llvm.x86.avx512.mask.pmaddw.d.256(<16 x i16> %x0, <16 x i16> %x1, <8 x i32> %x2, i8 %x3)
  %res1 = call <8 x i32> @llvm.x86.avx512.mask.pmaddw.d.256(<16 x i16> %x0, <16 x i16> %x1, <8 x i32> %x2, i8 -1)
  %res2 = add <8 x i32> %res, %res1
  ret <8 x i32> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.pmaddubs.w.128(<16 x i8>, <16 x i8>, <8 x i16>, i8)

define <8 x i16>@test_int_x86_avx512_mask_pmaddubs_w_128(<16 x i8> %x0, <16 x i8> %x1, <8 x i16> %x2, i8 %x3) {








  %res = call <8 x i16> @llvm.x86.avx512.mask.pmaddubs.w.128(<16 x i8> %x0, <16 x i8> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.pmaddubs.w.128(<16 x i8> %x0, <16 x i8> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.pmaddubs.w.256(<32 x i8>, <32 x i8>, <16 x i16>, i16)

define <16 x i16>@test_int_x86_avx512_mask_pmaddubs_w_256(<32 x i8> %x0, <32 x i8> %x1, <16 x i16> %x2, i16 %x3) {







  %res = call <16 x i16> @llvm.x86.avx512.mask.pmaddubs.w.256(<32 x i8> %x0, <32 x i8> %x1, <16 x i16> %x2, i16 %x3)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.pmaddubs.w.256(<32 x i8> %x0, <32 x i8> %x1, <16 x i16> %x2, i16 -1)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <16 x i8> @llvm.x86.avx512.mask.punpckhb.w.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_punpckhb_w_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3) {



  %res = call <16 x i8> @llvm.x86.avx512.mask.punpckhb.w.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.punpckhb.w.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 -1)
  %res2 = add <16 x i8> %res, %res1
  ret <16 x i8> %res2
}

declare <16 x i8> @llvm.x86.avx512.mask.punpcklb.w.128(<16 x i8>, <16 x i8>, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_punpcklb_w_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3) {



  %res = call <16 x i8> @llvm.x86.avx512.mask.punpcklb.w.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 %x3)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.punpcklb.w.128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x2, i16 -1)
  %res2 = add <16 x i8> %res, %res1
  ret <16 x i8> %res2
}

declare <32 x i8> @llvm.x86.avx512.mask.punpckhb.w.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)

define <32 x i8>@test_int_x86_avx512_mask_punpckhb_w_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {



  %res = call <32 x i8> @llvm.x86.avx512.mask.punpckhb.w.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.punpckhb.w.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res2 = add <32 x i8> %res, %res1
  ret <32 x i8> %res2
}

declare <32 x i8> @llvm.x86.avx512.mask.punpcklb.w.256(<32 x i8>, <32 x i8>, <32 x i8>, i32)

define <32 x i8>@test_int_x86_avx512_mask_punpcklb_w_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3) {



  %res = call <32 x i8> @llvm.x86.avx512.mask.punpcklb.w.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 %x3)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.punpcklb.w.256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x2, i32 -1)
  %res2 = add <32 x i8> %res, %res1
  ret <32 x i8> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.punpcklw.d.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)

define <8 x i16>@test_int_x86_avx512_mask_punpcklw_d_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {



  %res = call <8 x i16> @llvm.x86.avx512.mask.punpcklw.d.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.punpcklw.d.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <8 x i16> @llvm.x86.avx512.mask.punpckhw.d.128(<8 x i16>, <8 x i16>, <8 x i16>, i8)

define <8 x i16>@test_int_x86_avx512_mask_punpckhw_d_128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3) {



  %res = call <8 x i16> @llvm.x86.avx512.mask.punpckhw.d.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 %x3)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.punpckhw.d.128(<8 x i16> %x0, <8 x i16> %x1, <8 x i16> %x2, i8 -1)
  %res2 = add <8 x i16> %res, %res1
  ret <8 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.punpcklw.d.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)

define <16 x i16>@test_int_x86_avx512_mask_punpcklw_d_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3) {



  %res = call <16 x i16> @llvm.x86.avx512.mask.punpcklw.d.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.punpcklw.d.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 -1)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <16 x i16> @llvm.x86.avx512.mask.punpckhw.d.256(<16 x i16>, <16 x i16>, <16 x i16>, i16)

define <16 x i16>@test_int_x86_avx512_mask_punpckhw_d_256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3) {



  %res = call <16 x i16> @llvm.x86.avx512.mask.punpckhw.d.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 %x3)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.punpckhw.d.256(<16 x i16> %x0, <16 x i16> %x1, <16 x i16> %x2, i16 -1)
  %res2 = add <16 x i16> %res, %res1
  ret <16 x i16> %res2
}

declare <16 x i8> @llvm.x86.avx512.mask.palignr.128(<16 x i8>, <16 x i8>, i32, <16 x i8>, i16)

define <16 x i8>@test_int_x86_avx512_mask_palignr_128(<16 x i8> %x0, <16 x i8> %x1, <16 x i8> %x3, i16 %x4) {









  %res = call <16 x i8> @llvm.x86.avx512.mask.palignr.128(<16 x i8> %x0, <16 x i8> %x1, i32 2, <16 x i8> %x3, i16 %x4)
  %res1 = call <16 x i8> @llvm.x86.avx512.mask.palignr.128(<16 x i8> %x0, <16 x i8> %x1, i32 2, <16 x i8> zeroinitializer, i16 %x4)
  %res2 = call <16 x i8> @llvm.x86.avx512.mask.palignr.128(<16 x i8> %x0, <16 x i8> %x1, i32 2, <16 x i8> %x3, i16 -1)
  %res3 = add <16 x i8> %res, %res1
  %res4 = add <16 x i8> %res3, %res2
  ret <16 x i8> %res4
}

declare <32 x i8> @llvm.x86.avx512.mask.palignr.256(<32 x i8>, <32 x i8>, i32, <32 x i8>, i32)

define <32 x i8>@test_int_x86_avx512_mask_palignr_256(<32 x i8> %x0, <32 x i8> %x1, <32 x i8> %x3, i32 %x4) {









  %res = call <32 x i8> @llvm.x86.avx512.mask.palignr.256(<32 x i8> %x0, <32 x i8> %x1, i32 2, <32 x i8> %x3, i32 %x4)
  %res1 = call <32 x i8> @llvm.x86.avx512.mask.palignr.256(<32 x i8> %x0, <32 x i8> %x1, i32 2, <32 x i8> zeroinitializer, i32 %x4)
  %res2 = call <32 x i8> @llvm.x86.avx512.mask.palignr.256(<32 x i8> %x0, <32 x i8> %x1, i32 2, <32 x i8> %x3, i32 -1)
  %res3 = add <32 x i8> %res, %res1
  %res4 = add <32 x i8> %res3, %res2
  ret <32 x i8> %res4
}

declare <8 x i16> @llvm.x86.avx512.mask.dbpsadbw.128(<16 x i8>, <16 x i8>, i32, <8 x i16>, i8)

define <8 x i16>@test_int_x86_avx512_mask_dbpsadbw_128(<16 x i8> %x0, <16 x i8> %x1, <8 x i16> %x3, i8 %x4) {










  %res = call <8 x i16> @llvm.x86.avx512.mask.dbpsadbw.128(<16 x i8> %x0, <16 x i8> %x1, i32 2, <8 x i16> %x3, i8 %x4)
  %res1 = call <8 x i16> @llvm.x86.avx512.mask.dbpsadbw.128(<16 x i8> %x0, <16 x i8> %x1, i32 2, <8 x i16> zeroinitializer, i8 %x4)
  %res2 = call <8 x i16> @llvm.x86.avx512.mask.dbpsadbw.128(<16 x i8> %x0, <16 x i8> %x1, i32 2, <8 x i16> %x3, i8 -1)
  %res3 = add <8 x i16> %res, %res1
  %res4 = add <8 x i16> %res2, %res3
  ret <8 x i16> %res4
}

declare <16 x i16> @llvm.x86.avx512.mask.dbpsadbw.256(<32 x i8>, <32 x i8>, i32, <16 x i16>, i16)

define <16 x i16>@test_int_x86_avx512_mask_dbpsadbw_256(<32 x i8> %x0, <32 x i8> %x1, <16 x i16> %x3, i16 %x4) {









  %res = call <16 x i16> @llvm.x86.avx512.mask.dbpsadbw.256(<32 x i8> %x0, <32 x i8> %x1, i32 2, <16 x i16> %x3, i16 %x4)
  %res1 = call <16 x i16> @llvm.x86.avx512.mask.dbpsadbw.256(<32 x i8> %x0, <32 x i8> %x1, i32 2, <16 x i16> zeroinitializer, i16 %x4)
  %res2 = call <16 x i16> @llvm.x86.avx512.mask.dbpsadbw.256(<32 x i8> %x0, <32 x i8> %x1, i32 2, <16 x i16> %x3, i16 -1)
  %res3 = add <16 x i16> %res, %res1
  %res4 = add <16 x i16> %res3, %res2
  ret <16 x i16> %res4
}
