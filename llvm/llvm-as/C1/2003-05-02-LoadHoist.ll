






@X = global i32 7		

declare void @foo()

define i32 @test(i1 %c) {
	%A = load i32, i32* @X		
	br label %Loop
Loop:		
	call void @foo( )
        
	%B = load i32, i32* @X		
	br i1 %c, label %Loop, label %Out
Out:		
	%C = sub i32 %A, %B		
	ret i32 %C
}
