


define void @foo() {
start:
	%tmp = call i1 @bar( )		
	br i1 %tmp, label %brtrue, label %brfalse

brtrue:		
	%tmpnew = and i1 %tmp, %tmp		
	br label %brfalse

brfalse:		
	%andandtmp.0 = phi i1 [ %tmp, %start ], [ %tmpnew, %brtrue ]		
	ret void
}

declare i1 @bar()
