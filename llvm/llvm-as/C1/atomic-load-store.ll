







define void @test1(i32* %ptr, i32 %val1) {


















  store atomic i32 %val1, i32* %ptr seq_cst, align 4
  ret void
}

define i32 @test2(i32* %ptr) {














  %val = load atomic i32, i32* %ptr seq_cst, align 4
  ret i32 %val
}

define void @test3(i8* %ptr1, i8* %ptr2) {



























  %val = load atomic i8, i8* %ptr1 unordered, align 1
  store atomic i8 %val, i8* %ptr2 unordered, align 1
  ret void
}

define void @test4(i8* %ptr1, i8* %ptr2) {





  %val = load atomic i8, i8* %ptr1 seq_cst, align 1
  store atomic i8 %val, i8* %ptr2 seq_cst, align 1
  ret void
}

define i64 @test_old_load_64bit(i64* %p) {


  %1 = load atomic i64, i64* %p seq_cst, align 8
  ret i64 %1
}

define void @test_old_store_64bit(i64* %p, i64 %v) {


  store atomic i64 %v, i64* %p seq_cst, align 8
  ret void
}
