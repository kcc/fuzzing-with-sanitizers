




define float @test(float %a, float %b) {
entry:
        %dum = fadd float %a, %b
	%0 = tail call float @fabsf(float %dum) readnone
        %dum1 = fadd float %0, %b
	ret float %dum1
}

declare float @fabsf(float)















