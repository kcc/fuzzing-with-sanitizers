




define void @test_bfi0(i32* %existing, i32* %new) {


  %oldval = load volatile i32, i32* %existing
  %oldval_keep = and i32 %oldval, 4294705152 

  %newval = load volatile i32, i32* %new
  %newval_masked = and i32 %newval, 262143 

  %combined = or i32 %newval_masked, %oldval_keep
  store volatile i32 %combined, i32* %existing

  ret void
}
