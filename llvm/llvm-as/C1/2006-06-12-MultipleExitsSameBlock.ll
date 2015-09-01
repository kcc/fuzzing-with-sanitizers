




declare i1 @c1()

declare i1 @c2()

define i32 @foo() {
entry:
	br label %loop_begin
loop_begin:		
	br i1 true, label %loop_body.1, label %loop_exit2
loop_body.1:		
	%X.1 = add i32 0, 1		
	%rel.1 = call i1 @c1( )		
	br i1 %rel.1, label %loop_exit, label %loop_body.2
loop_body.2:		
	%rel.2 = call i1 @c2( )		
	br i1 %rel.2, label %loop_exit, label %loop_begin
loop_exit:		
	ret i32 %X.1
loop_exit2:		
	ret i32 1
}

