




define i64 @test1(i64* %ptr, i64 %val) {
























  %r = atomicrmw add i64* %ptr, i64 %val seq_cst
  ret i64 %r
}

define i64 @test2(i64* %ptr, i64 %val) {
























  %r = atomicrmw sub i64* %ptr, i64 %val seq_cst
  ret i64 %r
}

define i64 @test3(i64* %ptr, i64 %val) {
























  %r = atomicrmw and i64* %ptr, i64 %val seq_cst
  ret i64 %r
}

define i64 @test4(i64* %ptr, i64 %val) {
























  %r = atomicrmw or i64* %ptr, i64 %val seq_cst
  ret i64 %r
}

define i64 @test5(i64* %ptr, i64 %val) {
























  %r = atomicrmw xor i64* %ptr, i64 %val seq_cst
  ret i64 %r
}

define i64 @test6(i64* %ptr, i64 %val) {
















  %r = atomicrmw xchg i64* %ptr, i64 %val seq_cst
  ret i64 %r
}

define i64 @test7(i64* %ptr, i64 %val1, i64 %val2) {





























  %pair = cmpxchg i64* %ptr, i64 %val1, i64 %val2 seq_cst seq_cst
  %r = extractvalue { i64, i1 } %pair, 0
  ret i64 %r
}


define i64 @test8(i64* %ptr) {








  %r = load atomic i64, i64* %ptr seq_cst, align 8
  ret i64 %r
}



define void @test9(i64* %ptr, i64 %val) {
















  store atomic i64 %val, i64* %ptr seq_cst, align 8
  ret void
}

define i64 @test10(i64* %ptr, i64 %val) {












































  %r = atomicrmw min i64* %ptr, i64 %val seq_cst
  ret i64 %r
}

define i64 @test11(i64* %ptr, i64 %val) {












































  %r = atomicrmw umin i64* %ptr, i64 %val seq_cst
  ret i64 %r
}

define i64 @test12(i64* %ptr, i64 %val) {












































  %r = atomicrmw max i64* %ptr, i64 %val seq_cst
  ret i64 %r
}

define i64 @test13(i64* %ptr, i64 %val) {











































  %r = atomicrmw umax i64* %ptr, i64 %val seq_cst
  ret i64 %r
}

