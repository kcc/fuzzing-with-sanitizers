



define void @foo() {
entry:
	br label %no_exit
no_exit:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %no_exit ]		
	%indvar.upgrd.1 = trunc i32 %indvar to i16		
	%X.0.0 = mul i16 %indvar.upgrd.1, 1234		
	%tmp. = mul i32 %indvar, 1234		
	%tmp.5 = sext i16 %X.0.0 to i32		
	%tmp.3 = call i32 (...) @bar( i32 %tmp.5, i32 %tmp. )		
	%tmp.0 = call i1 @pred( )		
	%indvar.next = add i32 %indvar, 1		
	br i1 %tmp.0, label %return, label %no_exit
return:		
	ret void
}

declare i1 @pred()

declare i32 @bar(...)

