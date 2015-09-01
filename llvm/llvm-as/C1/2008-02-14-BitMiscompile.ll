
define i32 @test(i1 %A) {
	%B = zext i1 %A to i32		
	%C = sub i32 0, %B		
	%D = and i32 %C, 255		
	ret i32 %D
}

