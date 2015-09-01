



declare void @f1()

declare void @f2()

declare void @f3()

declare void @f4()

define i32 @test1(i32 %X, i1 %D) {
E:
	%C = icmp eq i32 %X, 0		
	br i1 %C, label %T, label %F
T:		
	br i1 %C, label %B, label %A
A:		
	call void @f1( )
	br i1 %D, label %T, label %F
B:		
	call void @f2( )
	ret i32 345
F:		
	call void @f3( )
	ret i32 123
}

define i32 @test2(i32 %X, i1 %D) {
E:
	%C = icmp eq i32 %X, 0		
	br i1 %C, label %T, label %F
T:		
	%P = phi i1 [ true, %E ], [ %C, %A ]		
	br i1 %P, label %B, label %A
A:		
	call void @f1( )
	br i1 %D, label %T, label %F
B:		
	call void @f2( )
	ret i32 345
F:		
	call void @f3( )
	ret i32 123
}

define i32 @test3(i32 %X, i1 %D, i32* %AP, i32* %BP) {
E:
	%C = icmp eq i32 %X, 0		
	br i1 %C, label %T, label %F
T:		
	call void @f3( )
	%XX = load i32, i32* %AP		
	store i32 %XX, i32* %BP
	br i1 %C, label %B, label %A
A:		
	call void @f1( )
	br i1 %D, label %T, label %F
B:		
	call void @f2( )
	ret i32 345
F:		
	call void @f3( )
	ret i32 123
}
