


declare void @use(i32)

define void @foo() {
entry:
	br label %loop_1

loop_1:		
	%a = phi i32 [ 2, %entry ], [ %b, %loop_1 ]		
	%c = phi i32 [ 5, %entry ], [ %d, %loop_1 ]		
	%b = add i32 %a, 1		
	%d = add i32 %c, %a		
	%A = icmp ult i32 %d, 50		
	br i1 %A, label %loop_1, label %endloop

endloop:		
	call void @use(i32 %d)
	ret void
}
