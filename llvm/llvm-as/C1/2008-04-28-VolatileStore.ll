

define void @test() {
	%votf = alloca <4 x float>		
	store volatile <4 x float> zeroinitializer, <4 x float>* %votf, align 16
	ret void
}

