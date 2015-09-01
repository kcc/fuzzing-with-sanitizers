

@var = global i32 0, align 4


define i128 @test_i128_align(i32, i128 %arg, i32 %after) {
  store i32 %after, i32* @var, align 4


  ret i128 %arg


}


define [2 x i64] @test_i64x2_align(i32, [2 x i64] %arg, i32 %after) {
  store i32 %after, i32* @var, align 4


  ret [2 x i64] %arg


}

@var64 = global i64 0, align 8

  
define void @test_stack_slots([8 x i32], i1 %bool, i8 %char, i16 %short,
                                i32 %int, i64 %long) {
  %ext_bool = zext i1 %bool to i64
  store volatile i64 %ext_bool, i64* @var64, align 8


  





  %ext_char = zext i8 %char to i64
  store volatile i64 %ext_char, i64* @var64, align 8



  %ext_short = zext i16 %short to i64
  store volatile i64 %ext_short, i64* @var64, align 8



  %ext_int = zext i32 %int to i64
  store volatile i64 %ext_int, i64* @var64, align 8



  store volatile i64 %long, i64* @var64, align 8


  ret void
}




define void @test_extension(i1 %bool, i8 %char, i16 %short, i32 %int) {
  %ext_bool = zext i1 %bool to i64
  store volatile i64 %ext_bool, i64* @var64



  %ext_char = sext i8 %char to i64
  store volatile i64 %ext_char, i64* @var64



  %ext_short = zext i16 %short to i64
  store volatile i64 %ext_short, i64* @var64



  %ext_int = zext i32 %int to i64
  store volatile i64 %ext_int, i64* @var64



  ret void
}

declare void @variadic(i32 %a, ...)

  
  
define void @test_variadic() {
  call void(i32, ...) @variadic(i32 0, i64 1, double 2.0)



  ret void
}




define i128 @test_i128_shadow([7 x i64] %x0_x6, i128 %sp) {



  ret i128 %sp
}


define fp128 @test_fp128([8 x float] %arg0, fp128 %arg1) {


  ret fp128 %arg1
}


define <2 x double> @test_vreg_stack([8 x <2 x double>], <2 x double> %varg_stack) {
entry:


  ret <2 x double> %varg_stack
}


define half @test_half(float, half %arg) {


  ret half %arg
}


define half @test_half_const() {


  ret half 0xH4248
}


define <4 x half> @test_v4_half_register(float, <4 x half> %arg) {


  ret <4 x half> %arg
}


define <8 x half> @test_v8_half_register(float, <8 x half> %arg) {


  ret <8 x half> %arg
}


define <4 x half> @test_v4_half_stack([8 x <2 x double>], <4 x half> %arg) {


  ret <4 x half> %arg
}


define <8 x half> @test_v8_half_stack([8 x <2 x double>], <8 x half> %arg) {


  ret <8 x half> %arg
}
