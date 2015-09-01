

define i32 @test_madd32(i32 %val0, i32 %val1, i32 %val2) {

  %mid = mul i32 %val1, %val2
  %res = add i32 %val0, %mid

  ret i32 %res
}

define i64 @test_madd64(i64 %val0, i64 %val1, i64 %val2) {

  %mid = mul i64 %val1, %val2
  %res = add i64 %val0, %mid

  ret i64 %res
}

define i32 @test_msub32(i32 %val0, i32 %val1, i32 %val2) {

  %mid = mul i32 %val1, %val2
  %res = sub i32 %val0, %mid

  ret i32 %res
}

define i64 @test_msub64(i64 %val0, i64 %val1, i64 %val2) {

  %mid = mul i64 %val1, %val2
  %res = sub i64 %val0, %mid

  ret i64 %res
}

define i64 @test_smaddl(i64 %acc, i32 %val1, i32 %val2) {

  %ext1 = sext i32 %val1 to i64
  %ext2 = sext i32 %val2 to i64
  %prod = mul i64 %ext1, %ext2
  %res = add i64 %acc, %prod

  ret i64 %res
}

define i64 @test_smsubl(i64 %acc, i32 %val1, i32 %val2) {

  %ext1 = sext i32 %val1 to i64
  %ext2 = sext i32 %val2 to i64
  %prod = mul i64 %ext1, %ext2
  %res = sub i64 %acc, %prod

  ret i64 %res
}

define i64 @test_umaddl(i64 %acc, i32 %val1, i32 %val2) {

  %ext1 = zext i32 %val1 to i64
  %ext2 = zext i32 %val2 to i64
  %prod = mul i64 %ext1, %ext2
  %res = add i64 %acc, %prod

  ret i64 %res
}

define i64 @test_umsubl(i64 %acc, i32 %val1, i32 %val2) {

  %ext1 = zext i32 %val1 to i64
  %ext2 = zext i32 %val2 to i64
  %prod = mul i64 %ext1, %ext2
  %res = sub i64 %acc, %prod

  ret i64 %res
}

define i64 @test_smulh(i64 %lhs, i64 %rhs) {

  %ext1 = sext i64 %lhs to i128
  %ext2 = sext i64 %rhs to i128
  %res = mul i128 %ext1, %ext2
  %high = lshr i128 %res, 64
  %val = trunc i128 %high to i64

  ret i64 %val
}

define i64 @test_umulh(i64 %lhs, i64 %rhs) {

  %ext1 = zext i64 %lhs to i128
  %ext2 = zext i64 %rhs to i128
  %res = mul i128 %ext1, %ext2
  %high = lshr i128 %res, 64
  %val = trunc i128 %high to i64

  ret i64 %val
}

define i32 @test_mul32(i32 %lhs, i32 %rhs) {

  %res = mul i32 %lhs, %rhs

  ret i32 %res
}

define i64 @test_mul64(i64 %lhs, i64 %rhs) {

  %res = mul i64 %lhs, %rhs

  ret i64 %res
}

define i32 @test_mneg32(i32 %lhs, i32 %rhs) {

  %prod = mul i32 %lhs, %rhs
  %res = sub i32 0, %prod

  ret i32 %res
}

define i64 @test_mneg64(i64 %lhs, i64 %rhs) {

  %prod = mul i64 %lhs, %rhs
  %res = sub i64 0, %prod

  ret i64 %res
}

define i64 @test_smull(i32 %lhs, i32 %rhs) {

  %ext1 = sext i32 %lhs to i64
  %ext2 = sext i32 %rhs to i64
  %res = mul i64 %ext1, %ext2

  ret i64 %res
}

define i64 @test_umull(i32 %lhs, i32 %rhs) {

  %ext1 = zext i32 %lhs to i64
  %ext2 = zext i32 %rhs to i64
  %res = mul i64 %ext1, %ext2

  ret i64 %res
}

define i64 @test_smnegl(i32 %lhs, i32 %rhs) {

  %ext1 = sext i32 %lhs to i64
  %ext2 = sext i32 %rhs to i64
  %prod = mul i64 %ext1, %ext2
  %res = sub i64 0, %prod

  ret i64 %res
}

define i64 @test_umnegl(i32 %lhs, i32 %rhs) {

  %ext1 = zext i32 %lhs to i64
  %ext2 = zext i32 %rhs to i64
  %prod = mul i64 %ext1, %ext2
  %res = sub i64 0, %prod

  ret i64 %res
}

@a = common global i32 0, align 4
@b = common global i32 0, align 4
@c = common global i32 0, align 4

define void @test_mneg(){

  %1 = load i32, i32* @a, align 4
  %2 = load i32, i32* @b, align 4
  %3 = sub i32 0, %1
  %4 = mul i32 %2, %3
  store i32 %4, i32* @c, align 4

  ret void
}
