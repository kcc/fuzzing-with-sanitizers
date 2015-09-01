

define void @test([17 x i16]* %mask_bits) {
	%P1 = getelementptr [17 x i16], [17 x i16]* %mask_bits, i64 0, i64 0
	%P2 = getelementptr [17 x i16], [17 x i16]* %mask_bits, i64 252645134, i64 0
	ret void
}
