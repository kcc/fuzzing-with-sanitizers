




define void @test_store_release(i32* %p, i32 %v) {






  store atomic i32 %v, i32* %p release, align 4
  ret void
}




define i32 @test_seq_cst(i32* %p, i32 %v) {














  store atomic i32 %v, i32* %p seq_cst, align 4
  %val = load atomic i32, i32* %p seq_cst, align 4
  ret i32 %val
}



define i32 @test_acq(i32* %addr) {






  %val = load atomic i32, i32* %addr acquire, align 4
  ret i32 %val
}
