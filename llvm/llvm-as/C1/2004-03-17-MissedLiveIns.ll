

define void @sendMTFValues() {
entry:
	br i1 false, label %then.1, label %endif.1

then.1:		
	br i1 false, label %loopentry.6.preheader, label %else.0

endif.1:		
	ret void

else.0:		
	ret void

loopentry.6.preheader:		
	br i1 false, label %endif.7.preheader, label %loopexit.9

endif.7.preheader:		
	%tmp.183 = add i32 0, -1		
	br label %endif.7

endif.7:		
	br i1 false, label %loopentry.10, label %loopentry.12

loopentry.10:		
	br label %loopentry.12

loopentry.12:		
	%ge.2.1 = phi i32 [ 0, %loopentry.10 ], [ %tmp.183, %endif.7 ]		
	br i1 false, label %loopexit.14, label %no_exit.11

no_exit.11:		
	ret void

loopexit.14:		
	br i1 false, label %loopexit.15, label %no_exit.14

no_exit.14:		
	ret void

loopexit.15:		
	br i1 false, label %endif.7, label %loopexit.9

loopexit.9:		
	ret void
}
