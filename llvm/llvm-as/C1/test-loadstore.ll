

define void @test(i8* %P, i16* %P.upgrd.1, i32* %P.upgrd.2, i64* %P.upgrd.3) {
	%V = load i8, i8* %P		
	store i8 %V, i8* %P
	%V.upgrd.4 = load i16, i16* %P.upgrd.1		
	store i16 %V.upgrd.4, i16* %P.upgrd.1
	%V.upgrd.5 = load i32, i32* %P.upgrd.2		
	store i32 %V.upgrd.5, i32* %P.upgrd.2
	%V.upgrd.6 = load i64, i64* %P.upgrd.3		
	store i64 %V.upgrd.6, i64* %P.upgrd.3
	ret void
}

define i32 @varalloca(i32 %Size) {
        
	%X = alloca i32, i32 %Size		
	store i32 %Size, i32* %X
	%Y = load i32, i32* %X		
	ret i32 %Y
}

define i32 @main() {
	%A = alloca i8		
	%B = alloca i16		
	%C = alloca i32		
	%D = alloca i64		
	call void @test( i8* %A, i16* %B, i32* %C, i64* %D )
	call i32 @varalloca( i32 7 )		
	ret i32 0
}
