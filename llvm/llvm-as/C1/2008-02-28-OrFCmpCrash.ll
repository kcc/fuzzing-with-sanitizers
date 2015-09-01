


define float @test(float %x, x86_fp80 %y) nounwind readonly  {
entry:
	%tmp67 = fcmp uno x86_fp80 %y, 0xK00000000000000000000		
	%tmp71 = fcmp uno float %x, 0.000000e+00		
	%bothcond = or i1 %tmp67, %tmp71		
	br i1 %bothcond, label %bb74, label %bb80

bb74:		
	ret float 0.000000e+00

bb80:		
	ret float 0.000000e+00
}
