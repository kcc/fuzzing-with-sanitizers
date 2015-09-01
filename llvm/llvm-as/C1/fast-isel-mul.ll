

define zeroext i8 @test_mul8(i8 %lhs, i8 %rhs) {


  %1 = mul i8 %lhs, %rhs
  ret i8 %1
}

define zeroext i16 @test_mul16(i16 %lhs, i16 %rhs) {


  %1 = mul i16 %lhs, %rhs
  ret i16 %1
}

define i32 @test_mul32(i32 %lhs, i32 %rhs) {


  %1 = mul i32 %lhs, %rhs
  ret i32 %1
}

define i64 @test_mul64(i64 %lhs, i64 %rhs) {


  %1 = mul i64 %lhs, %rhs
  ret i64 %1
}

define i32 @test_mul2shift_i32(i32 %a) {


  %1 = mul i32 %a, 4
  ret i32 %1
}

define i64 @test_mul2shift_i64(i64 %a) {


  %1 = mul i64 %a, 8
  ret i64 %1
}

