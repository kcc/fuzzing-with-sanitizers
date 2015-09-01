


define i64 @test_add(i64* %addr, i64 %inc) {


  %old = atomicrmw add i64* %addr, i64 %inc seq_cst
  ret i64 %old
}

define i64 @test_sub(i64* %addr, i64 %inc) {


  %old = atomicrmw sub i64* %addr, i64 %inc seq_cst
  ret i64 %old
}

define i64 @test_and(i64* %andr, i64 %inc) {


  %old = atomicrmw and i64* %andr, i64 %inc seq_cst
  ret i64 %old
}

define i64 @test_or(i64* %orr, i64 %inc) {


  %old = atomicrmw or i64* %orr, i64 %inc seq_cst
  ret i64 %old
}

define i64 @test_xor(i64* %xorr, i64 %inc) {


  %old = atomicrmw xor i64* %xorr, i64 %inc seq_cst
  ret i64 %old
}

define i64 @test_nand(i64* %nandr, i64 %inc) {


  %old = atomicrmw nand i64* %nandr, i64 %inc seq_cst
  ret i64 %old
}
