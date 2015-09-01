


define internal i32 @test(i32 %A, ...) { 
	ret i32 %A
}

define i32 @foo() {
	%A = call i32(i32, ...) @test(i32 1)
	ret i32 %A
}

