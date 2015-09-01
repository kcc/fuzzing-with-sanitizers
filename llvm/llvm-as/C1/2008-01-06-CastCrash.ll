

define <2 x i32> @f() {
	ret <2 x i32> undef
}

define i32 @g() {
	%x = call i32 bitcast (<2 x i32> ()* @f to i32 ()*)( )		
	ret i32 %x
}
