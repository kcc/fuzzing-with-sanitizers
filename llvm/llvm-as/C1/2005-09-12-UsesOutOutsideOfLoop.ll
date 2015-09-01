

define void @main() {
entry:
	br label %loopentry.0
loopentry.0:		
	%arg_index.1.ph = phi i32 [ 1, %entry ], [ %arg_index.1.ph.be, %then.5 ]		
	br i1 false, label %no_exit.0, label %loopexit.0
no_exit.0:		
	%arg_index.1.1 = add i32 0, %arg_index.1.ph		
	br i1 false, label %then.i55, label %endif.i61
then.i55:		
	br i1 false, label %then.4, label %else.1
endif.i61:		
	ret void
then.4:		
	%tmp.19993 = add i32 %arg_index.1.1, 2		
	ret void
else.1:		
	br i1 false, label %then.i86, label %loopexit.i97
then.i86:		
	ret void
loopexit.i97:		
	br i1 false, label %then.5, label %else.2
then.5:		
	%arg_index.1.ph.be = add i32 %arg_index.1.1, 2		
	br label %loopentry.0
else.2:		
	ret void
loopexit.0:		
	ret void
}
