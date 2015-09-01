

define i8 @test_atomic_xchg_i8(i8* %ptr, i8 %xchgend) {













  %res = atomicrmw xchg i8* %ptr, i8 %xchgend monotonic
  ret i8 %res
}

define i16 @test_atomic_add_i16(i16* %ptr, i16 %addend) {














  %res = atomicrmw add i16* %ptr, i16 %addend seq_cst
  ret i16 %res
}

define i32 @test_atomic_sub_i32(i32* %ptr, i32 %subend) {












  %res = atomicrmw sub i32* %ptr, i32 %subend acquire
  ret i32 %res
}

define i64 @test_atomic_or_i64(i64* %ptr, i64 %orend) {























  %res = atomicrmw or i64* %ptr, i64 %orend seq_cst
  ret i64 %res
}

define i8 @test_cmpxchg_i8_seqcst_seqcst(i8* %ptr, i8 %desired, i8 %newval) {




























  %pairold = cmpxchg i8* %ptr, i8 %desired, i8 %newval seq_cst seq_cst
  %old = extractvalue { i8, i1 } %pairold, 0
  ret i8 %old
}

define i16 @test_cmpxchg_i16_seqcst_monotonic(i16* %ptr, i16 %desired, i16 %newval) {




























  %pairold = cmpxchg i16* %ptr, i16 %desired, i16 %newval seq_cst monotonic
  %old = extractvalue { i16, i1 } %pairold, 0
  ret i16 %old
}

define i32 @test_cmpxchg_i32_acquire_acquire(i32* %ptr, i32 %desired, i32 %newval) {


























  %pairold = cmpxchg i32* %ptr, i32 %desired, i32 %newval acquire acquire
  %old = extractvalue { i32, i1 } %pairold, 0
  ret i32 %old
}

define i64 @test_cmpxchg_i64_monotonic_monotonic(i64* %ptr, i64 %desired, i64 %newval) {





































  %pairold = cmpxchg i64* %ptr, i64 %desired, i64 %newval monotonic monotonic
  %old = extractvalue { i64, i1 } %pairold, 0
  ret i64 %old
}
