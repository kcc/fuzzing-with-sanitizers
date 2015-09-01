


declare void @callee(...)

define float @test_hfa_regs(float, [2 x float] %in) {



  %lhs = extractvalue [2 x float] %in, 0
  %rhs = extractvalue [2 x float] %in, 1
  %sum = fadd float %lhs, %rhs
  ret float %sum
}



define float @test_hfa_block([7 x float], [2 x float] %in) {




  %lhs = extractvalue [2 x float] %in, 0
  %rhs = extractvalue [2 x float] %in, 1
  %sum = fadd float %lhs, %rhs
  ret float %sum
}



define float @test_hfa_block_consume([7 x float], [2 x float] %in, float %rhs) {





  %lhs = extractvalue [2 x float] %in, 0
  %sum = fadd float %lhs, %rhs
  ret float %sum
}

define float @test_hfa_stackalign([8 x float], [1 x float], [2 x float] %in) {




  %lhs = extractvalue [2 x float] %in, 0
  %rhs = extractvalue [2 x float] %in, 1
  %sum = fadd float %lhs, %rhs
  ret float %sum
}



define i64 @test_hfa_ignores_gprs([7 x float], [2 x float] %in, i64, i64 %res) {


  ret i64 %res
}



define void @test_varargs_stackalign() {



  call void(...) @callee([3 x float] undef, [2 x float] [float 1.0, float 2.0])
  ret void
}

define i64 @test_smallstruct_block([7 x i64], [2 x i64] %in) {



  %lhs = extractvalue [2 x i64] %in, 0
  %rhs = extractvalue [2 x i64] %in, 1
  %sum = add i64 %lhs, %rhs
  ret i64 %sum
}



define i64 @test_smallstruct_block_consume([7 x i64], [2 x i64] %in, i64 %rhs) {





  %lhs = extractvalue [2 x i64] %in, 0
  %sum = add i64 %lhs, %rhs
  ret i64 %sum
}

define <1 x i64> @test_v1i64_blocked([7 x double], [2 x <1 x i64>] %in) {


  %val = extractvalue [2 x <1 x i64>] %in, 0
  ret <1 x i64> %val
}

define <1 x double> @test_v1f64_blocked([7 x double], [2 x <1 x double>] %in) {


  %val = extractvalue [2 x <1 x double>] %in, 0
  ret <1 x double> %val
}

define <2 x i32> @test_v2i32_blocked([7 x double], [2 x <2 x i32>] %in) {


  %val = extractvalue [2 x <2 x i32>] %in, 0
  ret <2 x i32> %val
}

define <2 x float> @test_v2f32_blocked([7 x double], [2 x <2 x float>] %in) {


  %val = extractvalue [2 x <2 x float>] %in, 0
  ret <2 x float> %val
}

define <4 x i16> @test_v4i16_blocked([7 x double], [2 x <4 x i16>] %in) {


  %val = extractvalue [2 x <4 x i16>] %in, 0
  ret <4 x i16> %val
}

define <4 x half> @test_v4f16_blocked([7 x double], [2 x <4 x half>] %in) {


  %val = extractvalue [2 x <4 x half>] %in, 0
  ret <4 x half> %val
}

define <8 x i8> @test_v8i8_blocked([7 x double], [2 x <8 x i8>] %in) {


  %val = extractvalue [2 x <8 x i8>] %in, 0
  ret <8 x i8> %val
}

define <2 x i64> @test_v2i64_blocked([7 x double], [2 x <2 x i64>] %in) {


  %val = extractvalue [2 x <2 x i64>] %in, 0
  ret <2 x i64> %val
}

define <2 x double> @test_v2f64_blocked([7 x double], [2 x <2 x double>] %in) {


  %val = extractvalue [2 x <2 x double>] %in, 0
  ret <2 x double> %val
}

define <4 x i32> @test_v4i32_blocked([7 x double], [2 x <4 x i32>] %in) {


  %val = extractvalue [2 x <4 x i32>] %in, 0
  ret <4 x i32> %val
}

define <4 x float> @test_v4f32_blocked([7 x double], [2 x <4 x float>] %in) {


  %val = extractvalue [2 x <4 x float>] %in, 0
  ret <4 x float> %val
}

define <8 x i16> @test_v8i16_blocked([7 x double], [2 x <8 x i16>] %in) {


  %val = extractvalue [2 x <8 x i16>] %in, 0
  ret <8 x i16> %val
}

define <8 x half> @test_v8f16_blocked([7 x double], [2 x <8 x half>] %in) {


  %val = extractvalue [2 x <8 x half>] %in, 0
  ret <8 x half> %val
}

define <16 x i8> @test_v16i8_blocked([7 x double], [2 x <16 x i8>] %in) {


  %val = extractvalue [2 x <16 x i8>] %in, 0
  ret <16 x i8> %val
}

define half @test_f16_blocked([7 x double], [2 x half] %in) {


  %val = extractvalue [2 x half] %in, 0
  ret half %val
}
