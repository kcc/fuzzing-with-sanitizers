


define <4 x i32> @test1(<4 x i32> %A, <4 x i32> %B) nounwind {




	%C = icmp sgt <4 x i32> %A, %B
        %D = sext <4 x i1> %C to <4 x i32>
	ret <4 x i32> %D
}

define <4 x i32> @test2(<4 x i32> %A, <4 x i32> %B) nounwind {





	%C = icmp sge <4 x i32> %A, %B
        %D = sext <4 x i1> %C to <4 x i32>
	ret <4 x i32> %D
}

define <4 x i32> @test3(<4 x i32> %A, <4 x i32> %B) nounwind {




	%C = icmp slt <4 x i32> %A, %B
        %D = sext <4 x i1> %C to <4 x i32>
	ret <4 x i32> %D
}

define <4 x i32> @test4(<4 x i32> %A, <4 x i32> %B) nounwind {




	%C = icmp ugt <4 x i32> %A, %B
        %D = sext <4 x i1> %C to <4 x i32>
	ret <4 x i32> %D
}

define <2 x i64> @test5(<2 x i64> %A, <2 x i64> %B) nounwind {





	%C = icmp eq <2 x i64> %A, %B
	%D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}

define <2 x i64> @test6(<2 x i64> %A, <2 x i64> %B) nounwind {







	%C = icmp ne <2 x i64> %A, %B
	%D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}

define <2 x i64> @test7(<2 x i64> %A, <2 x i64> %B) nounwind {

















	%C = icmp sgt <2 x i64> %A, %B
	%D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}

define <2 x i64> @test8(<2 x i64> %A, <2 x i64> %B) nounwind {











	%C = icmp slt <2 x i64> %A, %B
	%D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}

define <2 x i64> @test9(<2 x i64> %A, <2 x i64> %B) nounwind {













	%C = icmp sge <2 x i64> %A, %B
	%D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}

define <2 x i64> @test10(<2 x i64> %A, <2 x i64> %B) nounwind {













	%C = icmp sle <2 x i64> %A, %B
	%D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}

define <2 x i64> @test11(<2 x i64> %A, <2 x i64> %B) nounwind {

















	%C = icmp ugt <2 x i64> %A, %B
	%D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}

define <2 x i64> @test12(<2 x i64> %A, <2 x i64> %B) nounwind {











	%C = icmp ult <2 x i64> %A, %B
	%D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}

define <2 x i64> @test13(<2 x i64> %A, <2 x i64> %B) nounwind {













	%C = icmp uge <2 x i64> %A, %B
	%D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}

define <2 x i64> @test14(<2 x i64> %A, <2 x i64> %B) nounwind {













	%C = icmp ule <2 x i64> %A, %B
	%D = sext <2 x i1> %C to <2 x i64>
	ret <2 x i64> %D
}
