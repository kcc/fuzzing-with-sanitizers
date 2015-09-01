



define void @NormalizeCoeffsVecFFE() {
entry:
	br label %loopentry.0
loopentry.0:		
	br i1 false, label %loopentry.1, label %no_exit.0
no_exit.0:		
	br i1 false, label %loopentry.0, label %loopentry.1
loopentry.1:		
	br i1 false, label %no_exit.1, label %loopexit.1
no_exit.1:		
	%tmp.43 = icmp eq i16 0, 0		
	br i1 %tmp.43, label %loopentry.1, label %loopexit.1
loopexit.1:		
	ret void
}

