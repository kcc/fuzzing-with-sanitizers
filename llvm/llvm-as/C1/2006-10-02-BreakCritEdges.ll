




declare void @use1(i32)

define void @f(i32 %i, i1 %c) {
entry:
	%A = icmp eq i32 %i, 0		
	br i1 %A, label %brtrue, label %brfalse

brtrue:		
	%B = phi i1 [ true, %brtrue ], [ false, %entry ]		
	call void @use1( i32 %i )
	br i1 %B, label %brtrue, label %brfalse

brfalse:		
	call void @use1( i32 %i )
	ret void
}
