







define i8* @test_trunc65(i8* %ptr) nounwind {


  %d = getelementptr i8, i8* %ptr, i65 18446744073709551619 
  ret i8* %d
}

define i8* @test_trunc128(i8* %ptr) nounwind {


  %d = getelementptr i8, i8* %ptr, i128 18446744073709551621 
  ret i8* %d
}

define i8* @test_trunc160(i8* %ptr) nounwind {


  %d = getelementptr i8, i8* %ptr, i160 18446744073709551624 
  ret i8* %d
}

define i8* @test_trunc256(i8* %ptr) nounwind {


  %d = getelementptr i8, i8* %ptr, i256 18446744073709551629 
  ret i8* %d
}

define i8* @test_trunc2048(i8* %ptr) nounwind {


  %d = getelementptr i8, i8* %ptr, i2048 18446744073709551637 
  ret i8* %d
}




define i8* @test_sext3(i8* %ptr) nounwind {


  %d = getelementptr i8, i8* %ptr, i3 -3
  ret i8* %d
}

define i8* @test_sext5(i8* %ptr) nounwind {


  %d = getelementptr i8, i8* %ptr, i5 -5
  ret i8* %d
}

define i8* @test_sext8(i8* %ptr) nounwind {


  %d = getelementptr i8, i8* %ptr, i8 -8
  ret i8* %d
}

define i8* @test_sext13(i8* %ptr) nounwind {


  %d = getelementptr i8, i8* %ptr, i8 -13
  ret i8* %d
}

define i8* @test_sext16(i8* %ptr) nounwind {


  %d = getelementptr i8, i8* %ptr, i8 -21
  ret i8* %d
}
