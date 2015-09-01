




@var8 = global i8 0
@var16 = global i16 0
@var32 = global i32 0
@var64 = global i64 0

define i8 @test_atomic_load_add_i8(i8 %offset) nounwind {

   %old = atomicrmw add i8* @var8, i8 %offset seq_cst







  
  








   ret i8 %old
}

define i16 @test_atomic_load_add_i16(i16 %offset) nounwind {

   %old = atomicrmw add i16* @var16, i16 %offset acquire







  
  








   ret i16 %old
}

define i32 @test_atomic_load_add_i32(i32 %offset) nounwind {

   %old = atomicrmw add i32* @var32, i32 %offset release







  
  








   ret i32 %old
}

define void @test_atomic_load_add_i64(i64 %offset) nounwind {

   %old = atomicrmw add i64* @var64, i64 %offset monotonic







  
  











  store i64 %old, i64* @var64
   ret void
}

define i8 @test_atomic_load_sub_i8(i8 %offset) nounwind {

   %old = atomicrmw sub i8* @var8, i8 %offset monotonic







  
  








   ret i8 %old
}

define i16 @test_atomic_load_sub_i16(i16 %offset) nounwind {

   %old = atomicrmw sub i16* @var16, i16 %offset release







  
  








   ret i16 %old
}

define i32 @test_atomic_load_sub_i32(i32 %offset) nounwind {

   %old = atomicrmw sub i32* @var32, i32 %offset acquire







  
  








   ret i32 %old
}

define void @test_atomic_load_sub_i64(i64 %offset) nounwind {

   %old = atomicrmw sub i64* @var64, i64 %offset seq_cst







  
  











   store i64 %old, i64* @var64
   ret void
}

define i8 @test_atomic_load_and_i8(i8 %offset) nounwind {

   %old = atomicrmw and i8* @var8, i8 %offset release







  
  








   ret i8 %old
}

define i16 @test_atomic_load_and_i16(i16 %offset) nounwind {

   %old = atomicrmw and i16* @var16, i16 %offset monotonic







  
  








   ret i16 %old
}

define i32 @test_atomic_load_and_i32(i32 %offset) nounwind {

   %old = atomicrmw and i32* @var32, i32 %offset seq_cst







  
  








   ret i32 %old
}

define void @test_atomic_load_and_i64(i64 %offset) nounwind {

   %old = atomicrmw and i64* @var64, i64 %offset acquire







  
  











   store i64 %old, i64* @var64
   ret void
}

define i8 @test_atomic_load_or_i8(i8 %offset) nounwind {

   %old = atomicrmw or i8* @var8, i8 %offset seq_cst







  
  








   ret i8 %old
}

define i16 @test_atomic_load_or_i16(i16 %offset) nounwind {

   %old = atomicrmw or i16* @var16, i16 %offset monotonic







  
  








   ret i16 %old
}

define i32 @test_atomic_load_or_i32(i32 %offset) nounwind {

   %old = atomicrmw or i32* @var32, i32 %offset acquire







  
  








   ret i32 %old
}

define void @test_atomic_load_or_i64(i64 %offset) nounwind {

   %old = atomicrmw or i64* @var64, i64 %offset release







  
  











   store i64 %old, i64* @var64
   ret void
}

define i8 @test_atomic_load_xor_i8(i8 %offset) nounwind {

   %old = atomicrmw xor i8* @var8, i8 %offset acquire







  
  








   ret i8 %old
}

define i16 @test_atomic_load_xor_i16(i16 %offset) nounwind {

   %old = atomicrmw xor i16* @var16, i16 %offset release







  
  








   ret i16 %old
}

define i32 @test_atomic_load_xor_i32(i32 %offset) nounwind {

   %old = atomicrmw xor i32* @var32, i32 %offset seq_cst







  
  








   ret i32 %old
}

define void @test_atomic_load_xor_i64(i64 %offset) nounwind {

   %old = atomicrmw xor i64* @var64, i64 %offset monotonic







  
  











   store i64 %old, i64* @var64
   ret void
}

define i8 @test_atomic_load_xchg_i8(i8 %offset) nounwind {

   %old = atomicrmw xchg i8* @var8, i8 %offset monotonic







  
  







   ret i8 %old
}

define i16 @test_atomic_load_xchg_i16(i16 %offset) nounwind {

   %old = atomicrmw xchg i16* @var16, i16 %offset seq_cst







  
  







   ret i16 %old
}

define i32 @test_atomic_load_xchg_i32(i32 %offset) nounwind {

   %old = atomicrmw xchg i32* @var32, i32 %offset release







  
  







   ret i32 %old
}

define void @test_atomic_load_xchg_i64(i64 %offset) nounwind {

   %old = atomicrmw xchg i64* @var64, i64 %offset acquire







  
  







   store i64 %old, i64* @var64
   ret void
}

define i8 @test_atomic_load_min_i8(i8 signext %offset) nounwind {

   %old = atomicrmw min i8* @var8, i8 %offset acquire








  
  










   ret i8 %old
}

define i16 @test_atomic_load_min_i16(i16 signext %offset) nounwind {

   %old = atomicrmw min i16* @var16, i16 %offset release








  
  










   ret i16 %old
}

define i32 @test_atomic_load_min_i32(i32 %offset) nounwind {

   %old = atomicrmw min i32* @var32, i32 %offset monotonic







  
  











   ret i32 %old
}

define void @test_atomic_load_min_i64(i64 %offset) nounwind {

   %old = atomicrmw min i64* @var64, i64 %offset seq_cst







  
  
























   store i64 %old, i64* @var64
   ret void
}

define i8 @test_atomic_load_max_i8(i8 signext %offset) nounwind {

   %old = atomicrmw max i8* @var8, i8 %offset seq_cst








  
  










   ret i8 %old
}

define i16 @test_atomic_load_max_i16(i16 signext %offset) nounwind {

   %old = atomicrmw max i16* @var16, i16 %offset acquire








  
  










   ret i16 %old
}

define i32 @test_atomic_load_max_i32(i32 %offset) nounwind {

   %old = atomicrmw max i32* @var32, i32 %offset release







  
  











   ret i32 %old
}

define void @test_atomic_load_max_i64(i64 %offset) nounwind {

   %old = atomicrmw max i64* @var64, i64 %offset monotonic







  
  
























   store i64 %old, i64* @var64
   ret void
}

define i8 @test_atomic_load_umin_i8(i8 zeroext %offset) nounwind {

   %old = atomicrmw umin i8* @var8, i8 %offset monotonic







  
  











   ret i8 %old
}

define i16 @test_atomic_load_umin_i16(i16 zeroext %offset) nounwind {

   %old = atomicrmw umin i16* @var16, i16 %offset acquire







  
  











   ret i16 %old
}

define i32 @test_atomic_load_umin_i32(i32 %offset) nounwind {

   %old = atomicrmw umin i32* @var32, i32 %offset seq_cst







  
  











   ret i32 %old
}

define void @test_atomic_load_umin_i64(i64 %offset) nounwind {

   %old = atomicrmw umin i64* @var64, i64 %offset seq_cst







  
  
























   store i64 %old, i64* @var64
   ret void
}

define i8 @test_atomic_load_umax_i8(i8 zeroext %offset) nounwind {

   %old = atomicrmw umax i8* @var8, i8 %offset acq_rel







  
  











   ret i8 %old
}

define i16 @test_atomic_load_umax_i16(i16 zeroext %offset) nounwind {

   %old = atomicrmw umax i16* @var16, i16 %offset monotonic







  
  











   ret i16 %old
}

define i32 @test_atomic_load_umax_i32(i32 %offset) nounwind {

   %old = atomicrmw umax i32* @var32, i32 %offset seq_cst







  
  











   ret i32 %old
}

define void @test_atomic_load_umax_i64(i64 %offset) nounwind {

   %old = atomicrmw umax i64* @var64, i64 %offset seq_cst







  
  
























   store i64 %old, i64* @var64
   ret void
}

define i8 @test_atomic_cmpxchg_i8(i8 zeroext %wanted, i8 zeroext %new) nounwind {

   %pair = cmpxchg i8* @var8, i8 %wanted, i8 %new acquire acquire
   %old = extractvalue { i8, i1 } %pair, 0







  
  



  







   ret i8 %old
}

define i16 @test_atomic_cmpxchg_i16(i16 zeroext %wanted, i16 zeroext %new) nounwind {

   %pair = cmpxchg i16* @var16, i16 %wanted, i16 %new seq_cst seq_cst
   %old = extractvalue { i16, i1 } %pair, 0







  
  



  







   ret i16 %old
}

define void @test_atomic_cmpxchg_i32(i32 %wanted, i32 %new) nounwind {

   %pair = cmpxchg i32* @var32, i32 %wanted, i32 %new release monotonic
   %old = extractvalue { i32, i1 } %pair, 0
   store i32 %old, i32* @var32







  
  



  







   ret void
}

define void @test_atomic_cmpxchg_i64(i64 %wanted, i64 %new) nounwind {

   %pair = cmpxchg i64* @var64, i64 %wanted, i64 %new monotonic monotonic
   %old = extractvalue { i64, i1 } %pair, 0







  
  










  







   store i64 %old, i64* @var64
   ret void
}

define i8 @test_atomic_load_monotonic_i8() nounwind {

  %val = load atomic i8, i8* @var8 monotonic, align 1








  ret i8 %val
}

define i8 @test_atomic_load_monotonic_regoff_i8(i64 %base, i64 %off) nounwind {

  %addr_int = add i64 %base, %off
  %addr = inttoptr i64 %addr_int to i8*

  %val = load atomic i8, i8* %addr monotonic, align 1







  ret i8 %val
}

define i8 @test_atomic_load_acquire_i8() nounwind {

  %val = load atomic i8, i8* @var8 acquire, align 1











  ret i8 %val
}

define i8 @test_atomic_load_seq_cst_i8() nounwind {

  %val = load atomic i8, i8* @var8 seq_cst, align 1











  ret i8 %val
}

define i16 @test_atomic_load_monotonic_i16() nounwind {

  %val = load atomic i16, i16* @var16 monotonic, align 2












  ret i16 %val
}

define i32 @test_atomic_load_monotonic_regoff_i32(i64 %base, i64 %off) nounwind {

  %addr_int = add i64 %base, %off
  %addr = inttoptr i64 %addr_int to i32*

  %val = load atomic i32, i32* %addr monotonic, align 4







  ret i32 %val
}

define i64 @test_atomic_load_seq_cst_i64() nounwind {

  %val = load atomic i64, i64* @var64 seq_cst, align 8











  ret i64 %val
}

define void @test_atomic_store_monotonic_i8(i8 %val) nounwind {

  store atomic i8 %val, i8* @var8 monotonic, align 1




  ret void
}

define void @test_atomic_store_monotonic_regoff_i8(i64 %base, i64 %off, i8 %val) nounwind {


  %addr_int = add i64 %base, %off
  %addr = inttoptr i64 %addr_int to i8*

  store atomic i8 %val, i8* %addr monotonic, align 1





  ret void
}

define void @test_atomic_store_release_i8(i8 %val) nounwind {

  store atomic i8 %val, i8* @var8 release, align 1











  ret void
}

define void @test_atomic_store_seq_cst_i8(i8 %val) nounwind {

  store atomic i8 %val, i8* @var8 seq_cst, align 1











  ret void
}

define void @test_atomic_store_monotonic_i16(i16 %val) nounwind {

  store atomic i16 %val, i16* @var16 monotonic, align 2











  ret void
}

define void @test_atomic_store_monotonic_regoff_i32(i64 %base, i64 %off, i32 %val) nounwind {


  %addr_int = add i64 %base, %off
  %addr = inttoptr i64 %addr_int to i32*

  store atomic i32 %val, i32* %addr monotonic, align 4










  ret void
}

define void @test_atomic_store_release_i64(i64 %val) nounwind {

  store atomic i64 %val, i64* @var64 release, align 8






  
  






  ret void
}

define i32 @not.barriers(i32* %var, i1 %cond) {

  br i1 %cond, label %atomic_ver, label %simple_ver
simple_ver:
  %oldval = load i32, i32* %var
  %newval = add nsw i32 %oldval, -1
  store i32 %newval, i32* %var
  br label %somewhere
atomic_ver:
  fence seq_cst
  %val = atomicrmw add i32* %var, i32 -1 monotonic
  fence seq_cst
  br label %somewhere



  
  
  

somewhere:
  %combined = phi i32 [ %val, %atomic_ver ], [ %newval, %simple_ver]
  ret i32 %combined
}
