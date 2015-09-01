



define i32 @main() {
entry:
	br label %loopentry.0
loopentry.0:		
	%h.0 = phi i32 [ %tmp.2, %loopentry.0 ], [ -1, %entry ]		
	%tmp.2 = add i32 %h.0, 1		
	%tmp.4 = icmp ne i32 %tmp.2, 0		
	br i1 %tmp.4, label %loopentry.0, label %loopentry.1
loopentry.1:		
	%h.1 = phi i32 [ %tmp.2, %loopentry.0 ]		
	ret i32 %h.1
}

