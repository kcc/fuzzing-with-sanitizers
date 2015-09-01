

define i32 @val_compare_and_swap(i32* %p, i32 %cmp, i32 %new) #0 {








  %pair = cmpxchg i32* %p, i32 %cmp, i32 %new acquire acquire
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}

define i32 @val_compare_and_swap_from_load(i32* %p, i32 %cmp, i32* %pnew) #0 {









  %new = load i32, i32* %pnew
  %pair = cmpxchg i32* %p, i32 %cmp, i32 %new acquire acquire
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}

define i32 @val_compare_and_swap_rel(i32* %p, i32 %cmp, i32 %new) #0 {








  %pair = cmpxchg i32* %p, i32 %cmp, i32 %new acq_rel monotonic
  %val = extractvalue { i32, i1 } %pair, 0
  ret i32 %val
}

define i64 @val_compare_and_swap_64(i64* %p, i64 %cmp, i64 %new) #0 {









  %pair = cmpxchg i64* %p, i64 %cmp, i64 %new monotonic monotonic
  %val = extractvalue { i64, i1 } %pair, 0
  ret i64 %val
}

define i32 @fetch_and_nand(i32* %p) #0 {









  %val = atomicrmw nand i32* %p, i32 7 release
  ret i32 %val
}

define i64 @fetch_and_nand_64(i64* %p) #0 {









  %val = atomicrmw nand i64* %p, i64 7 acq_rel
  ret i64 %val
}

define i32 @fetch_and_or(i32* %p) #0 {









  %val = atomicrmw or i32* %p, i32 5 seq_cst
  ret i32 %val
}

define i64 @fetch_and_or_64(i64* %p) #0 {







  %val = atomicrmw or i64* %p, i64 7 monotonic
  ret i64 %val
}

define void @acquire_fence() #0 {
   fence acquire
   ret void
   
   
}

define void @release_fence() #0 {
   fence release
   ret void
   
   
}

define void @seq_cst_fence() #0 {
   fence seq_cst
   ret void
   
   
}

define i32 @atomic_load(i32* %p) #0 {
   %r = load atomic i32, i32* %p seq_cst, align 4
   ret i32 %r
   
   
}

define i8 @atomic_load_relaxed_8(i8* %p, i32 %off32) #0 {

  %ptr_unsigned = getelementptr i8, i8* %p, i32 4095
  %val_unsigned = load atomic i8, i8* %ptr_unsigned monotonic, align 1


  %ptr_regoff = getelementptr i8, i8* %p, i32 %off32
  %val_regoff = load atomic i8, i8* %ptr_regoff unordered, align 1
  %tot1 = add i8 %val_unsigned, %val_regoff


  %ptr_unscaled = getelementptr i8, i8* %p, i32 -256
  %val_unscaled = load atomic i8, i8* %ptr_unscaled monotonic, align 1
  %tot2 = add i8 %tot1, %val_unscaled


  %ptr_random = getelementptr i8, i8* %p, i32 1191936 
  %val_random = load atomic i8, i8* %ptr_random unordered, align 1
  %tot3 = add i8 %tot2, %val_random



  ret i8 %tot3
}

define i16 @atomic_load_relaxed_16(i16* %p, i32 %off32) #0 {

  %ptr_unsigned = getelementptr i16, i16* %p, i32 4095
  %val_unsigned = load atomic i16, i16* %ptr_unsigned monotonic, align 2


  %ptr_regoff = getelementptr i16, i16* %p, i32 %off32
  %val_regoff = load atomic i16, i16* %ptr_regoff unordered, align 2
  %tot1 = add i16 %val_unsigned, %val_regoff


  %ptr_unscaled = getelementptr i16, i16* %p, i32 -128
  %val_unscaled = load atomic i16, i16* %ptr_unscaled monotonic, align 2
  %tot2 = add i16 %tot1, %val_unscaled


  %ptr_random = getelementptr i16, i16* %p, i32 595968 
  %val_random = load atomic i16, i16* %ptr_random unordered, align 2
  %tot3 = add i16 %tot2, %val_random



  ret i16 %tot3
}

define i32 @atomic_load_relaxed_32(i32* %p, i32 %off32) #0 {

  %ptr_unsigned = getelementptr i32, i32* %p, i32 4095
  %val_unsigned = load atomic i32, i32* %ptr_unsigned monotonic, align 4


  %ptr_regoff = getelementptr i32, i32* %p, i32 %off32
  %val_regoff = load atomic i32, i32* %ptr_regoff unordered, align 4
  %tot1 = add i32 %val_unsigned, %val_regoff


  %ptr_unscaled = getelementptr i32, i32* %p, i32 -64
  %val_unscaled = load atomic i32, i32* %ptr_unscaled monotonic, align 4
  %tot2 = add i32 %tot1, %val_unscaled


  %ptr_random = getelementptr i32, i32* %p, i32 297984 
  %val_random = load atomic i32, i32* %ptr_random unordered, align 4
  %tot3 = add i32 %tot2, %val_random



  ret i32 %tot3
}

define i64 @atomic_load_relaxed_64(i64* %p, i32 %off32) #0 {

  %ptr_unsigned = getelementptr i64, i64* %p, i32 4095
  %val_unsigned = load atomic i64, i64* %ptr_unsigned monotonic, align 8


  %ptr_regoff = getelementptr i64, i64* %p, i32 %off32
  %val_regoff = load atomic i64, i64* %ptr_regoff unordered, align 8
  %tot1 = add i64 %val_unsigned, %val_regoff


  %ptr_unscaled = getelementptr i64, i64* %p, i32 -32
  %val_unscaled = load atomic i64, i64* %ptr_unscaled monotonic, align 8
  %tot2 = add i64 %tot1, %val_unscaled


  %ptr_random = getelementptr i64, i64* %p, i32 148992 
  %val_random = load atomic i64, i64* %ptr_random unordered, align 8
  %tot3 = add i64 %tot2, %val_random



  ret i64 %tot3
}


define void @atomc_store(i32* %p) #0 {
   store atomic i32 4, i32* %p seq_cst, align 4
   ret void
   
   
}

define void @atomic_store_relaxed_8(i8* %p, i32 %off32, i8 %val) #0 {

  %ptr_unsigned = getelementptr i8, i8* %p, i32 4095
  store atomic i8 %val, i8* %ptr_unsigned monotonic, align 1


  %ptr_regoff = getelementptr i8, i8* %p, i32 %off32
  store atomic i8 %val, i8* %ptr_regoff unordered, align 1


  %ptr_unscaled = getelementptr i8, i8* %p, i32 -256
  store atomic i8 %val, i8* %ptr_unscaled monotonic, align 1


  %ptr_random = getelementptr i8, i8* %p, i32 1191936 
  store atomic i8 %val, i8* %ptr_random unordered, align 1



  ret void
}

define void @atomic_store_relaxed_16(i16* %p, i32 %off32, i16 %val) #0 {

  %ptr_unsigned = getelementptr i16, i16* %p, i32 4095
  store atomic i16 %val, i16* %ptr_unsigned monotonic, align 2


  %ptr_regoff = getelementptr i16, i16* %p, i32 %off32
  store atomic i16 %val, i16* %ptr_regoff unordered, align 2


  %ptr_unscaled = getelementptr i16, i16* %p, i32 -128
  store atomic i16 %val, i16* %ptr_unscaled monotonic, align 2


  %ptr_random = getelementptr i16, i16* %p, i32 595968 
  store atomic i16 %val, i16* %ptr_random unordered, align 2



  ret void
}

define void @atomic_store_relaxed_32(i32* %p, i32 %off32, i32 %val) #0 {

  %ptr_unsigned = getelementptr i32, i32* %p, i32 4095
  store atomic i32 %val, i32* %ptr_unsigned monotonic, align 4


  %ptr_regoff = getelementptr i32, i32* %p, i32 %off32
  store atomic i32 %val, i32* %ptr_regoff unordered, align 4


  %ptr_unscaled = getelementptr i32, i32* %p, i32 -64
  store atomic i32 %val, i32* %ptr_unscaled monotonic, align 4


  %ptr_random = getelementptr i32, i32* %p, i32 297984 
  store atomic i32 %val, i32* %ptr_random unordered, align 4



  ret void
}

define void @atomic_store_relaxed_64(i64* %p, i32 %off32, i64 %val) #0 {

  %ptr_unsigned = getelementptr i64, i64* %p, i32 4095
  store atomic i64 %val, i64* %ptr_unsigned monotonic, align 8


  %ptr_regoff = getelementptr i64, i64* %p, i32 %off32
  store atomic i64 %val, i64* %ptr_regoff unordered, align 8


  %ptr_unscaled = getelementptr i64, i64* %p, i32 -32
  store atomic i64 %val, i64* %ptr_unscaled monotonic, align 8


  %ptr_random = getelementptr i64, i64* %p, i32 148992 
  store atomic i64 %val, i64* %ptr_random unordered, align 8



  ret void
}




%"class.X::Atomic" = type { %struct.x_atomic_t }
%struct.x_atomic_t = type { i32 }

@counter = external hidden global %"class.X::Atomic", align 4

define i32 @next_id() nounwind optsize ssp align 2 {
entry:
  %0 = atomicrmw add i32* getelementptr inbounds (%"class.X::Atomic", %"class.X::Atomic"* @counter, i64 0, i32 0, i32 0), i32 1 seq_cst
  %add.i = add i32 %0, 1
  %tobool = icmp eq i32 %add.i, 0
  br i1 %tobool, label %if.else, label %return

if.else:                                          
  %1 = atomicrmw add i32* getelementptr inbounds (%"class.X::Atomic", %"class.X::Atomic"* @counter, i64 0, i32 0, i32 0), i32 1 seq_cst
  %add.i2 = add i32 %1, 1
  br label %return

return:                                           
  %retval.0 = phi i32 [ %add.i2, %if.else ], [ %add.i, %entry ]
  ret i32 %retval.0
}

attributes #0 = { nounwind }
