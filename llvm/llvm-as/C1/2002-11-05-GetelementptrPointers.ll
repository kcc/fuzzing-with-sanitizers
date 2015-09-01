





define void @test({i32, i32*} * %X) {
	getelementptr {i32, i32*}, {i32, i32*} * %X, i32 0, i32 1, i32 0
	ret void
}
