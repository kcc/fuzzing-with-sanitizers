

define void @test({[2 x i32],[2 x i32]}* %A, i64 %X, i64 %Y) {
	%P1 = getelementptr {[2 x i32],[2 x i32]}, {[2 x i32],[2 x i32]}* %A, i64 0, i32 0, i64 %X
	%P2 = getelementptr {[2 x i32],[2 x i32]}, {[2 x i32],[2 x i32]}* %A, i64 0, i32 1, i64 %Y
	ret void
}
