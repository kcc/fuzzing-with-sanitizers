



define <16 x i8> @v16i8_icmp_uge(<16 x i8> %a, <16 x i8> %b) nounwind readnone ssp uwtable {
  %1 = icmp uge <16 x i8> %a, %b
  %2 = sext <16 x i1> %1 to <16 x i8>
  ret <16 x i8> %2











}

define <16 x i8> @v16i8_icmp_ule(<16 x i8> %a, <16 x i8> %b) nounwind readnone ssp uwtable {
  %1 = icmp ule <16 x i8> %a, %b
  %2 = sext <16 x i1> %1 to <16 x i8>
  ret <16 x i8> %2











}


define <8 x i16> @v8i16_icmp_uge(<8 x i16> %a, <8 x i16> %b) nounwind readnone ssp uwtable {
  %1 = icmp uge <8 x i16> %a, %b
  %2 = sext <8 x i1> %1 to <8 x i16>
  ret <8 x i16> %2












}

define <8 x i16> @v8i16_icmp_ule(<8 x i16> %a, <8 x i16> %b) nounwind readnone ssp uwtable {
  %1 = icmp ule <8 x i16> %a, %b
  %2 = sext <8 x i1> %1 to <8 x i16>
  ret <8 x i16> %2












}


define <4 x i32> @v4i32_icmp_uge(<4 x i32> %a, <4 x i32> %b) nounwind readnone ssp uwtable {
  %1 = icmp uge <4 x i32> %a, %b
  %2 = sext <4 x i1> %1 to <4 x i32>
  ret <4 x i32> %2















}

define <4 x i32> @v4i32_icmp_ule(<4 x i32> %a, <4 x i32> %b) nounwind readnone ssp uwtable {
  %1 = icmp ule <4 x i32> %a, %b
  %2 = sext <4 x i1> %1 to <4 x i32>
  ret <4 x i32> %2















}




define <16 x i8> @test_setcc_constfold_vi8(<16 x i8> %l, <16 x i8> %r) {
  %test1 = icmp eq <16 x i8> %l, %r
  %mask1 = sext <16 x i1> %test1 to <16 x i8>

  %test2 = icmp ne <16 x i8> %l, %r
  %mask2 = sext <16 x i1> %test2 to <16 x i8>

  %res = or <16 x i8> %mask1, %mask2
  ret <16 x i8> %res








}


define <16 x i8> @test_setcc_constfold_vi1(<16 x i8> %l, <16 x i8> %r) {
  %test1 = icmp eq <16 x i8> %l, %r
  %test2 = icmp ne <16 x i8> %l, %r

  %res = or <16 x i1> %test1, %test2
  %mask = sext <16 x i1> %res to <16 x i8>
  ret <16 x i8> %mask








}




define <2 x i64> @test_setcc_constfold_vi64(<2 x i64> %l, <2 x i64> %r) {
  %test1 = icmp eq <2 x i64> %l, %r
  %mask1 = sext <2 x i1> %test1 to <2 x i64>

  %test2 = icmp ne <2 x i64> %l, %r
  %mask2 = sext <2 x i1> %test2 to <2 x i64>

  %res = or <2 x i64> %mask1, %mask2
  ret <2 x i64> %res








}
