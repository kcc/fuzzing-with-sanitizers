





























define void @store_atomic_imm_8(i8* %p) {






  store atomic i8 42, i8* %p release, align 1
  ret void
}

define void @store_atomic_imm_16(i16* %p) {






  store atomic i16 42, i16* %p monotonic, align 2
  ret void
}

define void @store_atomic_imm_32(i32* %p) {









  store atomic i32 42, i32* %p release, align 4
  ret void
}

define void @store_atomic_imm_64(i64* %p) {







  store atomic i64 42, i64* %p release, align 8
  ret void
}



define void @store_atomic_imm_64_big(i64* %p) {



  store atomic i64 100000000000, i64* %p monotonic, align 8
  ret void
}


define void @store_atomic_imm_32_seq_cst(i32* %p) {




  store atomic i32 42, i32* %p seq_cst, align 4
  ret void
}



define void @add_8i(i8* %p) {








  %1 = load atomic i8, i8* %p seq_cst, align 1
  %2 = add i8 %1, 2
  store atomic i8 %2, i8* %p release, align 1
  ret void
}

define void @add_8r(i8* %p, i8 %v) {








  %1 = load atomic i8, i8* %p seq_cst, align 1
  %2 = add i8 %1, %v
  store atomic i8 %2, i8* %p release, align 1
  ret void
}

define void @add_16i(i16* %p) {






  %1 = load atomic i16, i16* %p acquire, align 2
  %2 = add i16 %1, 2
  store atomic i16 %2, i16* %p release, align 2
  ret void
}

define void @add_16r(i16* %p, i16 %v) {






  %1 = load atomic i16, i16* %p acquire, align 2
  %2 = add i16 %1, %v
  store atomic i16 %2, i16* %p release, align 2
  ret void
}

define void @add_32i(i32* %p) {








  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = add i32 %1, 2
  store atomic i32 %2, i32* %p monotonic, align 4
  ret void
}

define void @add_32r(i32* %p, i32 %v) {








  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = add i32 %1, %v
  store atomic i32 %2, i32* %p monotonic, align 4
  ret void
}




define void @add_32r_self(i32* %p) {










  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = add i32 %1, %1
  store atomic i32 %2, i32* %p monotonic, align 4
  ret void
}



define i32 @add_32r_ret_load(i32* %p, i32 %v) {














  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = add i32 %1, %v
  store atomic i32 %2, i32* %p monotonic, align 4
  ret i32 %1
}

define void @add_64i(i64* %p) {






  %1 = load atomic i64, i64* %p acquire, align 8
  %2 = add i64 %1, 2
  store atomic i64 %2, i64* %p release, align 8
  ret void
}

define void @add_64r(i64* %p, i64 %v) {






  %1 = load atomic i64, i64* %p acquire, align 8
  %2 = add i64 %1, %v
  store atomic i64 %2, i64* %p release, align 8
  ret void
}

define void @add_32i_seq_cst(i32* %p) {




  %1 = load atomic i32, i32* %p monotonic, align 4
  %2 = add i32 %1, 2
  store atomic i32 %2, i32* %p seq_cst, align 4
  ret void
}

define void @add_32r_seq_cst(i32* %p, i32 %v) {




  %1 = load atomic i32, i32* %p monotonic, align 4
  %2 = add i32 %1, %v
  store atomic i32 %2, i32* %p seq_cst, align 4
  ret void
}



define void @and_8i(i8* %p) {








  %1 = load atomic i8, i8* %p monotonic, align 1
  %2 = and i8 %1, 2
  store atomic i8 %2, i8* %p release, align 1
  ret void
}

define void @and_8r(i8* %p, i8 %v) {








  %1 = load atomic i8, i8* %p monotonic, align 1
  %2 = and i8 %1, %v
  store atomic i8 %2, i8* %p release, align 1
  ret void
}

define void @and_16i(i16* %p) {






  %1 = load atomic i16, i16* %p acquire, align 2
  %2 = and i16 %1, 2
  store atomic i16 %2, i16* %p release, align 2
  ret void
}

define void @and_16r(i16* %p, i16 %v) {






  %1 = load atomic i16, i16* %p acquire, align 2
  %2 = and i16 %1, %v
  store atomic i16 %2, i16* %p release, align 2
  ret void
}

define void @and_32i(i32* %p) {








  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = and i32 %1, 2
  store atomic i32 %2, i32* %p release, align 4
  ret void
}

define void @and_32r(i32* %p, i32 %v) {








  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = and i32 %1, %v
  store atomic i32 %2, i32* %p release, align 4
  ret void
}

define void @and_64i(i64* %p) {






  %1 = load atomic i64, i64* %p acquire, align 8
  %2 = and i64 %1, 2
  store atomic i64 %2, i64* %p release, align 8
  ret void
}

define void @and_64r(i64* %p, i64 %v) {






  %1 = load atomic i64, i64* %p acquire, align 8
  %2 = and i64 %1, %v
  store atomic i64 %2, i64* %p release, align 8
  ret void
}

define void @and_32i_seq_cst(i32* %p) {




  %1 = load atomic i32, i32* %p monotonic, align 4
  %2 = and i32 %1, 2
  store atomic i32 %2, i32* %p seq_cst, align 4
  ret void
}

define void @and_32r_seq_cst(i32* %p, i32 %v) {




  %1 = load atomic i32, i32* %p monotonic, align 4
  %2 = and i32 %1, %v
  store atomic i32 %2, i32* %p seq_cst, align 4
  ret void
}



define void @or_8i(i8* %p) {








  %1 = load atomic i8, i8* %p acquire, align 1
  %2 = or i8 %1, 2
  store atomic i8 %2, i8* %p release, align 1
  ret void
}

define void @or_8r(i8* %p, i8 %v) {








  %1 = load atomic i8, i8* %p acquire, align 1
  %2 = or i8 %1, %v
  store atomic i8 %2, i8* %p release, align 1
  ret void
}

define void @or_16i(i16* %p) {




  %1 = load atomic i16, i16* %p acquire, align 2
  %2 = or i16 %1, 2
  store atomic i16 %2, i16* %p release, align 2
  ret void
}

define void @or_16r(i16* %p, i16 %v) {




  %1 = load atomic i16, i16* %p acquire, align 2
  %2 = or i16 %1, %v
  store atomic i16 %2, i16* %p release, align 2
  ret void
}

define void @or_32i(i32* %p) {








  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = or i32 %1, 2
  store atomic i32 %2, i32* %p release, align 4
  ret void
}

define void @or_32r(i32* %p, i32 %v) {








  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = or i32 %1, %v
  store atomic i32 %2, i32* %p release, align 4
  ret void
}

define void @or_64i(i64* %p) {






  %1 = load atomic i64, i64* %p acquire, align 8
  %2 = or i64 %1, 2
  store atomic i64 %2, i64* %p release, align 8
  ret void
}

define void @or_64r(i64* %p, i64 %v) {






  %1 = load atomic i64, i64* %p acquire, align 8
  %2 = or i64 %1, %v
  store atomic i64 %2, i64* %p release, align 8
  ret void
}

define void @or_32i_seq_cst(i32* %p) {




  %1 = load atomic i32, i32* %p monotonic, align 4
  %2 = or i32 %1, 2
  store atomic i32 %2, i32* %p seq_cst, align 4
  ret void
}

define void @or_32r_seq_cst(i32* %p, i32 %v) {




  %1 = load atomic i32, i32* %p monotonic, align 4
  %2 = or i32 %1, %v
  store atomic i32 %2, i32* %p seq_cst, align 4
  ret void
}



define void @xor_8i(i8* %p) {








  %1 = load atomic i8, i8* %p acquire, align 1
  %2 = xor i8 %1, 2
  store atomic i8 %2, i8* %p release, align 1
  ret void
}

define void @xor_8r(i8* %p, i8 %v) {








  %1 = load atomic i8, i8* %p acquire, align 1
  %2 = xor i8 %1, %v
  store atomic i8 %2, i8* %p release, align 1
  ret void
}

define void @xor_16i(i16* %p) {




  %1 = load atomic i16, i16* %p acquire, align 2
  %2 = xor i16 %1, 2
  store atomic i16 %2, i16* %p release, align 2
  ret void
}

define void @xor_16r(i16* %p, i16 %v) {




  %1 = load atomic i16, i16* %p acquire, align 2
  %2 = xor i16 %1, %v
  store atomic i16 %2, i16* %p release, align 2
  ret void
}

define void @xor_32i(i32* %p) {








  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = xor i32 %1, 2
  store atomic i32 %2, i32* %p release, align 4
  ret void
}

define void @xor_32r(i32* %p, i32 %v) {








  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = xor i32 %1, %v
  store atomic i32 %2, i32* %p release, align 4
  ret void
}

define void @xor_64i(i64* %p) {






  %1 = load atomic i64, i64* %p acquire, align 8
  %2 = xor i64 %1, 2
  store atomic i64 %2, i64* %p release, align 8
  ret void
}

define void @xor_64r(i64* %p, i64 %v) {






  %1 = load atomic i64, i64* %p acquire, align 8
  %2 = xor i64 %1, %v
  store atomic i64 %2, i64* %p release, align 8
  ret void
}

define void @xor_32i_seq_cst(i32* %p) {




  %1 = load atomic i32, i32* %p monotonic, align 4
  %2 = xor i32 %1, 2
  store atomic i32 %2, i32* %p seq_cst, align 4
  ret void
}

define void @xor_32r_seq_cst(i32* %p, i32 %v) {




  %1 = load atomic i32, i32* %p monotonic, align 4
  %2 = xor i32 %1, %v
  store atomic i32 %2, i32* %p seq_cst, align 4
  ret void
}



define void @inc_8(i8* %p) {











  %1 = load atomic i8, i8* %p seq_cst, align 1
  %2 = add i8 %1, 1
  store atomic i8 %2, i8* %p release, align 1
  ret void
}

define void @inc_16(i16* %p) {








  %1 = load atomic i16, i16* %p acquire, align 2
  %2 = add i16 %1, 1
  store atomic i16 %2, i16* %p release, align 2
  ret void
}

define void @inc_32(i32* %p) {











  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = add i32 %1, 1
  store atomic i32 %2, i32* %p monotonic, align 4
  ret void
}

define void @inc_64(i64* %p) {









  %1 = load atomic i64, i64* %p acquire, align 8
  %2 = add i64 %1, 1
  store atomic i64 %2, i64* %p release, align 8
  ret void
}

define void @inc_32_seq_cst(i32* %p) {




  %1 = load atomic i32, i32* %p monotonic, align 4
  %2 = add i32 %1, 1
  store atomic i32 %2, i32* %p seq_cst, align 4
  ret void
}



define void @dec_8(i8* %p) {











  %1 = load atomic i8, i8* %p seq_cst, align 1
  %2 = sub i8 %1, 1
  store atomic i8 %2, i8* %p release, align 1
  ret void
}

define void @dec_16(i16* %p) {








  %1 = load atomic i16, i16* %p acquire, align 2
  %2 = sub i16 %1, 1
  store atomic i16 %2, i16* %p release, align 2
  ret void
}

define void @dec_32(i32* %p) {











  %1 = load atomic i32, i32* %p acquire, align 4
  %2 = sub i32 %1, 1
  store atomic i32 %2, i32* %p monotonic, align 4
  ret void
}

define void @dec_64(i64* %p) {









  %1 = load atomic i64, i64* %p acquire, align 8
  %2 = sub i64 %1, 1
  store atomic i64 %2, i64* %p release, align 8
  ret void
}

define void @dec_32_seq_cst(i32* %p) {




  %1 = load atomic i32, i32* %p monotonic, align 4
  %2 = sub i32 %1, 1
  store atomic i32 %2, i32* %p seq_cst, align 4
  ret void
}



define void @fadd_32r(float* %loc, float %val) {








  %floc = bitcast float* %loc to i32*
  %1 = load atomic i32, i32* %floc seq_cst, align 4
  %2 = bitcast i32 %1 to float
  %add = fadd float %2, %val
  %3 = bitcast float %add to i32
  store atomic i32 %3, i32* %floc release, align 4
  ret void
}

define void @fadd_64r(double* %loc, double %val) {







  %floc = bitcast double* %loc to i64*
  %1 = load atomic i64, i64* %floc seq_cst, align 8
  %2 = bitcast i64 %1 to double
  %add = fadd double %2, %val
  %3 = bitcast double %add to i64
  store atomic i64 %3, i64* %floc release, align 8
  ret void
}
