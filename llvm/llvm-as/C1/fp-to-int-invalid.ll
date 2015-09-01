

define void @test_cast_float_to_char(i8* %result) nounwind {
entry:
	%result_addr = alloca i8*		
	%test = alloca float		
	%"alloca point" = bitcast i32 0 to i32		
	store i8* %result, i8** %result_addr
	store float 0x40B2AFA160000000, float* %test, align 4
	%0 = load float, float* %test, align 4		
	%1 = fptosi float %0 to i8		
	%2 = load i8*, i8** %result_addr, align 4		
	store i8 %1, i8* %2, align 1
	br label %return

return:		
	ret void
}
