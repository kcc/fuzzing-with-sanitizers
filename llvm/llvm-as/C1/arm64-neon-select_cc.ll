


define <8x i8> @test_select_cc_v8i8_i8(i8 %a, i8 %b, <8x i8> %c, <8x i8> %d ) {






  %cmp31 = icmp eq i8 %a, %b
  %e = select i1 %cmp31, <8x i8> %c, <8x i8> %d
  ret <8x i8> %e
}

define <8x i8> @test_select_cc_v8i8_f32(float %a, float %b, <8x i8> %c, <8x i8> %d ) {




  %cmp31 = fcmp oeq float %a, %b
  %e = select i1 %cmp31, <8x i8> %c, <8x i8> %d
  ret <8x i8> %e
}

define <8x i8> @test_select_cc_v8i8_f64(double %a, double %b, <8x i8> %c, <8x i8> %d ) {



  %cmp31 = fcmp oeq double %a, %b
  %e = select i1 %cmp31, <8x i8> %c, <8x i8> %d
  ret <8x i8> %e
}

define <16x i8> @test_select_cc_v16i8_i8(i8 %a, i8 %b, <16x i8> %c, <16x i8> %d ) {






  %cmp31 = icmp eq i8 %a, %b
  %e = select i1 %cmp31, <16x i8> %c, <16x i8> %d
  ret <16x i8> %e
}

define <16x i8> @test_select_cc_v16i8_f32(float %a, float %b, <16x i8> %c, <16x i8> %d ) {




  %cmp31 = fcmp oeq float %a, %b
  %e = select i1 %cmp31, <16x i8> %c, <16x i8> %d
  ret <16x i8> %e
}

define <16x i8> @test_select_cc_v16i8_f64(double %a, double %b, <16x i8> %c, <16x i8> %d ) {




  %cmp31 = fcmp oeq double %a, %b
  %e = select i1 %cmp31, <16x i8> %c, <16x i8> %d
  ret <16x i8> %e
}

define <4x i16> @test_select_cc_v4i16(i16 %a, i16 %b, <4x i16> %c, <4x i16> %d ) {






  %cmp31 = icmp eq i16 %a, %b
  %e = select i1 %cmp31, <4x i16> %c, <4x i16> %d
  ret <4x i16> %e
}

define <8x i16> @test_select_cc_v8i16(i16 %a, i16 %b, <8x i16> %c, <8x i16> %d ) {






  %cmp31 = icmp eq i16 %a, %b
  %e = select i1 %cmp31, <8x i16> %c, <8x i16> %d
  ret <8x i16> %e
}

define <2x i32> @test_select_cc_v2i32(i32 %a, i32 %b, <2x i32> %c, <2x i32> %d ) {






  %cmp31 = icmp eq i32 %a, %b
  %e = select i1 %cmp31, <2x i32> %c, <2x i32> %d
  ret <2x i32> %e
}

define <4x i32> @test_select_cc_v4i32(i32 %a, i32 %b, <4x i32> %c, <4x i32> %d ) {






  %cmp31 = icmp eq i32 %a, %b
  %e = select i1 %cmp31, <4x i32> %c, <4x i32> %d
  ret <4x i32> %e
}

define <1x i64> @test_select_cc_v1i64(i64 %a, i64 %b, <1x i64> %c, <1x i64> %d ) {





  %cmp31 = icmp eq i64 %a, %b
  %e = select i1 %cmp31, <1x i64> %c, <1x i64> %d
  ret <1x i64> %e
}

define <2x i64> @test_select_cc_v2i64(i64 %a, i64 %b, <2x i64> %c, <2x i64> %d ) {






  %cmp31 = icmp eq i64 %a, %b
  %e = select i1 %cmp31, <2x i64> %c, <2x i64> %d
  ret <2x i64> %e
}

define <1 x float> @test_select_cc_v1f32(float %a, float %b, <1 x float> %c, <1 x float> %d ) {



  %cmp31 = fcmp oeq float %a, %b
  %e = select i1 %cmp31, <1 x float> %c, <1 x float> %d
  ret <1 x float> %e
}

define <2 x float> @test_select_cc_v2f32(float %a, float %b, <2 x float> %c, <2 x float> %d ) {




  %cmp31 = fcmp oeq float %a, %b
  %e = select i1 %cmp31, <2 x float> %c, <2 x float> %d
  ret <2 x float> %e
}

define <4x float> @test_select_cc_v4f32(float %a, float %b, <4x float> %c, <4x float> %d ) {




  %cmp31 = fcmp oeq float %a, %b
  %e = select i1 %cmp31, <4x float> %c, <4x float> %d
  ret <4x float> %e
}

define <4x float> @test_select_cc_v4f32_icmp(i32 %a, i32 %b, <4x float> %c, <4x float> %d ) {






  %cmp31 = icmp eq i32 %a, %b
  %e = select i1 %cmp31, <4x float> %c, <4x float> %d
  ret <4x float> %e
}

define <1 x double> @test_select_cc_v1f64(double %a, double %b, <1 x double> %c, <1 x double> %d ) {



  %cmp31 = fcmp oeq double %a, %b
  %e = select i1 %cmp31, <1 x double> %c, <1 x double> %d
  ret <1 x double> %e
}

define <1 x double> @test_select_cc_v1f64_icmp(i64 %a, i64 %b, <1 x double> %c, <1 x double> %d ) {





  %cmp31 = icmp eq i64 %a, %b
  %e = select i1 %cmp31, <1 x double> %c, <1 x double> %d
  ret <1 x double> %e
}

define <2 x double> @test_select_cc_v2f64(double %a, double %b, <2 x double> %c, <2 x double> %d ) {




  %cmp31 = fcmp oeq double %a, %b
  %e = select i1 %cmp31, <2 x double> %c, <2 x double> %d
  ret <2 x double> %e
}




define <2 x i32> @test_select_cc_v2i32_icmpi1(i1 %cc, <2 x i32> %a, <2 x i32> %b) {






  %cmp = icmp ne i1 %cc, 0
  %e = select i1 %cmp, <2 x i32> %a, <2 x i32> %b
  ret <2 x i32> %e
}


define <3 x float> @test_select_cc_v3f32_fcmp_f32(<3 x float> %a, <3 x float> %b, float %c1, float %c2) #0 {






  %cc = fcmp oeq float %c1, %c2
  %r = select i1 %cc, <3 x float> %a, <3 x float> %b
  ret <3 x float> %r
}

define <3 x float> @test_select_cc_v3f32_fcmp_f64(<3 x float> %a, <3 x float> %b, double %c1, double %c2) #0 {






  %cc = fcmp oeq double %c1, %c2
  %r = select i1 %cc, <3 x float> %a, <3 x float> %b
  ret <3 x float> %r
}

attributes #0 = { nounwind}
