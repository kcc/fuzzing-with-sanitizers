




define void @test1(i32* %A, i32* %B, i32* %D, i32* %E) {
	%A.upgrd.1 = load i32, i32* %A		
	%B.upgrd.2 = load i32, i32* %B		
	%X = and i32 %A.upgrd.1, 15		
	%Y = and i32 %B.upgrd.2, -16		
	%Z = or i32 %X, %Y		
	store i32 %Z, i32* %D
	store i32 %A.upgrd.1, i32* %E
	ret void
}

define void @test2(i32* %A, i32* %B, i32* %D, i32* %E) {
	%A.upgrd.3 = load i32, i32* %A		
	%B.upgrd.4 = load i32, i32* %B		
	%X = and i32 %A.upgrd.3, 15		
	%Y = and i32 %B.upgrd.4, -16		
	%Z = or i32 %X, %Y		
	store i32 %Z, i32* %D
	store i32 %B.upgrd.4, i32* %E
	ret void
}

define i32 @test3(i32 %a, i32 %b) {
	%tmp.1 = and i32 %a, 15		
	%tmp.3 = and i32 %b, 240		
	%tmp.4 = or i32 %tmp.3, %tmp.1		
	ret i32 %tmp.4
}

