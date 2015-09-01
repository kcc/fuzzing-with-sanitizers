




define i32 @re_match_2() {
	br label %loopentry.1
loopentry.1:		
	br label %shortcirc_done.36
shortcirc_done.36:		
	br i1 false, label %fail, label %endif.40
endif.40:		
	br label %loopexit.20
loopentry.20:		
	br label %loopexit.20
loopexit.20:		
	br label %loopentry.21
loopentry.21:		
	br i1 false, label %no_exit.19, label %loopexit.21
no_exit.19:		
	br i1 false, label %fail, label %loopentry.21
loopexit.21:		
	br label %endif.45
endif.45:		
	br label %cond_true.15
cond_true.15:		
	br i1 false, label %fail, label %endif.46
endif.46:		
	br label %loopentry.20
fail:		
	br label %then.80
then.80:		
	br label %endif.81
endif.81:		
	br label %loopexit.37
loopexit.37:		
	br i1 false, label %fail, label %endif.82
endif.82:		
	br label %loopentry.1
}


