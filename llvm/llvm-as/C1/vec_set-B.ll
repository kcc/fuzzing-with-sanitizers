











define <2 x i64> @test3(i64 %arg) nounwind {
entry:
        %A = and i64 %arg, 1234567
        %B = insertelement <2 x i64> zeroinitializer, i64 %A, i32 0
        ret <2 x i64> %B
}

define <2 x i64> @test2(i64 %arg) nounwind {
entry:
	%A = and i64 %arg, 1234567
	%B = insertelement <2 x i64> undef, i64 %A, i32 0
	ret <2 x i64> %B
}

