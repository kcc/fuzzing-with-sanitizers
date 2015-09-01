

define void @gcov_exit() nounwind {
entry:
	br i1 false, label %bb24, label %bb33.thread

bb24:		
	br label %bb39

bb33.thread:		
	%0 = alloca i8, i32 0		
	br label %bb39

bb39:		
	%.reg2mem.0 = phi i8* [ %0, %bb33.thread ], [ null, %bb24 ]		
	ret void
}
