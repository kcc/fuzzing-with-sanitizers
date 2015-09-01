




define arm_aapcs_vfpcc float @test1(float %a, float %b) nounwind {

entry:
	%0 = fmul float %a, %b
        %1 = fsub float -0.0, %0
	ret float %1
}

define arm_aapcs_vfpcc float @test2(float %a, float %b) nounwind {

entry:
	%0 = fmul float %a, %b
        %1 = fmul float -1.0, %0
	ret float %1
}

