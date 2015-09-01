



define <2 x i64> @test1(<2 x i64> %A, <2 x i64> %B) nounwind {










	%C = icmp sgt <2 x i64> %A, %B
  %D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}

define <2 x i64> @test2(<2 x i64> %A, <2 x i64> %B) nounwind {










	%C = icmp eq <2 x i64> %A, %B
  %D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}
