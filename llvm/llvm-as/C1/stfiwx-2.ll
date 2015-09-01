

define void @test(float %F, i8* %P) {
	%I = fptosi float %F to i32
	%X = trunc i32 %I to i8
	store i8 %X, i8* %P
	ret void





}

