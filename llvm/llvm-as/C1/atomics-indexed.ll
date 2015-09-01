








define i8 @load_x_i8_seq_cst([100000 x i8]* %mem) {




  %ptr = getelementptr inbounds [100000 x i8], [100000 x i8]* %mem, i64 0, i64 90000
  %val = load atomic i8, i8* %ptr seq_cst, align 1
  ret i8 %val
}
define i16 @load_x_i16_acquire([100000 x i16]* %mem) {



  %ptr = getelementptr inbounds [100000 x i16], [100000 x i16]* %mem, i64 0, i64 90000
  %val = load atomic i16, i16* %ptr acquire, align 2
  ret i16 %val
}
define i32 @load_x_i32_monotonic([100000 x i32]* %mem) {



  %ptr = getelementptr inbounds [100000 x i32], [100000 x i32]* %mem, i64 0, i64 90000
  %val = load atomic i32, i32* %ptr monotonic, align 4
  ret i32 %val
}
define i64 @load_x_i64_unordered([100000 x i64]* %mem) {





  %ptr = getelementptr inbounds [100000 x i64], [100000 x i64]* %mem, i64 0, i64 90000
  %val = load atomic i64, i64* %ptr unordered, align 8
  ret i64 %val
}


define void @store_x_i8_seq_cst([100000 x i8]* %mem) {



  %ptr = getelementptr inbounds [100000 x i8], [100000 x i8]* %mem, i64 0, i64 90000
  store atomic i8 42, i8* %ptr seq_cst, align 1
  ret void
}
define void @store_x_i16_release([100000 x i16]* %mem) {



  %ptr = getelementptr inbounds [100000 x i16], [100000 x i16]* %mem, i64 0, i64 90000
  store atomic i16 42, i16* %ptr release, align 2
  ret void
}
define void @store_x_i32_monotonic([100000 x i32]* %mem) {



  %ptr = getelementptr inbounds [100000 x i32], [100000 x i32]* %mem, i64 0, i64 90000
  store atomic i32 42, i32* %ptr monotonic, align 4
  ret void
}
define void @store_x_i64_unordered([100000 x i64]* %mem) {





  %ptr = getelementptr inbounds [100000 x i64], [100000 x i64]* %mem, i64 0, i64 90000
  store atomic i64 42, i64* %ptr unordered, align 8
  ret void
}
