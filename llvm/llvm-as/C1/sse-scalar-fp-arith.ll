



target triple = "x86_64-unknown-unknown"





define <4 x float> @test_add_ss(<4 x float> %a, <4 x float> %b) {









  %1 = extractelement <4 x float> %b, i32 0
  %2 = extractelement <4 x float> %a, i32 0
  %add = fadd float %2, %1
  %3 = insertelement <4 x float> %a, float %add, i32 0
  ret <4 x float> %3
}

define <4 x float> @test_sub_ss(<4 x float> %a, <4 x float> %b) {









  %1 = extractelement <4 x float> %b, i32 0
  %2 = extractelement <4 x float> %a, i32 0
  %sub = fsub float %2, %1
  %3 = insertelement <4 x float> %a, float %sub, i32 0
  ret <4 x float> %3
}

define <4 x float> @test_mul_ss(<4 x float> %a, <4 x float> %b) {









  %1 = extractelement <4 x float> %b, i32 0
  %2 = extractelement <4 x float> %a, i32 0
  %mul = fmul float %2, %1
  %3 = insertelement <4 x float> %a, float %mul, i32 0
  ret <4 x float> %3
}

define <4 x float> @test_div_ss(<4 x float> %a, <4 x float> %b) {









  %1 = extractelement <4 x float> %b, i32 0
  %2 = extractelement <4 x float> %a, i32 0
  %div = fdiv float %2, %1
  %3 = insertelement <4 x float> %a, float %div, i32 0
  ret <4 x float> %3
}

define <4 x float> @test_sqrt_ss(<4 x float> %a) {

















  %1 = extractelement <4 x float> %a, i32 0
  %2 = call float @llvm.sqrt.f32(float %1)
  %3 = insertelement <4 x float> %a, float %2, i32 0
  ret <4 x float> %3
}
declare float @llvm.sqrt.f32(float)

define <2 x double> @test_add_sd(<2 x double> %a, <2 x double> %b) {









  %1 = extractelement <2 x double> %b, i32 0
  %2 = extractelement <2 x double> %a, i32 0
  %add = fadd double %2, %1
  %3 = insertelement <2 x double> %a, double %add, i32 0
  ret <2 x double> %3
}

define <2 x double> @test_sub_sd(<2 x double> %a, <2 x double> %b) {









  %1 = extractelement <2 x double> %b, i32 0
  %2 = extractelement <2 x double> %a, i32 0
  %sub = fsub double %2, %1
  %3 = insertelement <2 x double> %a, double %sub, i32 0
  ret <2 x double> %3
}

define <2 x double> @test_mul_sd(<2 x double> %a, <2 x double> %b) {









  %1 = extractelement <2 x double> %b, i32 0
  %2 = extractelement <2 x double> %a, i32 0
  %mul = fmul double %2, %1
  %3 = insertelement <2 x double> %a, double %mul, i32 0
  ret <2 x double> %3
}

define <2 x double> @test_div_sd(<2 x double> %a, <2 x double> %b) {









  %1 = extractelement <2 x double> %b, i32 0
  %2 = extractelement <2 x double> %a, i32 0
  %div = fdiv double %2, %1
  %3 = insertelement <2 x double> %a, double %div, i32 0
  ret <2 x double> %3
}

define <2 x double> @test_sqrt_sd(<2 x double> %a) {











  %1 = extractelement <2 x double> %a, i32 0
  %2 = call double @llvm.sqrt.f64(double %1)
  %3 = insertelement <2 x double> %a, double %2, i32 0
  ret <2 x double> %3
}
declare double @llvm.sqrt.f64(double)

define <4 x float> @test2_add_ss(<4 x float> %a, <4 x float> %b) {










  %1 = extractelement <4 x float> %a, i32 0
  %2 = extractelement <4 x float> %b, i32 0
  %add = fadd float %1, %2
  %3 = insertelement <4 x float> %b, float %add, i32 0
  ret <4 x float> %3
}

define <4 x float> @test2_sub_ss(<4 x float> %a, <4 x float> %b) {










  %1 = extractelement <4 x float> %a, i32 0
  %2 = extractelement <4 x float> %b, i32 0
  %sub = fsub float %2, %1
  %3 = insertelement <4 x float> %b, float %sub, i32 0
  ret <4 x float> %3
}

define <4 x float> @test2_mul_ss(<4 x float> %a, <4 x float> %b) {










  %1 = extractelement <4 x float> %a, i32 0
  %2 = extractelement <4 x float> %b, i32 0
  %mul = fmul float %1, %2
  %3 = insertelement <4 x float> %b, float %mul, i32 0
  ret <4 x float> %3
}

define <4 x float> @test2_div_ss(<4 x float> %a, <4 x float> %b) {










  %1 = extractelement <4 x float> %a, i32 0
  %2 = extractelement <4 x float> %b, i32 0
  %div = fdiv float %2, %1
  %3 = insertelement <4 x float> %b, float %div, i32 0
  ret <4 x float> %3
}

define <2 x double> @test2_add_sd(<2 x double> %a, <2 x double> %b) {










  %1 = extractelement <2 x double> %a, i32 0
  %2 = extractelement <2 x double> %b, i32 0
  %add = fadd double %1, %2
  %3 = insertelement <2 x double> %b, double %add, i32 0
  ret <2 x double> %3
}

define <2 x double> @test2_sub_sd(<2 x double> %a, <2 x double> %b) {










  %1 = extractelement <2 x double> %a, i32 0
  %2 = extractelement <2 x double> %b, i32 0
  %sub = fsub double %2, %1
  %3 = insertelement <2 x double> %b, double %sub, i32 0
  ret <2 x double> %3
}

define <2 x double> @test2_mul_sd(<2 x double> %a, <2 x double> %b) {










  %1 = extractelement <2 x double> %a, i32 0
  %2 = extractelement <2 x double> %b, i32 0
  %mul = fmul double %1, %2
  %3 = insertelement <2 x double> %b, double %mul, i32 0
  ret <2 x double> %3
}

define <2 x double> @test2_div_sd(<2 x double> %a, <2 x double> %b) {










  %1 = extractelement <2 x double> %a, i32 0
  %2 = extractelement <2 x double> %b, i32 0
  %div = fdiv double %2, %1
  %3 = insertelement <2 x double> %b, double %div, i32 0
  ret <2 x double> %3
}

define <4 x float> @test_multiple_add_ss(<4 x float> %a, <4 x float> %b) {











  %1 = extractelement <4 x float> %b, i32 0
  %2 = extractelement <4 x float> %a, i32 0
  %add = fadd float %2, %1
  %add2 = fadd float %2, %add
  %3 = insertelement <4 x float> %a, float %add2, i32 0
  ret <4 x float> %3
}

define <4 x float> @test_multiple_sub_ss(<4 x float> %a, <4 x float> %b) {












  %1 = extractelement <4 x float> %b, i32 0
  %2 = extractelement <4 x float> %a, i32 0
  %sub = fsub float %2, %1
  %sub2 = fsub float %2, %sub
  %3 = insertelement <4 x float> %a, float %sub2, i32 0
  ret <4 x float> %3
}

define <4 x float> @test_multiple_mul_ss(<4 x float> %a, <4 x float> %b) {











  %1 = extractelement <4 x float> %b, i32 0
  %2 = extractelement <4 x float> %a, i32 0
  %mul = fmul float %2, %1
  %mul2 = fmul float %2, %mul
  %3 = insertelement <4 x float> %a, float %mul2, i32 0
  ret <4 x float> %3
}

define <4 x float> @test_multiple_div_ss(<4 x float> %a, <4 x float> %b) {












  %1 = extractelement <4 x float> %b, i32 0
  %2 = extractelement <4 x float> %a, i32 0
  %div = fdiv float %2, %1
  %div2 = fdiv float %2, %div
  %3 = insertelement <4 x float> %a, float %div2, i32 0
  ret <4 x float> %3
}




define <4 x float> @blend_add_ss(<4 x float> %a, float %b) {










  %ext = extractelement <4 x float> %a, i32 0
  %op = fadd float %b, %ext
  %ins = insertelement <4 x float> undef, float %op, i32 0
  %shuf = shufflevector <4 x float> %ins, <4 x float> %a, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %shuf
}

define <4 x float> @blend_sub_ss(<4 x float> %a, float %b) {










  %ext = extractelement <4 x float> %a, i32 0
  %op = fsub float %ext, %b
  %ins = insertelement <4 x float> undef, float %op, i32 0
  %shuf = shufflevector <4 x float> %ins, <4 x float> %a, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %shuf
}

define <4 x float> @blend_mul_ss(<4 x float> %a, float %b) {










  %ext = extractelement <4 x float> %a, i32 0
  %op = fmul float %b, %ext
  %ins = insertelement <4 x float> undef, float %op, i32 0
  %shuf = shufflevector <4 x float> %ins, <4 x float> %a, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %shuf
}

define <4 x float> @blend_div_ss(<4 x float> %a, float %b) {










  %ext = extractelement <4 x float> %a, i32 0
  %op = fdiv float %ext, %b
  %ins = insertelement <4 x float> undef, float %op, i32 0
  %shuf = shufflevector <4 x float> %ins, <4 x float> %a, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %shuf
}

define <2 x double> @blend_add_sd(<2 x double> %a, double %b) {










  %ext = extractelement <2 x double> %a, i32 0
  %op = fadd double %b, %ext
  %ins = insertelement <2 x double> undef, double %op, i32 0
  %shuf = shufflevector <2 x double> %ins, <2 x double> %a, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %shuf
}

define <2 x double> @blend_sub_sd(<2 x double> %a, double %b) {










  %ext = extractelement <2 x double> %a, i32 0
  %op = fsub double %ext, %b
  %ins = insertelement <2 x double> undef, double %op, i32 0
  %shuf = shufflevector <2 x double> %ins, <2 x double> %a, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %shuf
}

define <2 x double> @blend_mul_sd(<2 x double> %a, double %b) {










  %ext = extractelement <2 x double> %a, i32 0
  %op = fmul double %b, %ext
  %ins = insertelement <2 x double> undef, double %op, i32 0
  %shuf = shufflevector <2 x double> %ins, <2 x double> %a, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %shuf
}

define <2 x double> @blend_div_sd(<2 x double> %a, double %b) {










  %ext = extractelement <2 x double> %a, i32 0
  %op = fdiv double %ext, %b
  %ins = insertelement <2 x double> undef, double %op, i32 0
  %shuf = shufflevector <2 x double> %ins, <2 x double> %a, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %shuf
}




define <4 x float> @insert_test_add_ss(<4 x float> %a, <4 x float> %b) {









  %1 = fadd <4 x float> %a, %b
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %2
}

define <4 x float> @insert_test_sub_ss(<4 x float> %a, <4 x float> %b) {









  %1 = fsub <4 x float> %a, %b
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %2
}

define <4 x float> @insert_test_mul_ss(<4 x float> %a, <4 x float> %b) {









  %1 = fmul <4 x float> %a, %b
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %2
}

define <4 x float> @insert_test_div_ss(<4 x float> %a, <4 x float> %b) {









  %1 = fdiv <4 x float> %a, %b
  %2 = shufflevector <4 x float> %1, <4 x float> %a, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %2
}

define <2 x double> @insert_test_add_sd(<2 x double> %a, <2 x double> %b) {









  %1 = fadd <2 x double> %a, %b
  %2 = shufflevector <2 x double> %1, <2 x double> %a, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %2
}

define <2 x double> @insert_test_sub_sd(<2 x double> %a, <2 x double> %b) {









  %1 = fsub <2 x double> %a, %b
  %2 = shufflevector <2 x double> %1, <2 x double> %a, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %2
}

define <2 x double> @insert_test_mul_sd(<2 x double> %a, <2 x double> %b) {









  %1 = fmul <2 x double> %a, %b
  %2 = shufflevector <2 x double> %1, <2 x double> %a, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %2
}

define <2 x double> @insert_test_div_sd(<2 x double> %a, <2 x double> %b) {









  %1 = fdiv <2 x double> %a, %b
  %2 = shufflevector <2 x double> %1, <2 x double> %a, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %2
}

define <4 x float> @insert_test2_add_ss(<4 x float> %a, <4 x float> %b) {










  %1 = fadd <4 x float> %b, %a
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %2
}

define <4 x float> @insert_test2_sub_ss(<4 x float> %a, <4 x float> %b) {










  %1 = fsub <4 x float> %b, %a
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %2
}

define <4 x float> @insert_test2_mul_ss(<4 x float> %a, <4 x float> %b) {










  %1 = fmul <4 x float> %b, %a
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %2
}

define <4 x float> @insert_test2_div_ss(<4 x float> %a, <4 x float> %b) {










  %1 = fdiv <4 x float> %b, %a
  %2 = shufflevector <4 x float> %1, <4 x float> %b, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  ret <4 x float> %2
}

define <2 x double> @insert_test2_add_sd(<2 x double> %a, <2 x double> %b) {










  %1 = fadd <2 x double> %b, %a
  %2 = shufflevector <2 x double> %1, <2 x double> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %2
}

define <2 x double> @insert_test2_sub_sd(<2 x double> %a, <2 x double> %b) {










  %1 = fsub <2 x double> %b, %a
  %2 = shufflevector <2 x double> %1, <2 x double> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %2
}

define <2 x double> @insert_test2_mul_sd(<2 x double> %a, <2 x double> %b) {










  %1 = fmul <2 x double> %b, %a
  %2 = shufflevector <2 x double> %1, <2 x double> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %2
}

define <2 x double> @insert_test2_div_sd(<2 x double> %a, <2 x double> %b) {










  %1 = fdiv <2 x double> %b, %a
  %2 = shufflevector <2 x double> %1, <2 x double> %b, <2 x i32> <i32 0, i32 3>
  ret <2 x double> %2
}

define <4 x float> @insert_test3_add_ss(<4 x float> %a, <4 x float> %b) {









  %1 = fadd <4 x float> %a, %b
  %2 = select <4 x i1> <i1 false, i1 true, i1 true, i1 true>, <4 x float> %a, <4 x float> %1
  ret <4 x float> %2
}

define <4 x float> @insert_test3_sub_ss(<4 x float> %a, <4 x float> %b) {









  %1 = fsub <4 x float> %a, %b
  %2 = select <4 x i1> <i1 false, i1 true, i1 true, i1 true>, <4 x float> %a, <4 x float> %1
  ret <4 x float> %2
}

define <4 x float> @insert_test3_mul_ss(<4 x float> %a, <4 x float> %b) {









  %1 = fmul <4 x float> %a, %b
  %2 = select <4 x i1> <i1 false, i1 true, i1 true, i1 true>, <4 x float> %a, <4 x float> %1
  ret <4 x float> %2
}

define <4 x float> @insert_test3_div_ss(<4 x float> %a, <4 x float> %b) {









  %1 = fdiv <4 x float> %a, %b
  %2 = select <4 x i1> <i1 false, i1 true, i1 true, i1 true>, <4 x float> %a, <4 x float> %1
  ret <4 x float> %2
}

define <2 x double> @insert_test3_add_sd(<2 x double> %a, <2 x double> %b) {









  %1 = fadd <2 x double> %a, %b
  %2 = select <2 x i1> <i1 false, i1 true>, <2 x double> %a, <2 x double> %1
  ret <2 x double> %2
}

define <2 x double> @insert_test3_sub_sd(<2 x double> %a, <2 x double> %b) {









  %1 = fsub <2 x double> %a, %b
  %2 = select <2 x i1> <i1 false, i1 true>, <2 x double> %a, <2 x double> %1
  ret <2 x double> %2
}

define <2 x double> @insert_test3_mul_sd(<2 x double> %a, <2 x double> %b) {









  %1 = fmul <2 x double> %a, %b
  %2 = select <2 x i1> <i1 false, i1 true>, <2 x double> %a, <2 x double> %1
  ret <2 x double> %2
}

define <2 x double> @insert_test3_div_sd(<2 x double> %a, <2 x double> %b) {









  %1 = fdiv <2 x double> %a, %b
  %2 = select <2 x i1> <i1 false, i1 true>, <2 x double> %a, <2 x double> %1
  ret <2 x double> %2
}

define <4 x float> @insert_test4_add_ss(<4 x float> %a, <4 x float> %b) {










  %1 = fadd <4 x float> %b, %a
  %2 = select <4 x i1> <i1 false, i1 true, i1 true, i1 true>, <4 x float> %b, <4 x float> %1
  ret <4 x float> %2
}

define <4 x float> @insert_test4_sub_ss(<4 x float> %a, <4 x float> %b) {










  %1 = fsub <4 x float> %b, %a
  %2 = select <4 x i1> <i1 false, i1 true, i1 true, i1 true>, <4 x float> %b, <4 x float> %1
  ret <4 x float> %2
}

define <4 x float> @insert_test4_mul_ss(<4 x float> %a, <4 x float> %b) {










  %1 = fmul <4 x float> %b, %a
  %2 = select <4 x i1> <i1 false, i1 true, i1 true, i1 true>, <4 x float> %b, <4 x float> %1
  ret <4 x float> %2
}

define <4 x float> @insert_test4_div_ss(<4 x float> %a, <4 x float> %b) {










  %1 = fdiv <4 x float> %b, %a
  %2 = select <4 x i1> <i1 false, i1 true, i1 true, i1 true>, <4 x float> %b, <4 x float> %1
  ret <4 x float> %2
}

define <2 x double> @insert_test4_add_sd(<2 x double> %a, <2 x double> %b) {










  %1 = fadd <2 x double> %b, %a
  %2 = select <2 x i1> <i1 false, i1 true>, <2 x double> %b, <2 x double> %1
  ret <2 x double> %2
}

define <2 x double> @insert_test4_sub_sd(<2 x double> %a, <2 x double> %b) {










  %1 = fsub <2 x double> %b, %a
  %2 = select <2 x i1> <i1 false, i1 true>, <2 x double> %b, <2 x double> %1
  ret <2 x double> %2
}

define <2 x double> @insert_test4_mul_sd(<2 x double> %a, <2 x double> %b) {










  %1 = fmul <2 x double> %b, %a
  %2 = select <2 x i1> <i1 false, i1 true>, <2 x double> %b, <2 x double> %1
  ret <2 x double> %2
}

define <2 x double> @insert_test4_div_sd(<2 x double> %a, <2 x double> %b) {










  %1 = fdiv <2 x double> %b, %a
  %2 = select <2 x i1> <i1 false, i1 true>, <2 x double> %b, <2 x double> %1
  ret <2 x double> %2
}
