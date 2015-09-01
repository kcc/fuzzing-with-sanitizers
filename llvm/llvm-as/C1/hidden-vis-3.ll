

@x = external hidden global i32		
@y = extern_weak hidden global i32	

define i32 @t() nounwind readonly {
entry:





	%0 = load i32, i32* @x, align 4		
	%1 = load i32, i32* @y, align 4		
	%2 = add i32 %1, %0		
	ret i32 %2
}
