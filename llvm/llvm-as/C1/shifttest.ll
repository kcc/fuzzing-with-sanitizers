




define i32 @test(i32 %A, i32 %B) {
	%X = shl i32 %A, 5		
	%Y = shl i32 %A, 4		
	%Z = mul i32 %Y, %X		
	ret i32 %Z
}

