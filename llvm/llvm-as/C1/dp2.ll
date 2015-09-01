

@var32_0 = global i32 0
@var32_1 = global i32 0
@var64_0 = global i64 0
@var64_1 = global i64 0

define void @rorv_i64() {

    %val0_tmp = load i64, i64* @var64_0
    %val1_tmp = load i64, i64* @var64_1
    %val2_tmp = sub i64 64, %val1_tmp
    %val3_tmp = shl i64 %val0_tmp, %val2_tmp
    %val4_tmp = lshr i64 %val0_tmp, %val1_tmp
    %val5_tmp = or i64 %val3_tmp, %val4_tmp

    store volatile i64 %val5_tmp, i64* @var64_0
    ret void
}

define void @asrv_i64() {

    %val0_tmp = load i64, i64* @var64_0
    %val1_tmp = load i64, i64* @var64_1
    %val4_tmp = ashr i64 %val0_tmp, %val1_tmp

    store volatile i64 %val4_tmp, i64* @var64_1
    ret void
}

define void @lsrv_i64() {

    %val0_tmp = load i64, i64* @var64_0
    %val1_tmp = load i64, i64* @var64_1
    %val4_tmp = lshr i64 %val0_tmp, %val1_tmp

    store volatile i64 %val4_tmp, i64* @var64_0
    ret void
}

define void @lslv_i64() {

    %val0_tmp = load i64, i64* @var64_0
    %val1_tmp = load i64, i64* @var64_1
    %val4_tmp = shl i64 %val0_tmp, %val1_tmp

    store volatile i64 %val4_tmp, i64* @var64_1
    ret void
}

define void @udiv_i64() {

    %val0_tmp = load i64, i64* @var64_0
    %val1_tmp = load i64, i64* @var64_1
    %val4_tmp = udiv i64 %val0_tmp, %val1_tmp

    store volatile i64 %val4_tmp, i64* @var64_0
    ret void
}

define void @sdiv_i64() {

    %val0_tmp = load i64, i64* @var64_0
    %val1_tmp = load i64, i64* @var64_1
    %val4_tmp = sdiv i64 %val0_tmp, %val1_tmp

    store volatile i64 %val4_tmp, i64* @var64_1
    ret void
}


define void @lsrv_i32() {

    %val0_tmp = load i32, i32* @var32_0
    %val1_tmp = load i32, i32* @var32_1
    %val2_tmp = add i32 1, %val1_tmp
    %val4_tmp = lshr i32 %val0_tmp, %val2_tmp

    store volatile i32 %val4_tmp, i32* @var32_0
    ret void
}

define void @lslv_i32() {

    %val0_tmp = load i32, i32* @var32_0
    %val1_tmp = load i32, i32* @var32_1
    %val2_tmp = add i32 1, %val1_tmp
    %val4_tmp = shl i32 %val0_tmp, %val2_tmp

    store volatile i32 %val4_tmp, i32* @var32_1
    ret void
}

define void @rorv_i32() {

    %val0_tmp = load i32, i32* @var32_0
    %val6_tmp = load i32, i32* @var32_1
    %val1_tmp = add i32 1, %val6_tmp
    %val2_tmp = sub i32 32, %val1_tmp
    %val3_tmp = shl i32 %val0_tmp, %val2_tmp
    %val4_tmp = lshr i32 %val0_tmp, %val1_tmp
    %val5_tmp = or i32 %val3_tmp, %val4_tmp

    store volatile i32 %val5_tmp, i32* @var32_0
    ret void
}

define void @asrv_i32() {

    %val0_tmp = load i32, i32* @var32_0
    %val1_tmp = load i32, i32* @var32_1
    %val2_tmp = add i32 1, %val1_tmp
    %val4_tmp = ashr i32 %val0_tmp, %val2_tmp

    store volatile i32 %val4_tmp, i32* @var32_1
    ret void
}

define void @sdiv_i32() {

    %val0_tmp = load i32, i32* @var32_0
    %val1_tmp = load i32, i32* @var32_1
    %val4_tmp = sdiv i32 %val0_tmp, %val1_tmp

    store volatile i32 %val4_tmp, i32* @var32_1
    ret void
}

define void @udiv_i32() {

    %val0_tmp = load i32, i32* @var32_0
    %val1_tmp = load i32, i32* @var32_1
    %val4_tmp = udiv i32 %val0_tmp, %val1_tmp

    store volatile i32 %val4_tmp, i32* @var32_0
    ret void
}



define i32 @test_lsl32() {


  %val = load i32, i32* @var32_0
  %ret = shl i32 1, %val


  ret i32 %ret
}

define i32 @test_lsr32() {


  %val = load i32, i32* @var32_0
  %ret = lshr i32 1, %val


  ret i32 %ret
}

define i32 @test_asr32(i32 %in) {


  %val = load i32, i32* @var32_0
  %ret = ashr i32 %in, %val


  ret i32 %ret
}
