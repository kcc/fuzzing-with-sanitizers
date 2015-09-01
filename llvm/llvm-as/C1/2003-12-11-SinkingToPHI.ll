

define i32 @main() {
entry:
	br label %Loop
Loop:		
	br i1 true, label %LoopCont, label %Out
LoopCont:		
	%X = add i32 1, 0		
	br i1 true, label %Out, label %Loop
Out:		
	%V = phi i32 [ 2, %Loop ], [ %X, %LoopCont ]		
	%V2 = sub i32 %V, 1		
	ret i32 %V2
}

