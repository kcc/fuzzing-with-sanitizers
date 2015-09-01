

define float @test1(float %A, float %B) {



	%W = fadd fast float %B, -5.0
	%Y = fadd fast float %A, 5.0
	%Z = fadd fast float %W, %Y
	ret float %Z
}
