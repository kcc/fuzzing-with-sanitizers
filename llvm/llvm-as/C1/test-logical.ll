

define i32 @main() {
	%A = and i8 4, 8		
	%B = or i8 %A, 7		
	%C = xor i8 %B, %A		
	%A.upgrd.1 = and i16 4, 8		
	%B.upgrd.2 = or i16 %A.upgrd.1, 7		
	%C.upgrd.3 = xor i16 %B.upgrd.2, %A.upgrd.1		
	%A.upgrd.4 = and i32 4, 8		
	%B.upgrd.5 = or i32 %A.upgrd.4, 7		
	%C.upgrd.6 = xor i32 %B.upgrd.5, %A.upgrd.4		
	%A.upgrd.7 = and i64 4, 8		
	%B.upgrd.8 = or i64 %A.upgrd.7, 7		
	%C.upgrd.9 = xor i64 %B.upgrd.8, %A.upgrd.7		
	ret i32 0
}

