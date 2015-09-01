



define zeroext i16 @asr_zext_i1_i16(i1 %b) {
  %1 = zext i1 %b to i16
  %2 = ashr i16 %1, 1
  ret i16 %2
}




define signext i16 @asr_sext_i1_i16(i1 %b) {
  %1 = sext i1 %b to i16
  %2 = ashr i16 %1, 1
  ret i16 %2
}



define i32 @asr_zext_i1_i32(i1 %b) {
  %1 = zext i1 %b to i32
  %2 = ashr i32 %1, 1
  ret i32 %2
}



define i32 @asr_sext_i1_i32(i1 %b) {
  %1 = sext i1 %b to i32
  %2 = ashr i32 %1, 1
  ret i32 %2
}



define i64 @asr_zext_i1_i64(i1 %b) {
  %1 = zext i1 %b to i64
  %2 = ashr i64 %1, 1
  ret i64 %2
}



define i64 @asr_sext_i1_i64(i1 %b) {
  %1 = sext i1 %b to i64
  %2 = ashr i64 %1, 1
  ret i64 %2
}



define zeroext i16 @lsr_zext_i1_i16(i1 %b) {
  %1 = zext i1 %b to i16
  %2 = lshr i16 %1, 1
  ret i16 %2
}





define signext i16 @lsr_sext_i1_i16(i1 %b) {
  %1 = sext i1 %b to i16
  %2 = lshr i16 %1, 1
  ret i16 %2
}



define i32 @lsr_zext_i1_i32(i1 %b) {
  %1 = zext i1 %b to i32
  %2 = lshr i32 %1, 1
  ret i32 %2
}




define i32 @lsr_sext_i1_i32(i1 %b) {
  %1 = sext i1 %b to i32
  %2 = lshr i32 %1, 1
  ret i32 %2
}



define i64 @lsr_zext_i1_i64(i1 %b) {
  %1 = zext i1 %b to i64
  %2 = lshr i64 %1, 1
  ret i64 %2
}



define zeroext i16 @lsl_zext_i1_i16(i1 %b) {
  %1 = zext i1 %b to i16
  %2 = shl i16 %1, 4
  ret i16 %2
}



define signext i16 @lsl_sext_i1_i16(i1 %b) {
  %1 = sext i1 %b to i16
  %2 = shl i16 %1, 4
  ret i16 %2
}



define i32 @lsl_zext_i1_i32(i1 %b) {
  %1 = zext i1 %b to i32
  %2 = shl i32 %1, 4
  ret i32 %2
}



define i32 @lsl_sext_i1_i32(i1 %b) {
  %1 = sext i1 %b to i32
  %2 = shl i32 %1, 4
  ret i32 %2
}



define i64 @lsl_zext_i1_i64(i1 %b) {
  %1 = zext i1 %b to i64
  %2 = shl i64 %1, 4
  ret i64 %2
}



define i64 @lsl_sext_i1_i64(i1 %b) {
  %1 = sext i1 %b to i64
  %2 = shl i64 %1, 4
  ret i64 %2
}





define zeroext i8 @lslv_i8(i8 %a, i8 %b) {
  %1 = shl i8 %a, %b
  ret i8 %1
}



define zeroext i8 @lsl_i8(i8 %a) {
  %1 = shl i8 %a, 4
  ret i8 %1
}



define zeroext i16 @lsl_zext_i8_i16(i8 %b) {
  %1 = zext i8 %b to i16
  %2 = shl i16 %1, 4
  ret i16 %2
}



define signext i16 @lsl_sext_i8_i16(i8 %b) {
  %1 = sext i8 %b to i16
  %2 = shl i16 %1, 4
  ret i16 %2
}



define i32 @lsl_zext_i8_i32(i8 %b) {
  %1 = zext i8 %b to i32
  %2 = shl i32 %1, 4
  ret i32 %2
}



define i32 @lsl_sext_i8_i32(i8 %b) {
  %1 = sext i8 %b to i32
  %2 = shl i32 %1, 4
  ret i32 %2
}



define i64 @lsl_zext_i8_i64(i8 %b) {
  %1 = zext i8 %b to i64
  %2 = shl i64 %1, 4
  ret i64 %2
}



define i64 @lsl_sext_i8_i64(i8 %b) {
  %1 = sext i8 %b to i64
  %2 = shl i64 %1, 4
  ret i64 %2
}





define zeroext i16 @lslv_i16(i16 %a, i16 %b) {
  %1 = shl i16 %a, %b
  ret i16 %1
}



define zeroext i16 @lsl_i16(i16 %a) {
  %1 = shl i16 %a, 8
  ret i16 %1
}



define i32 @lsl_zext_i16_i32(i16 %b) {
  %1 = zext i16 %b to i32
  %2 = shl i32 %1, 8
  ret i32 %2
}



define i32 @lsl_sext_i16_i32(i16 %b) {
  %1 = sext i16 %b to i32
  %2 = shl i32 %1, 8
  ret i32 %2
}



define i64 @lsl_zext_i16_i64(i16 %b) {
  %1 = zext i16 %b to i64
  %2 = shl i64 %1, 8
  ret i64 %2
}



define i64 @lsl_sext_i16_i64(i16 %b) {
  %1 = sext i16 %b to i64
  %2 = shl i64 %1, 8
  ret i64 %2
}



define zeroext i32 @lslv_i32(i32 %a, i32 %b) {
  %1 = shl i32 %a, %b
  ret i32 %1
}



define zeroext i32 @lsl_i32(i32 %a) {
  %1 = shl i32 %a, 16
  ret i32 %1
}



define i64 @lsl_zext_i32_i64(i32 %b) {
  %1 = zext i32 %b to i64
  %2 = shl i64 %1, 16
  ret i64 %2
}



define i64 @lsl_sext_i32_i64(i32 %b) {
  %1 = sext i32 %b to i64
  %2 = shl i64 %1, 16
  ret i64 %2
}



define i64 @lslv_i64(i64 %a, i64 %b) {
  %1 = shl i64 %a, %b
  ret i64 %1
}



define i64 @lsl_i64(i64 %a) {
  %1 = shl i64 %a, 32
  ret i64 %1
}






define zeroext i8 @lsrv_i8(i8 %a, i8 %b) {
  %1 = lshr i8 %a, %b
  ret i8 %1
}



define zeroext i8 @lsr_i8(i8 %a) {
  %1 = lshr i8 %a, 4
  ret i8 %1
}



define zeroext i16 @lsr_zext_i8_i16(i8 %b) {
  %1 = zext i8 %b to i16
  %2 = lshr i16 %1, 4
  ret i16 %2
}




define signext i16 @lsr_sext_i8_i16(i8 %b) {
  %1 = sext i8 %b to i16
  %2 = lshr i16 %1, 4
  ret i16 %2
}



define i32 @lsr_zext_i8_i32(i8 %b) {
  %1 = zext i8 %b to i32
  %2 = lshr i32 %1, 4
  ret i32 %2
}




define i32 @lsr_sext_i8_i32(i8 %b) {
  %1 = sext i8 %b to i32
  %2 = lshr i32 %1, 4
  ret i32 %2
}






define zeroext i16 @lsrv_i16(i16 %a, i16 %b) {
  %1 = lshr i16 %a, %b
  ret i16 %1
}



define zeroext i16 @lsr_i16(i16 %a) {
  %1 = lshr i16 %a, 8
  ret i16 %1
}



define zeroext i32 @lsrv_i32(i32 %a, i32 %b) {
  %1 = lshr i32 %a, %b
  ret i32 %1
}



define zeroext i32 @lsr_i32(i32 %a) {
  %1 = lshr i32 %a, 16
  ret i32 %1
}



define i64 @lsrv_i64(i64 %a, i64 %b) {
  %1 = lshr i64 %a, %b
  ret i64 %1
}



define i64 @lsr_i64(i64 %a) {
  %1 = lshr i64 %a, 32
  ret i64 %1
}






define zeroext i8 @asrv_i8(i8 %a, i8 %b) {
  %1 = ashr i8 %a, %b
  ret i8 %1
}



define zeroext i8 @asr_i8(i8 %a) {
  %1 = ashr i8 %a, 4
  ret i8 %1
}



define zeroext i16 @asr_zext_i8_i16(i8 %b) {
  %1 = zext i8 %b to i16
  %2 = ashr i16 %1, 4
  ret i16 %2
}



define signext i16 @asr_sext_i8_i16(i8 %b) {
  %1 = sext i8 %b to i16
  %2 = ashr i16 %1, 4
  ret i16 %2
}



define i32 @asr_zext_i8_i32(i8 %b) {
  %1 = zext i8 %b to i32
  %2 = ashr i32 %1, 4
  ret i32 %2
}



define i32 @asr_sext_i8_i32(i8 %b) {
  %1 = sext i8 %b to i32
  %2 = ashr i32 %1, 4
  ret i32 %2
}






define zeroext i16 @asrv_i16(i16 %a, i16 %b) {
  %1 = ashr i16 %a, %b
  ret i16 %1
}



define zeroext i16 @asr_i16(i16 %a) {
  %1 = ashr i16 %a, 8
  ret i16 %1
}



define zeroext i32 @asrv_i32(i32 %a, i32 %b) {
  %1 = ashr i32 %a, %b
  ret i32 %1
}



define zeroext i32 @asr_i32(i32 %a) {
  %1 = ashr i32 %a, 16
  ret i32 %1
}



define i64 @asrv_i64(i64 %a, i64 %b) {
  %1 = ashr i64 %a, %b
  ret i64 %1
}



define i64 @asr_i64(i64 %a) {
  %1 = ashr i64 %a, 32
  ret i64 %1
}




define i32 @shift_test1(i8 %a) {
  %1 = shl i8 %a, 4
  %2 = ashr i8 %1, 4
  %3 = sext i8 %2 to i32
  ret i32 %3
}





define i32 @shl_zero(i32 %a) {
  %1 = shl i32 %a, 0
  ret i32 %1
}



define i32 @lshr_zero(i32 %a) {
  %1 = lshr i32 %a, 0
  ret i32 %1
}



define i32 @ashr_zero(i32 %a) {
  %1 = ashr i32 %a, 0
  ret i32 %1
}



define i64 @shl_zext_zero(i32 %a) {
  %1 = zext i32 %a to i64
  %2 = shl i64 %1, 0
  ret i64 %2
}



define i64 @lshr_zext_zero(i32 %a) {
  %1 = zext i32 %a to i64
  %2 = lshr i64 %1, 0
  ret i64 %2
}



define i64 @ashr_zext_zero(i32 %a) {
  %1 = zext i32 %a to i64
  %2 = ashr i64 %1, 0
  ret i64 %2
}

