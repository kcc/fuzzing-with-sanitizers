



define void @test1(<2 x float> %Q, float *%P2) nounwind {














  %a = extractelement <2 x float> %Q, i32 0
  %b = extractelement <2 x float> %Q, i32 1
  %c = fadd float %a, %b
  store float %c, float* %P2
  ret void
}

define <2 x float> @test2(<2 x float> %Q, <2 x float> %R, <2 x float> *%P) nounwind {









  %Z = fadd <2 x float> %Q, %R
  ret <2 x float> %Z
}

define <2 x float> @test3(<4 x float> %A) nounwind {









	%B = shufflevector <4 x float> %A, <4 x float> undef, <2 x i32> <i32 0, i32 1>
	%C = fadd <2 x float> %B, %B
	ret <2 x float> %C
}

define <2 x float> @test4(<2 x float> %A) nounwind {









	%C = fadd <2 x float> %A, %A
	ret <2 x float> %C
}

define <4 x float> @test5(<4 x float> %A) nounwind {











	%B = shufflevector <4 x float> %A, <4 x float> undef, <2 x i32> <i32 0, i32 1>
	%C = fadd <2 x float> %B, %B
  br label %BB

BB:
  %D = fadd <2 x float> %C, %C
	%E = shufflevector <2 x float> %D, <2 x float> undef, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
	ret <4 x float> %E
}


