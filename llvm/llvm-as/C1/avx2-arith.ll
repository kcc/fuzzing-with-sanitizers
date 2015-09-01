


define <4 x i64> @test_vpaddq(<4 x i64> %i, <4 x i64> %j) nounwind readnone {
  %x = add <4 x i64> %i, %j
  ret <4 x i64> %x
}


define <8 x i32> @test_vpaddd(<8 x i32> %i, <8 x i32> %j) nounwind readnone {
  %x = add <8 x i32> %i, %j
  ret <8 x i32> %x
}


define <16 x i16> @test_vpaddw(<16 x i16> %i, <16 x i16> %j) nounwind readnone {
  %x = add <16 x i16> %i, %j
  ret <16 x i16> %x
}


define <32 x i8> @test_vpaddb(<32 x i8> %i, <32 x i8> %j) nounwind readnone {
  %x = add <32 x i8> %i, %j
  ret <32 x i8> %x
}


define <4 x i64> @test_vpsubq(<4 x i64> %i, <4 x i64> %j) nounwind readnone {
  %x = sub <4 x i64> %i, %j
  ret <4 x i64> %x
}


define <8 x i32> @test_vpsubd(<8 x i32> %i, <8 x i32> %j) nounwind readnone {
  %x = sub <8 x i32> %i, %j
  ret <8 x i32> %x
}


define <16 x i16> @test_vpsubw(<16 x i16> %i, <16 x i16> %j) nounwind readnone {
  %x = sub <16 x i16> %i, %j
  ret <16 x i16> %x
}


define <32 x i8> @test_vpsubb(<32 x i8> %i, <32 x i8> %j) nounwind readnone {
  %x = sub <32 x i8> %i, %j
  ret <32 x i8> %x
}


define <8 x i32> @test_vpmulld(<8 x i32> %i, <8 x i32> %j) nounwind readnone {
  %x = mul <8 x i32> %i, %j
  ret <8 x i32> %x
}


define <16 x i16> @test_vpmullw(<16 x i16> %i, <16 x i16> %j) nounwind readnone {
  %x = mul <16 x i16> %i, %j
  ret <16 x i16> %x
}













define <16 x i8> @mul-v16i8(<16 x i8> %i, <16 x i8> %j) nounwind readnone {
  %x = mul <16 x i8> %i, %j
  ret <16 x i8> %x
}






















define <32 x i8> @mul-v32i8(<32 x i8> %i, <32 x i8> %j) nounwind readnone {
  %x = mul <32 x i8> %i, %j
  ret <32 x i8> %x
}











define <4 x i64> @mul-v4i64(<4 x i64> %i, <4 x i64> %j) nounwind readnone {
  %x = mul <4 x i64> %i, %j
  ret <4 x i64> %x
}




define <8 x i32> @mul_const1(<8 x i32> %x) {
  %y = mul <8 x i32> %x, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  ret <8 x i32> %y
}




define <4 x i64> @mul_const2(<4 x i64> %x) {
  %y = mul <4 x i64> %x, <i64 4, i64 4, i64 4, i64 4>
  ret <4 x i64> %y
}




define <16 x i16> @mul_const3(<16 x i16> %x) {
  %y = mul <16 x i16> %x, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  ret <16 x i16> %y
}





define <4 x i64> @mul_const4(<4 x i64> %x) {
  %y = mul <4 x i64> %x, <i64 -1, i64 -1, i64 -1, i64 -1>
  ret <4 x i64> %y
}




define <8 x i32> @mul_const5(<8 x i32> %x) {
  %y = mul <8 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i32> %y
}




define <8 x i32> @mul_const6(<8 x i32> %x) {
  %y = mul <8 x i32> %x, <i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 0>
  ret <8 x i32> %y
}





define <8 x i64> @mul_const7(<8 x i64> %x) {
  %y = mul <8 x i64> %x, <i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2>
  ret <8 x i64> %y
}




define <8 x i16> @mul_const8(<8 x i16> %x) {
  %y = mul <8 x i16> %x, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  ret <8 x i16> %y
}




define <8 x i32> @mul_const9(<8 x i32> %x) {
  %y = mul <8 x i32> %x, <i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i32> %y
}




define <4 x i32> @mul_const10(<4 x i32> %x) {
  
  %m = mul <4 x i32> %x, <i32 16843009, i32 16843009, i32 16843009, i32 16843009>
  ret <4 x i32> %m
}




define <4 x i32> @mul_const11(<4 x i32> %x) {
  
  %m = mul <4 x i32> %x, <i32 2155905152, i32 2155905152, i32 2155905152, i32 2155905152>
  ret <4 x i32> %m
}
