


define float @test1(i32 %x) nounwind readnone {













entry:
	%0 = uitofp i32 %x to float
	ret float %0
}


define float @test2(<4 x i32> %x) nounwind readnone ssp {














entry:
  %vecext = extractelement <4 x i32> %x, i32 0
  %conv = uitofp i32 %vecext to float
  ret float %conv
}
