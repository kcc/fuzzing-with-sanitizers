




@var8 = external global i8, align 1
@var16 = external global i16, align 2
@var32 = external global i32, align 4
@var64 = external global i64, align 8

define i8 @test_i8(i8 %new) {
  %val = load i8, i8* @var8, align 1
  store i8 %new, i8* @var8
  ret i8 %val
















}

define i16 @test_i16(i16 %new) {
  %val = load i16, i16* @var16, align 2
  store i16 %new, i16* @var16
  ret i16 %val







}

define i32 @test_i32(i32 %new) {
  %val = load i32, i32* @var32, align 4
  store i32 %new, i32* @var32
  ret i32 %val







}

define i64 @test_i64(i64 %new) {
  %val = load i64, i64* @var64, align 8
  store i64 %new, i64* @var64
  ret i64 %val







}

define i64* @test_addr() {
  ret i64* @var64






}

@hiddenvar = hidden global i32 0, align 4
@protectedvar = protected global i32 0, align 4

define i32 @test_vis() {
  %lhs = load i32, i32* @hiddenvar, align 4
  %rhs = load i32, i32* @protectedvar, align 4
  %ret = add i32 %lhs, %rhs
  ret i32 %ret




}

@var_default = external global [2 x i32]

define i32 @test_default_align() {
  %addr = getelementptr [2 x i32], [2 x i32]* @var_default, i32 0, i32 0
  %val = load i32, i32* %addr
  ret i32 %val



}

define i64 @test_default_unaligned() {
  %addr = bitcast [2 x i32]* @var_default to i64*
  %val = load i64, i64* %addr
  ret i64 %val




}
