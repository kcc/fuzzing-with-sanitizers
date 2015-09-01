


target triple = "x86_64-unknown-unknown"

define <8 x float> @shuffle_v8f32_00000000(<8 x float> %a, <8 x float> %b) {










  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00000010(<8 x float> %a, <8 x float> %b) {












  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00000200(<8 x float> %a, <8 x float> %b) {












  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00003000(<8 x float> %a, <8 x float> %b) {












  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00040000(<8 x float> %a, <8 x float> %b) {













  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00500000(<8 x float> %a, <8 x float> %b) {












  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_06000000(<8 x float> %a, <8 x float> %b) {












  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_70000000(<8 x float> %a, <8 x float> %b) {













  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_01014545(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00112233(<8 x float> %a, <8 x float> %b) {












  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00001111(<8 x float> %a, <8 x float> %b) {












  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_81a3c5e7(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 8, i32 1, i32 10, i32 3, i32 12, i32 5, i32 14, i32 7>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_08080808(<8 x float> %a, <8 x float> %b) {















  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_08084c4c(<8 x float> %a, <8 x float> %b) {





  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 8, i32 0, i32 8, i32 4, i32 12, i32 4, i32 12>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_8823cc67(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 8, i32 8, i32 2, i32 3, i32 12, i32 12, i32 6, i32 7>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_9832dc76(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 9, i32 8, i32 3, i32 2, i32 13, i32 12, i32 7, i32 6>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_9810dc54(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 9, i32 8, i32 1, i32 0, i32 13, i32 12, i32 5, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_08194c5d(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_2a3b6e7f(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_08192a3b(<8 x float> %a, <8 x float> %b) {















  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_08991abb(<8 x float> %a, <8 x float> %b) {

















  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 8, i32 9, i32 9, i32 1, i32 10, i32 11, i32 11>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_091b2d3f(<8 x float> %a, <8 x float> %b) {














  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 9, i32 1, i32 11, i32 2, i32 13, i32 3, i32 15>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_09ab1def(<8 x float> %a, <8 x float> %b) {













  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 1, i32 13, i32 14, i32 15>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00014445(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 4, i32 4, i32 4, i32 5>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00204464(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 0, i32 4, i32 4, i32 6, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_03004744(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 3, i32 0, i32 0, i32 4, i32 7, i32 4, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_10005444(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_22006644(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 2, i32 2, i32 0, i32 0, i32 6, i32 6, i32 4, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_33307774(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 3, i32 3, i32 3, i32 0, i32 7, i32 7, i32 7, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_32107654(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00234467(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 3, i32 4, i32 4, i32 6, i32 7>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00224466(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_10325476(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_11335577(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_10235467(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 5, i32 4, i32 6, i32 7>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_10225466(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 1, i32 0, i32 2, i32 2, i32 5, i32 4, i32 6, i32 6>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00015444(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 5, i32 4, i32 4, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00204644(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 0, i32 4, i32 6, i32 4, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_03004474(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 3, i32 0, i32 0, i32 4, i32 4, i32 7, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_10004444(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_22006446(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 2, i32 2, i32 0, i32 0, i32 6, i32 4, i32 4, i32 6>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_33307474(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 3, i32 3, i32 3, i32 0, i32 7, i32 4, i32 7, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_32104567(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 4, i32 5, i32 6, i32 7>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00236744(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 3, i32 6, i32 7, i32 4, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00226644(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 6, i32 6, i32 4, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_10324567(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 4, i32 5, i32 6, i32 7>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_11334567(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_01235467(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 6, i32 7>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_01235466(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 6, i32 6>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_002u6u44(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 undef, i32 6, i32 undef, i32 4, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_00uu66uu(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 0, i32 undef, i32 undef, i32 6, i32 6, i32 undef, i32 undef>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_103245uu(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 4, i32 5, i32 undef, i32 undef>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_1133uu67(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 undef, i32 undef, i32 6, i32 7>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_0uu354uu(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 0, i32 undef, i32 undef, i32 3, i32 5, i32 4, i32 undef, i32 undef>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_uuu3uu66(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 3, i32 undef, i32 undef, i32 6, i32 6>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_c348cda0(<8 x float> %a, <8 x float> %b) {


















  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 12, i32 3, i32 4, i32 8, i32 12, i32 13, i32 10, i32 0>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_f511235a(<8 x float> %a, <8 x float> %b) {



















  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 15, i32 5, i32 1, i32 1, i32 2, i32 3, i32 5, i32 10>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_32103210(<8 x float> %a, <8 x float> %b) {











  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1, i32 0>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_76547654(<8 x float> %a, <8 x float> %b) {












  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 7, i32 6, i32 5, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_76543210(<8 x float> %a, <8 x float> %b) {











  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_3210ba98(<8 x float> %a, <8 x float> %b) {





  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 11, i32 10, i32 9, i32 8>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_3210fedc(<8 x float> %a, <8 x float> %b) {





  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 15, i32 14, i32 13, i32 12>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_7654fedc(<8 x float> %a, <8 x float> %b) {





  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 15, i32 14, i32 13, i32 12>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_fedc7654(<8 x float> %a, <8 x float> %b) {





  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 7, i32 6, i32 5, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @PR21138(<8 x float> %truc, <8 x float> %tchose) {


















  %shuffle = shufflevector <8 x float> %truc, <8 x float> %tchose, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_ba987654(<8 x float> %a, <8 x float> %b) {





  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_ba983210(<8 x float> %a, <8 x float> %b) {





  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_80u1c4u5(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 8, i32 0, i32 undef, i32 1, i32 12, i32 4, i32 undef, i32 5>
  ret <8 x float> %shuffle
}

define <8 x float> @shuffle_v8f32_a2u3e6f7(<8 x float> %a, <8 x float> %b) {




  %shuffle = shufflevector <8 x float> %a, <8 x float> %b, <8 x i32> <i32 10, i32 2, i32 undef, i32 3, i32 14, i32 6, i32 15, i32 7>
  ret <8 x float> %shuffle
}

define <8 x i32> @shuffle_v8i32_00000000(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00000010(<8 x i32> %a, <8 x i32> %b) {












  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00000200(<8 x i32> %a, <8 x i32> %b) {












  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00003000(<8 x i32> %a, <8 x i32> %b) {












  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00040000(<8 x i32> %a, <8 x i32> %b) {













  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00500000(<8 x i32> %a, <8 x i32> %b) {












  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_06000000(<8 x i32> %a, <8 x i32> %b) {












  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_70000000(<8 x i32> %a, <8 x i32> %b) {













  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_01014545(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00112233(<8 x i32> %a, <8 x i32> %b) {












  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00001111(<8 x i32> %a, <8 x i32> %b) {












  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_81a3c5e7(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 8, i32 1, i32 10, i32 3, i32 12, i32 5, i32 14, i32 7>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_08080808(<8 x i32> %a, <8 x i32> %b) {















  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_08084c4c(<8 x i32> %a, <8 x i32> %b) {












  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 8, i32 0, i32 8, i32 4, i32 12, i32 4, i32 12>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_8823cc67(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 8, i32 8, i32 2, i32 3, i32 12, i32 12, i32 6, i32 7>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_9832dc76(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 9, i32 8, i32 3, i32 2, i32 13, i32 12, i32 7, i32 6>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_9810dc54(<8 x i32> %a, <8 x i32> %b) {











  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 9, i32 8, i32 1, i32 0, i32 13, i32 12, i32 5, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_08194c5d(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_2a3b6e7f(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_08192a3b(<8 x i32> %a, <8 x i32> %b) {














  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_08991abb(<8 x i32> %a, <8 x i32> %b) {

















  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 8, i32 9, i32 9, i32 1, i32 10, i32 11, i32 11>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_091b2d3f(<8 x i32> %a, <8 x i32> %b) {













  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 9, i32 1, i32 11, i32 2, i32 13, i32 3, i32 15>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_09ab1def(<8 x i32> %a, <8 x i32> %b) {













  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 1, i32 13, i32 14, i32 15>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00014445(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 4, i32 4, i32 4, i32 5>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00204464(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 0, i32 4, i32 4, i32 6, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_03004744(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 3, i32 0, i32 0, i32 4, i32 7, i32 4, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_10005444(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 5, i32 4, i32 4, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_22006644(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 2, i32 2, i32 0, i32 0, i32 6, i32 6, i32 4, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_33307774(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 3, i32 3, i32 3, i32 0, i32 7, i32 7, i32 7, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_32107654(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00234467(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 3, i32 4, i32 4, i32 6, i32 7>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00224466(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_10325476(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_11335577(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_10235467(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 5, i32 4, i32 6, i32 7>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_10225466(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 0, i32 2, i32 2, i32 5, i32 4, i32 6, i32 6>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00015444(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 5, i32 4, i32 4, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00204644(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 0, i32 4, i32 6, i32 4, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_03004474(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 3, i32 0, i32 0, i32 4, i32 4, i32 7, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_10004444(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_22006446(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 2, i32 2, i32 0, i32 0, i32 6, i32 4, i32 4, i32 6>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_33307474(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 3, i32 3, i32 3, i32 0, i32 7, i32 4, i32 7, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_32104567(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00236744(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 3, i32 6, i32 7, i32 4, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00226644(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 6, i32 6, i32 4, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_10324567(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_11334567(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_01235467(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 6, i32 7>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_01235466(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 6, i32 6>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_002u6u44(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 2, i32 undef, i32 6, i32 undef, i32 4, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_00uu66uu(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 0, i32 undef, i32 undef, i32 6, i32 6, i32 undef, i32 undef>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_103245uu(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 4, i32 5, i32 undef, i32 undef>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_1133uu67(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 undef, i32 undef, i32 6, i32 7>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_0uu354uu(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 0, i32 undef, i32 undef, i32 3, i32 5, i32 4, i32 undef, i32 undef>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_uuu3uu66(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 3, i32 undef, i32 undef, i32 6, i32 6>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_6caa87e5(<8 x i32> %a, <8 x i32> %b) {

















  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 6, i32 12, i32 10, i32 10, i32 8, i32 7, i32 14, i32 5>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_32103210(<8 x i32> %a, <8 x i32> %b) {











  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1, i32 0>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_76547654(<8 x i32> %a, <8 x i32> %b) {












  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 7, i32 6, i32 5, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_76543210(<8 x i32> %a, <8 x i32> %b) {











  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_3210ba98(<8 x i32> %a, <8 x i32> %b) {











  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 11, i32 10, i32 9, i32 8>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_3210fedc(<8 x i32> %a, <8 x i32> %b) {











  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 15, i32 14, i32 13, i32 12>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_7654fedc(<8 x i32> %a, <8 x i32> %b) {











  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 15, i32 14, i32 13, i32 12>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_fedc7654(<8 x i32> %a, <8 x i32> %b) {











  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 15, i32 14, i32 13, i32 12, i32 7, i32 6, i32 5, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_ba987654(<8 x i32> %a, <8 x i32> %b) {











  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_ba983210(<8 x i32> %a, <8 x i32> %b) {











  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_zuu8zuuc(<8 x i32> %a) {










  %shuffle = shufflevector <8 x i32> zeroinitializer, <8 x i32> %a, <8 x i32> <i32 0, i32 undef, i32 undef, i32 8, i32 0, i32 undef, i32 undef, i32 12>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_9ubzdefz(<8 x i32> %a) {











  %shuffle = shufflevector <8 x i32> zeroinitializer, <8 x i32> %a, <8 x i32> <i32 9, i32 undef, i32 11, i32 0, i32 13, i32 14, i32 15, i32 0>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_80u1b4uu(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 8, i32 0, i32 undef, i32 1, i32 12, i32 4, i32 undef, i32 undef>
  ret <8 x i32> %shuffle
}

define <8 x float> @splat_mem_v8f32_2(float* %p) {




  %1 = load float, float* %p
  %2 = insertelement <4 x float> undef, float %1, i32 0
  %3 = shufflevector <4 x float> %2, <4 x float> undef, <8 x i32> zeroinitializer
  ret <8 x float> %3
}

define <8 x float> @splat_v8f32(<4 x float> %r) {










  %1 = shufflevector <4 x float> %r, <4 x float> undef, <8 x i32> zeroinitializer
  ret <8 x float> %1
}





define <8 x i32> @shuffle_v8i32_z0U2zUz6(<8 x i32> %a) {











  %shuffle = shufflevector <8 x i32> %a, <8 x i32> zeroinitializer, <8 x i32> <i32 8, i32 0, i32 undef, i32 2, i32 8, i32 undef, i32 8, i32 6>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_1U3z5zUU(<8 x i32> %a) {











  %shuffle = shufflevector <8 x i32> %a, <8 x i32> zeroinitializer, <8 x i32> <i32 1, i32 undef, i32 3, i32 8, i32 5, i32 8, i32 undef, i32 undef>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_B012F456(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 11, i32 0, i32 1, i32 2, i32 15, i32 4, i32 5, i32 6>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_1238567C(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 2, i32 3, i32 8, i32 5, i32 6, i32 7, i32 12>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_9AB0DEF4(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 9, i32 10, i32 11, i32 0, i32 13, i32 14, i32 15, i32 4>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_389A7CDE(<8 x i32> %a, <8 x i32> %b) {










  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 3, i32 8, i32 9, i32 10, i32 7, i32 12, i32 13, i32 14>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_30127456(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  ret <8 x i32> %shuffle
}

define <8 x i32> @shuffle_v8i32_12305674(<8 x i32> %a, <8 x i32> %b) {









  %shuffle = shufflevector <8 x i32> %a, <8 x i32> %b, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  ret <8 x i32> %shuffle
}

define <8x float> @concat_v2f32_1(<2 x float>* %tmp64, <2 x float>* %tmp65) {





entry:
  %tmp74 = load <2 x float>, <2 x float>* %tmp65, align 8
  %tmp72 = load <2 x float>, <2 x float>* %tmp64, align 8
  %tmp73 = shufflevector <2 x float> %tmp72, <2 x float> undef, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %tmp75 = shufflevector <2 x float> %tmp74, <2 x float> undef, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %tmp76 = shufflevector <8 x float> %tmp73, <8 x float> %tmp75, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x float> %tmp76
}

define <8x float> @concat_v2f32_2(<2 x float>* %tmp64, <2 x float>* %tmp65) {





entry:
  %tmp74 = load <2 x float>, <2 x float>* %tmp65, align 8
  %tmp72 = load <2 x float>, <2 x float>* %tmp64, align 8
  %tmp76 = shufflevector <2 x float> %tmp72, <2 x float> %tmp74, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x float> %tmp76
}

define <8x float> @concat_v2f32_3(<2 x float>* %tmp64, <2 x float>* %tmp65) {





entry:
  %tmp74 = load <2 x float>, <2 x float>* %tmp65, align 8
  %tmp72 = load <2 x float>, <2 x float>* %tmp64, align 8
  %tmp76 = shufflevector <2 x float> %tmp72, <2 x float> %tmp74, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %res = shufflevector <4 x float> %tmp76, <4 x float> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <8 x float> %res
}

define <8 x i32> @insert_mem_and_zero_v8i32(i32* %ptr) {




  %a = load i32, i32* %ptr
  %v = insertelement <8 x i32> undef, i32 %a, i32 0
  %shuffle = shufflevector <8 x i32> %v, <8 x i32> zeroinitializer, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  ret <8 x i32> %shuffle
}

define <8 x i32> @concat_v8i32_0123CDEF(<8 x i32> %a, <8 x i32> %b) {









  %alo = shufflevector <8 x i32> %a, <8 x i32> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %bhi = shufflevector <8 x i32> %b, <8 x i32> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %shuf = shufflevector <4 x i32> %alo, <4 x i32> %bhi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x i32> %shuf
}

define <8 x i32> @concat_v8i32_4567CDEF_bc(<8 x i32> %a0, <8 x i32> %a1) {




  %a0hi = shufflevector <8 x i32> %a0, <8 x i32> %a1, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %a1hi = shufflevector <8 x i32> %a0, <8 x i32> %a1, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %bc0hi = bitcast <4 x i32> %a0hi to <2 x i64>
  %bc1hi = bitcast <4 x i32> %a1hi to <2 x i64>
  %shuffle64 = shufflevector <2 x i64> %bc0hi, <2 x i64> %bc1hi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %shuffle32 = bitcast <4 x i64> %shuffle64 to <8 x i32>
  ret <8 x i32> %shuffle32
}

define <8 x float> @concat_v8f32_4567CDEF_bc(<8 x float> %f0, <8 x float> %f1) {




  %a0 = bitcast <8 x float> %f0 to <4 x i64>
  %a1 = bitcast <8 x float> %f1 to <8 x i32>
  %a0hi = shufflevector <4 x i64> %a0, <4 x i64> undef, <2 x i32> <i32 2, i32 3>
  %a1hi = shufflevector <8 x i32> %a1, <8 x i32> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %bc0hi = bitcast <2 x i64> %a0hi to <2 x i64>
  %bc1hi = bitcast <4 x i32> %a1hi to <2 x i64>
  %shuffle64 = shufflevector <2 x i64> %bc0hi, <2 x i64> %bc1hi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %shuffle32 = bitcast <4 x i64> %shuffle64 to <8 x float>
  ret <8 x float> %shuffle32
}

define <8 x i32> @insert_dup_mem_v8i32(i32* %ptr) {




  %tmp = load i32, i32* %ptr, align 4
  %tmp1 = insertelement <4 x i32> zeroinitializer, i32 %tmp, i32 0
  %tmp2 = shufflevector <4 x i32> %tmp1, <4 x i32> undef, <8 x i32> zeroinitializer
  ret <8 x i32> %tmp2
}
