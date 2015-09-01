

@var32 = global i32 0
@var64 = global i64 0

define void @test_and(i32 %in32, i64 %in64) {


  %val0 = and i32 %in32, 2863311530
  store volatile i32 %val0, i32* @var32


  %val1 = and i32 %in32, 4293984240
  store volatile i32 %val1, i32* @var32


  %val2 = and i64 %in64, 9331882296111890817
  store volatile i64 %val2, i64* @var64


  %val3 = and i64 %in64, 18429855317404942275
  store volatile i64 %val3, i64* @var64


  ret void
}

define void @test_orr(i32 %in32, i64 %in64) {


  %val0 = or i32 %in32, 2863311530
  store volatile i32 %val0, i32* @var32


  %val1 = or i32 %in32, 4293984240
  store volatile i32 %val1, i32* @var32


  %val2 = or i64 %in64, 9331882296111890817
  store volatile i64 %val2, i64* @var64


  %val3 = or i64 %in64, 18429855317404942275
  store volatile i64 %val3, i64* @var64


  ret void
}

define void @test_eor(i32 %in32, i64 %in64) {


  %val0 = xor i32 %in32, 2863311530
  store volatile i32 %val0, i32* @var32


  %val1 = xor i32 %in32, 4293984240
  store volatile i32 %val1, i32* @var32


  %val2 = xor i64 %in64, 9331882296111890817
  store volatile i64 %val2, i64* @var64


  %val3 = xor i64 %in64, 18429855317404942275
  store volatile i64 %val3, i64* @var64


  ret void
}

define void @test_mov(i32 %in32, i64 %in64) {

  %val0 = add i32 %in32, 2863311530
  store i32 %val0, i32* @var32


  %val1 = add i64 %in64, 11068046444225730969
  store i64 %val1, i64* @var64


  ret void

}
