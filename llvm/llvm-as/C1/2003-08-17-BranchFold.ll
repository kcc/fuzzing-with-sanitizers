




declare void @noop()


define i32 @test(i1 %c1, i1 %c2) {
	call void @noop( )
	br i1 %c1, label %A, label %Y
A:		
	call void @noop( )
	br i1 %c2, label %X, label %X
X:		
	call void @noop( )
	ret i32 0
Y:		
	call void @noop( )
	br label %X
}

