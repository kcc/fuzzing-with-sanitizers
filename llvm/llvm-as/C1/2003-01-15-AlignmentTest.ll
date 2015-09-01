

define i32 @bar(i8* %X) {
        
	%P = alloca double		
	%R = ptrtoint double* %P to i32		
	%A = and i32 %R, 3		
	ret i32 %A
}

define i32 @main() {
	%SP = alloca i8		
	%X = add i32 0, 0		
	alloca i8, i32 %X		
	call i32 @bar( i8* %SP )		
	ret i32 %2
}
