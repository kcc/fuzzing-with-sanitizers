

define <4 x i3> @test1(<4 x i3>* %in) nounwind {


















  %ret = load <4 x i3>, <4 x i3>* %in, align 1
  ret <4 x i3> %ret
}

define <4 x i1> @test2(<4 x i1>* %in) nounwind {


















  %ret = load <4 x i1>, <4 x i1>* %in, align 1
  ret <4 x i1> %ret
}

define <4 x i64> @test3(<4 x i1>* %in) nounwind {























  %wide.load35 = load <4 x i1>, <4 x i1>* %in, align 1
  %sext = sext <4 x i1> %wide.load35 to <4 x i64>
  ret <4 x i64> %sext
}

define <16 x i4> @test4(<16 x i4>* %in) nounwind {
































































  %ret = load <16 x i4>, <16 x i4>* %in, align 1
  ret <16 x i4> %ret
}
