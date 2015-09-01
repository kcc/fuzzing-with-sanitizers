

@var8 = global i8 0
@var16 = global i16 0
@var32 = global i32 0
@var64 = global i64 0

define i8* @global_addr() {

  ret i8* @var8
  





}

define i8 @global_i8() {

  %val = load i8, i8* @var8
  ret i8 %val





}

define i16 @global_i16() {

  %val = load i16, i16* @var16
  ret i16 %val





}

define i32 @global_i32() {

  %val = load i32, i32* @var32
  ret i32 %val





}

define i64 @global_i64() {

  %val = load i64, i64* @var64
  ret i64 %val





}

define <2 x i64> @constpool() {

  ret <2 x i64> <i64 123456789, i64 987654321100>






}
