

define void @inflate() {
entry:
	br label %loopentry.0.outer1111
loopentry.0.outer1111:		
	%left.0.ph1107 = phi i32 [ %tmp.1172, %then.41 ], [ 0, %entry ], [ %tmp.1172, %label.11 ], [ %left.0.ph1107, %loopentry.0.outer1111 ]		
	%tmp.1172 = sub i32 %left.0.ph1107, 0		
	switch i32 0, label %label.11 [
		 i32 23, label %loopentry.0.outer1111
		 i32 13, label %then.41
	]
label.11:		
	br label %loopentry.0.outer1111
then.41:		
	br label %loopentry.0.outer1111
}

