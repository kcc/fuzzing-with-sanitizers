






define void @old_main() {
bb3:
	br label %bb6
bb6:		
	%reg403 = phi i32 [ %reg155, %bb14 ], [ 0, %bb3 ]		
	%reg155 = add i32 %reg403, 1		
	br label %bb11
bb11:		
	%reg407 = phi i32 [ %reg408, %bb11 ], [ 0, %bb6 ]		
	%reg408 = add i32 %reg407, 1		
	%cond550 = icmp sle i32 %reg407, 1		
	br i1 %cond550, label %bb11, label %bb12
bb12:		
	br label %bb13
bb13:		
	%reg409 = phi i32 [ %reg410, %bb13 ], [ 0, %bb12 ]		
	%reg410 = add i32 %reg409, 1		
	%cond552 = icmp sle i32 %reg410, 2		
	br i1 %cond552, label %bb13, label %bb14
bb14:		
	%cond553 = icmp sle i32 %reg155, 31		
	br i1 %cond553, label %bb6, label %bb15
bb15:		
	ret void
}

