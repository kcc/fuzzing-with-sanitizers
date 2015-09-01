

@H = common global i32 0		
@G = common global i32 0		

define i32 @test() nounwind {
entry:
	%0 = load i32, i32* @H, align 4		
	%1 = call i32 (...) @foo() nounwind		
	%2 = icmp ne i32 %1, 0		
	br i1 %2, label %bb, label %bb1

bb:		
	%3 = add i32 %0, 42		
	store i32 %3, i32* @G, align 4
	br label %bb1

bb1:		
	%4 = add i32 %0, 42		
	store i32 %4, i32* @H, align 4
	br label %return

return:		
	ret i32 0
}

declare i32 @foo(...)
