

define void @symhash_add() {
entry:
	br i1 undef, label %then.0, label %UnifiedReturnBlock
then.0:		
	br i1 undef, label %loopentry.2, label %loopentry.1.preheader
loopentry.1.preheader:		
	br label %loopentry.1.outer
loopentry.1.outer:		
	br label %loopentry.1
loopentry.1:		
	br i1 undef, label %loopexit.1, label %no_exit.1
no_exit.1:		
	br i1 undef, label %then.1, label %else.0
then.1:		
	br label %loopentry.1
else.0:		
	br i1 undef, label %then.2, label %else.1
then.2:		
	br i1 undef, label %then.3, label %endif.1
then.3:		
	br label %loopentry.1
else.1:		
	br i1 undef, label %endif.1, label %then.4
then.4:		
	br label %loopentry.1
endif.1:		
	br label %loopentry.1
loopexit.1:		
	br i1 undef, label %loopentry.1.outer, label %loopentry.2
loopentry.2:		
	br i1 undef, label %loopexit.2, label %no_exit.2
no_exit.2:		
	br label %loopentry.2
loopexit.2:		
	ret void
UnifiedReturnBlock:		
	ret void
}
