

define void @.subst_48() {
entry:
	br label %loopentry.0
loopentry.0:		
	br i1 false, label %loopentry.0, label %loopentry.2
loopentry.2:		
	%tmp.968 = icmp sle i32 0, 3		
	br i1 %tmp.968, label %loopentry.2, label %UnifiedReturnBlock
UnifiedReturnBlock:		
	ret void
}

