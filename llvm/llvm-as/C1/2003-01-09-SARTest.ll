



define i32 @main() {
	%X = ashr i32 -1, 16		
	%Y = ashr i32 %X, 16		
	%Z = add i32 %Y, 1		
	ret i32 %Z
}

