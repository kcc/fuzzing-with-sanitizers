

define i32 @test1(i32 %A, i32 %B) {



	%W = add i32 %B, -5
	%Y = add i32 %A, 5
	%Z = add i32 %W, %Y
	ret i32 %Z
}
