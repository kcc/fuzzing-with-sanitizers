

define void @test_cmpxchg_weak(i32 *%addr, i32 %desired, i32 %new) {


  %pair = cmpxchg weak i32* %addr, i32 %desired, i32 %new seq_cst monotonic
  %oldval = extractvalue { i32, i1 } %pair, 0











  store i32 %oldval, i32* %addr
  ret void
}


define i1 @test_cmpxchg_weak_to_bool(i32, i32 *%addr, i32 %desired, i32 %new) {


  %pair = cmpxchg weak i32* %addr, i32 %desired, i32 %new seq_cst monotonic
  %success = extractvalue { i32, i1 } %pair, 1













  ret i1 %success
}
