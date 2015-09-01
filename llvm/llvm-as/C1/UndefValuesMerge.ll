

define i32 @testfunc(i1 %C, i32 %i, i8 %j) {
	%I = alloca i32		
	br i1 %C, label %T, label %Cont
T:		
	store i32 %i, i32* %I
	br label %Cont
Cont:		
	%Y = load i32, i32* %I		
	ret i32 %Y
}

