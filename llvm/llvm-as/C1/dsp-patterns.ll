





define zeroext i8 @test_lbux(i8* nocapture %b, i32 %i) {
entry:
  %add.ptr = getelementptr inbounds i8, i8* %b, i32 %i
  %0 = load i8, i8* %add.ptr, align 1
  ret i8 %0
}




define signext i16 @test_lhx(i16* nocapture %b, i32 %i) {
entry:
  %add.ptr = getelementptr inbounds i16, i16* %b, i32 %i
  %0 = load i16, i16* %add.ptr, align 2
  ret i16 %0
}




define i32 @test_lwx(i32* nocapture %b, i32 %i) {
entry:
  %add.ptr = getelementptr inbounds i32, i32* %b, i32 %i
  %0 = load i32, i32* %add.ptr, align 4
  ret i32 %0
}




define { i32 } @test_add_v2q15_(i32 %a.coerce, i32 %b.coerce) {
entry:
  %0 = bitcast i32 %a.coerce to <2 x i16>
  %1 = bitcast i32 %b.coerce to <2 x i16>
  %add = add <2 x i16> %0, %1
  %2 = bitcast <2 x i16> %add to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %2, 0
  ret { i32 } %.fca.0.insert
}




define { i32 } @test_sub_v2q15_(i32 %a.coerce, i32 %b.coerce) {
entry:
  %0 = bitcast i32 %a.coerce to <2 x i16>
  %1 = bitcast i32 %b.coerce to <2 x i16>
  %sub = sub <2 x i16> %0, %1
  %2 = bitcast <2 x i16> %sub to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %2, 0
  ret { i32 } %.fca.0.insert
}









define { i32 } @test_mul_v2q15_(i32 %a.coerce, i32 %b.coerce) {
entry:
  %0 = bitcast i32 %a.coerce to <2 x i16>
  %1 = bitcast i32 %b.coerce to <2 x i16>
  %mul = mul <2 x i16> %0, %1
  %2 = bitcast <2 x i16> %mul to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %2, 0
  ret { i32 } %.fca.0.insert
}




define { i32 } @test_add_v4i8_(i32 %a.coerce, i32 %b.coerce) {
entry:
  %0 = bitcast i32 %a.coerce to <4 x i8>
  %1 = bitcast i32 %b.coerce to <4 x i8>
  %add = add <4 x i8> %0, %1
  %2 = bitcast <4 x i8> %add to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %2, 0
  ret { i32 } %.fca.0.insert
}




define { i32 } @test_sub_v4i8_(i32 %a.coerce, i32 %b.coerce) {
entry:
  %0 = bitcast i32 %a.coerce to <4 x i8>
  %1 = bitcast i32 %b.coerce to <4 x i8>
  %sub = sub <4 x i8> %0, %1
  %2 = bitcast <4 x i8> %sub to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %2, 0
  ret { i32 } %.fca.0.insert
}








define { i32 } @test_mul_v4i8_(i32 %a.coerce, i32 %b.coerce) {
entry:
  %0 = bitcast i32 %a.coerce to <4 x i8>
  %1 = bitcast i32 %b.coerce to <4 x i8>
  %mul = mul <4 x i8> %0, %1
  %2 = bitcast <4 x i8> %mul to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %2, 0
  ret { i32 } %.fca.0.insert
}





define i64 @test_addsc(i64 %a, i64 %b) {
entry:
  %add = add nsw i64 %b, %a
  ret i64 %add
}




define { i32 } @shift1_v2i16_shl_(i32 %a0.coerce) {
entry:
  %0 = bitcast i32 %a0.coerce to <2 x i16>
  %shl = shl <2 x i16> %0, <i16 15, i16 15>
  %1 = bitcast <2 x i16> %shl to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %1, 0
  ret { i32 } %.fca.0.insert
}




define { i32 } @shift1_v2i16_sra_(i32 %a0.coerce) {
entry:
  %0 = bitcast i32 %a0.coerce to <2 x i16>
  %shr = ashr <2 x i16> %0, <i16 15, i16 15>
  %1 = bitcast <2 x i16> %shr to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %1, 0
  ret { i32 } %.fca.0.insert
}






define { i32 } @shift1_v2ui16_srl_(i32 %a0.coerce) {
entry:
  %0 = bitcast i32 %a0.coerce to <2 x i16>
  %shr = lshr <2 x i16> %0, <i16 15, i16 15>
  %1 = bitcast <2 x i16> %shr to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %1, 0
  ret { i32 } %.fca.0.insert
}




define { i32 } @shift1_v4i8_shl_(i32 %a0.coerce) {
entry:
  %0 = bitcast i32 %a0.coerce to <4 x i8>
  %shl = shl <4 x i8> %0, <i8 7, i8 7, i8 7, i8 7>
  %1 = bitcast <4 x i8> %shl to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %1, 0
  ret { i32 } %.fca.0.insert
}






define { i32 } @shift1_v4i8_sra_(i32 %a0.coerce) {
entry:
  %0 = bitcast i32 %a0.coerce to <4 x i8>
  %shr = ashr <4 x i8> %0, <i8 7, i8 7, i8 7, i8 7>
  %1 = bitcast <4 x i8> %shr to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %1, 0
  ret { i32 } %.fca.0.insert
}




define { i32 } @shift1_v4ui8_srl_(i32 %a0.coerce) {
entry:
  %0 = bitcast i32 %a0.coerce to <4 x i8>
  %shr = lshr <4 x i8> %0, <i8 7, i8 7, i8 7, i8 7>
  %1 = bitcast <4 x i8> %shr to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %1, 0
  ret { i32 } %.fca.0.insert
}






define { i32 } @test_vector_splat_imm_v2q15(i32 %a.coerce) {
entry:
  %0 = bitcast i32 %a.coerce to <2 x i16>
  %shl = shl <2 x i16> %0, <i16 0, i16 2>
  %1 = bitcast <2 x i16> %shl to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %1, 0
  ret { i32 } %.fca.0.insert
}






define { i32 } @test_vector_splat_imm_v4i8(i32 %a.coerce) {
entry:
  %0 = bitcast i32 %a.coerce to <4 x i8>
  %shl = shl <4 x i8> %0, <i8 0, i8 2, i8 0, i8 2>
  %1 = bitcast <4 x i8> %shl to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %1, 0
  ret { i32 } %.fca.0.insert
}






define { i32 } @test_shift_amount_v2q15(i32 %a.coerce) {
entry:
  %0 = bitcast i32 %a.coerce to <2 x i16>
  %shl = shl <2 x i16> %0, <i16 16, i16 16>
  %1 = bitcast <2 x i16> %shl to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %1, 0
  ret { i32 } %.fca.0.insert
}






define { i32 } @test_shift_amount_v4i8(i32 %a.coerce) {
entry:
  %0 = bitcast i32 %a.coerce to <4 x i8>
  %shl = shl <4 x i8> %0, <i8 8, i8 8, i8 8, i8 8>
  %1 = bitcast <4 x i8> %shl to i32
  %.fca.0.insert = insertvalue { i32 } undef, i32 %1, 0
  ret { i32 } %.fca.0.insert
}
