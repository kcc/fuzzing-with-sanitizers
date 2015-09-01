

@x = common hidden global i32 0		

define i32 @t() nounwind readonly {
entry:



	%0 = load i32, i32* @x, align 4		
	ret i32 %0
}
