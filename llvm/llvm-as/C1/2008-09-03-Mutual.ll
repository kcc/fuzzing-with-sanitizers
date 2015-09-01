

define i32 @a() {
	%tmp = call i32 @b( )		
	ret i32 %tmp
}

define i32 @b() {
	%tmp = call i32 @a( )		
	ret i32 %tmp
}
