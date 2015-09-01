

define void @print_board() {
entry:
	br label %no_exit.1
no_exit.1:		
	br label %no_exit.2
no_exit.2:		
	%indvar1 = phi i32 [ 0, %no_exit.1 ], [ %indvar.next2, %no_exit.2 ]		
	%indvar.next2 = add i32 %indvar1, 1		
	%exitcond3 = icmp ne i32 %indvar.next2, 7		
	br i1 %exitcond3, label %no_exit.2, label %loopexit.2
loopexit.2:		
	br i1 false, label %cond_true.2, label %cond_false.2
cond_true.2:		
	ret void
cond_false.2:		
	br i1 false, label %no_exit.1, label %loopexit.1
loopexit.1:		
	ret void
}

