


@g = global i32 0		

define i32 @f() {
	%t = load volatile i32, i32* @g		
	ret i32 %t
}
