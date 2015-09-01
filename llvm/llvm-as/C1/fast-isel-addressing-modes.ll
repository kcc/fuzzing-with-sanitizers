



define zeroext i1 @load_breg_i1(i1* %a) {


  %1 = load i1, i1* %a
  ret i1 %1
}

define zeroext i8 @load_breg_i8(i8* %a) {


  %1 = load i8, i8* %a
  ret i8 %1
}

define zeroext i16 @load_breg_i16(i16* %a) {


  %1 = load i16, i16* %a
  ret i16 %1
}

define i32 @load_breg_i32(i32* %a) {


  %1 = load i32, i32* %a
  ret i32 %1
}

define i64 @load_breg_i64(i64* %a) {


  %1 = load i64, i64* %a
  ret i64 %1
}

define float @load_breg_f32(float* %a) {


  %1 = load float, float* %a
  ret float %1
}

define double @load_breg_f64(double* %a) {


  %1 = load double, double* %a
  ret double %1
}

define void @store_breg_i1(i1* %a) {


  store i1 0, i1* %a
  ret void
}

define void @store_breg_i1_2(i1* %a) {


  store i1 true, i1* %a
  ret void
}

define void @store_breg_i8(i8* %a) {


  store i8 0, i8* %a
  ret void
}

define void @store_breg_i16(i16* %a) {


  store i16 0, i16* %a
  ret void
}

define void @store_breg_i32(i32* %a) {


  store i32 0, i32* %a
  ret void
}

define void @store_breg_i64(i64* %a) {


  store i64 0, i64* %a
  ret void
}

define void @store_breg_f32(float* %a) {


  store float 0.0, float* %a
  ret void
}

define void @store_breg_f64(double* %a) {


  store double 0.0, double* %a
  ret void
}


define i32 @load_immoff_1() {



  %1 = inttoptr i64 128 to i32*
  %2 = load i32, i32* %1
  ret i32 %2
}



define i32 @load_breg_immoff_1(i64 %a) {


  %1 = add i64 %a, -256
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  ret i32 %3
}


define i32 @load_breg_immoff_2(i64 %a) {



  %1 = add i64 %a, -257
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  ret i32 %3
}


define i32 @load_breg_immoff_3(i64 %a) {


  %1 = add i64 %a, 255
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  ret i32 %3
}


define i32 @load_breg_immoff_4(i64 %a) {



  %1 = add i64 %a, 257
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  ret i32 %3
}


define i32 @load_breg_immoff_5(i64 %a) {


  %1 = add i64 %a, 16380
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  ret i32 %3
}


define i32 @load_breg_immoff_6(i64 %a) {






  %1 = add i64 %a, 16384
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  ret i32 %3
}


define void @store_breg_immoff_1(i64 %a) {


  %1 = add i64 %a, -256
  %2 = inttoptr i64 %1 to i32*
  store i32 0, i32* %2
  ret void
}


define void @store_breg_immoff_2(i64 %a) {



  %1 = add i64 %a, -257
  %2 = inttoptr i64 %1 to i32*
  store i32 0, i32* %2
  ret void
}


define void @store_breg_immoff_3(i64 %a) {


  %1 = add i64 %a, 255
  %2 = inttoptr i64 %1 to i32*
  store i32 0, i32* %2
  ret void
}


define void @store_breg_immoff_4(i64 %a) {



  %1 = add i64 %a, 257
  %2 = inttoptr i64 %1 to i32*
  store i32 0, i32* %2
  ret void
}


define void @store_breg_immoff_5(i64 %a) {


  %1 = add i64 %a, 16380
  %2 = inttoptr i64 %1 to i32*
  store i32 0, i32* %2
  ret void
}


define void @store_breg_immoff_6(i64 %a) {






  %1 = add i64 %a, 16384
  %2 = inttoptr i64 %1 to i32*
  store i32 0, i32* %2
  ret void
}

define i64 @load_breg_immoff_7(i64 %a) {


  %1 = add i64 %a, 48
  %2 = inttoptr i64 %1 to i64*
  %3 = load i64, i64* %2
  ret i64 %3
}


define i64 @load_breg_immoff_8(i64 %a) {


  %1 = add i64 48, %a
  %2 = inttoptr i64 %1 to i64*
  %3 = load i64, i64* %2
  ret i64 %3
}


define i64 @load_breg_offreg_1(i64 %a, i64 %b) {


  %1 = add i64 %a, %b
  %2 = inttoptr i64 %1 to i64*
  %3 = load i64, i64* %2
  ret i64 %3
}


define i64 @load_breg_offreg_2(i64 %a, i64 %b) {


  %1 = add i64 %b, %a
  %2 = inttoptr i64 %1 to i64*
  %3 = load i64, i64* %2
  ret i64 %3
}


define i64 @load_breg_offreg_immoff_1(i64 %a, i64 %b) {



  %1 = add i64 %a, %b
  %2 = add i64 %1, 48
  %3 = inttoptr i64 %2 to i64*
  %4 = load i64, i64* %3
  ret i64 %4
}

define i64 @load_breg_offreg_immoff_2(i64 %a, i64 %b) {







  %1 = add i64 %a, %b
  %2 = add i64 %1, 61440
  %3 = inttoptr i64 %2 to i64*
  %4 = load i64, i64* %3
  ret i64 %4
}


define i32 @load_shift_offreg_1(i64 %a) {



  %1 = shl i64 %a, 2
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  ret i32 %3
}

define i32 @load_mul_offreg_1(i64 %a) {



  %1 = mul i64 %a, 4
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* %2
  ret i32 %3
}


define i32 @load_breg_shift_offreg_1(i64 %a, i64 %b) {


  %1 = shl i64 %a, 2
  %2 = add i64 %1, %b
  %3 = inttoptr i64 %2 to i32*
  %4 = load i32, i32* %3
  ret i32 %4
}

define i32 @load_breg_shift_offreg_2(i64 %a, i64 %b) {


  %1 = shl i64 %a, 2
  %2 = add i64 %b, %1
  %3 = inttoptr i64 %2 to i32*
  %4 = load i32, i32* %3
  ret i32 %4
}

define i32 @load_breg_shift_offreg_3(i64 %a, i64 %b) {






  %1 = shl i64 %a, 2
  %2 = shl i64 %b, 2
  %3 = add i64 %1, %2
  %4 = inttoptr i64 %3 to i32*
  %5 = load i32, i32* %4
  ret i32 %5
}

define i32 @load_breg_shift_offreg_4(i64 %a, i64 %b) {






  %1 = shl i64 %a, 2
  %2 = shl i64 %b, 2
  %3 = add i64 %2, %1
  %4 = inttoptr i64 %3 to i32*
  %5 = load i32, i32* %4
  ret i32 %5
}

define i32 @load_breg_shift_offreg_5(i64 %a, i64 %b) {






  %1 = shl i64 %a, 2
  %2 = shl i64 %b, 3
  %3 = add i64 %1, %2
  %4 = inttoptr i64 %3 to i32*
  %5 = load i32, i32* %4
  ret i32 %5
}

define i32 @load_breg_mul_offreg_1(i64 %a, i64 %b) {


  %1 = mul i64 %a, 4
  %2 = add i64 %1, %b
  %3 = inttoptr i64 %2 to i32*
  %4 = load i32, i32* %3
  ret i32 %4
}

define zeroext i8 @load_breg_and_offreg_1(i64 %a, i64 %b) {


  %1 = and i64 %a, 4294967295
  %2 = add i64 %1, %b
  %3 = inttoptr i64 %2 to i8*
  %4 = load i8, i8* %3
  ret i8 %4
}

define zeroext i16 @load_breg_and_offreg_2(i64 %a, i64 %b) {


  %1 = and i64 %a, 4294967295
  %2 = shl i64 %1, 1
  %3 = add i64 %2, %b
  %4 = inttoptr i64 %3 to i16*
  %5 = load i16, i16* %4
  ret i16 %5
}

define i32 @load_breg_and_offreg_3(i64 %a, i64 %b) {


  %1 = and i64 %a, 4294967295
  %2 = shl i64 %1, 2
  %3 = add i64 %2, %b
  %4 = inttoptr i64 %3 to i32*
  %5 = load i32, i32* %4
  ret i32 %5
}

define i64 @load_breg_and_offreg_4(i64 %a, i64 %b) {


  %1 = and i64 %a, 4294967295
  %2 = shl i64 %1, 3
  %3 = add i64 %2, %b
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}


define i64 @load_breg_and_offreg_5(i64 %a, i64 %b, i64 %c) {



  %1 = and i64 %a, %c
  %2 = add i64 %1, %b
  %3 = inttoptr i64 %2 to i64*
  %4 = load i64, i64* %3
  ret i64 %4
}

define i64 @load_breg_and_offreg_6(i64 %a, i64 %b, i64 %c) {



  %1 = and i64 %a, %c
  %2 = shl i64 %1, 3
  %3 = add i64 %2, %b
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}


define i32 @load_breg_zext_shift_offreg_1(i32 %a, i64 %b) {


  %1 = zext i32 %a to i64
  %2 = shl i64 %1, 2
  %3 = add i64 %2, %b
  %4 = inttoptr i64 %3 to i32*
  %5 = load i32, i32* %4
  ret i32 %5
}

define i32 @load_breg_zext_shift_offreg_2(i32 %a, i64 %b) {


  %1 = zext i32 %a to i64
  %2 = shl i64 %1, 2
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i32*
  %5 = load i32, i32* %4
  ret i32 %5
}

define i32 @load_breg_zext_mul_offreg_1(i32 %a, i64 %b) {


  %1 = zext i32 %a to i64
  %2 = mul i64 %1, 4
  %3 = add i64 %2, %b
  %4 = inttoptr i64 %3 to i32*
  %5 = load i32, i32* %4
  ret i32 %5
}

define i32 @load_breg_sext_shift_offreg_1(i32 %a, i64 %b) {


  %1 = sext i32 %a to i64
  %2 = shl i64 %1, 2
  %3 = add i64 %2, %b
  %4 = inttoptr i64 %3 to i32*
  %5 = load i32, i32* %4
  ret i32 %5
}

define i32 @load_breg_sext_shift_offreg_2(i32 %a, i64 %b) {


  %1 = sext i32 %a to i64
  %2 = shl i64 %1, 2
  %3 = add i64 %b, %2
  %4 = inttoptr i64 %3 to i32*
  %5 = load i32, i32* %4
  ret i32 %5
}


define i32 @load_breg_sext_shift_offreg_3(i32 %a, i64 %b) {



  %1 = add i32 %a, 4
  %2 = sext i32 %1 to i64
  %3 = shl i64 %2, 2
  %4 = add i64 %b, %3
  %5 = inttoptr i64 %4 to i32*
  %6 = load i32, i32* %5
  ret i32 %6
}


define i32 @load_breg_sext_mul_offreg_1(i32 %a, i64 %b) {


  %1 = sext i32 %a to i64
  %2 = mul i64 %1, 4
  %3 = add i64 %2, %b
  %4 = inttoptr i64 %3 to i32*
  %5 = load i32, i32* %4
  ret i32 %5
}


define i64 @load_sext_shift_offreg_imm1(i32 %a) {



  %1 = sext i32 %a to i64
  %2 = shl i64 %1, 3
  %3 = add i64 %2, 8
  %4 = inttoptr i64 %3 to i64*
  %5 = load i64, i64* %4
  ret i64 %5
}


define i64 @load_breg_sext_shift_offreg_imm1(i32 %a, i64 %b) {



  %1 = sext i32 %a to i64
  %2 = shl i64 %1, 3
  %3 = add i64 %b, %2
  %4 = add i64 %3, 8
  %5 = inttoptr i64 %4 to i64*
  %6 = load i64, i64* %5
  ret i64 %6
}


define i64 @kill_reg(i64 %a) {
  %1 = sub i64 %a, 8
  %2 = add i64 %1, 96
  %3 = inttoptr i64 %2 to i64*
  %4 = load i64, i64* %3
  %5 = add i64 %2, %4
  ret i64 %5
}

define void @store_fi(i64 %i) {



  %1 = alloca [8 x i32]
  %2 = ptrtoint [8 x i32]* %1 to i64
  %3 = mul i64 %i, 4
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to i32*
  store i32 47, i32* %5, align 4
  ret void
}

define i32 @load_fi(i64 %i) {



  %1 = alloca [8 x i32]
  %2 = ptrtoint [8 x i32]* %1 to i64
  %3 = mul i64 %i, 4
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to i32*
  %6 = load i32, i32* %5, align 4
  ret i32 %6
}

