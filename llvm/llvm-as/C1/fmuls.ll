

















define float @test(float %a, float %b) {
entry:
	%0 = fmul float %a, %b
	ret float %0
}

















define float @test2(float %a) nounwind {


  %ret = fmul float %a, 1.0
  ret float %ret
}

