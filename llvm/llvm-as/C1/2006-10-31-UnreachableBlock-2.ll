


declare i32 @opost_block()

define void @write_chan() {
entry:
	br i1 false, label %shortcirc_next.0, label %shortcirc_done.0
shortcirc_next.0:		
	br label %shortcirc_done.0
shortcirc_done.0:		
	br i1 false, label %shortcirc_next.1, label %shortcirc_done.1
shortcirc_next.1:		
	br label %shortcirc_done.1
shortcirc_done.1:		
	br i1 false, label %then.0, label %endif.0
then.0:		
	br i1 false, label %then.1, label %endif.1
then.1:		
	br label %return
after_ret.0:		
	br label %endif.1
endif.1:		
	br label %endif.0
endif.0:		
	br label %loopentry.0
loopentry.0:		
	br i1 false, label %then.2, label %endif.2
then.2:		
	br label %loopexit.0
dead_block_after_break.0:		
	br label %endif.2
endif.2:		
	br i1 false, label %shortcirc_done.2, label %shortcirc_next.2
shortcirc_next.2:		
	br i1 false, label %shortcirc_next.3, label %shortcirc_done.3
shortcirc_next.3:		
	br label %shortcirc_done.3
shortcirc_done.3:		
	br label %shortcirc_done.2
shortcirc_done.2:		
	br i1 false, label %then.3, label %endif.3
then.3:		
	br label %loopexit.0
dead_block_after_break.1:		
	br label %endif.3
endif.3:		
	br i1 false, label %shortcirc_next.4, label %shortcirc_done.4
shortcirc_next.4:		
	br label %shortcirc_done.4
shortcirc_done.4:		
	br i1 false, label %then.4, label %else
then.4:		
	br label %loopentry.1
loopentry.1:		
	br i1 false, label %no_exit, label %loopexit.1
no_exit:		
	%tmp.94 = call i32 @opost_block( )		
	br i1 false, label %then.5, label %endif.5
then.5:		
	br i1 false, label %then.6, label %endif.6
then.6:		
	br label %loopexit.1
dead_block_after_break.2:		
	br label %endif.6
endif.6:		
	br label %break_out
dead_block_after_goto.0:		
	br label %endif.5
endif.5:		
	br i1 false, label %then.7, label %endif.7
then.7:		
	br label %loopexit.1
dead_block_after_break.3:		
	br label %endif.7
endif.7:		
	switch i32 1, label %switchexit [
		 i32 4, label %label.2
		 i32 2, label %label.1
		 i32 1, label %label.0
	]
label.0:		
	br label %switchexit
dead_block_after_break.4:		
	br label %label.1
label.1:		
	br label %switchexit
dead_block_after_break.5:		
	br label %label.2
label.2:		
	br label %switchexit
dead_block_after_break.6:		
	br label %switchexit
switchexit:		
	br i1 false, label %then.8, label %endif.8
then.8:		
	br label %loopexit.1
dead_block_after_break.7:		
	br label %endif.8
endif.8:		
	br label %loopentry.1
loopexit.1:		
	br i1 false, label %then.9, label %endif.9
then.9:		
	br label %endif.9
endif.9:		
	br label %endif.4
else:		
	br i1 false, label %then.10, label %endif.10
then.10:		
	br label %break_out
dead_block_after_goto.1:		
	br label %endif.10
endif.10:		
	br label %endif.4
endif.4:		
	br i1 false, label %then.11, label %endif.11
then.11:		
	br label %loopexit.0
dead_block_after_break.8:		
	br label %endif.11
endif.11:		
	br i1 false, label %then.12, label %endif.12
then.12:		
	br label %loopexit.0
dead_block_after_break.9:		
	br label %endif.12
endif.12:		
	br label %loopentry.0
loopexit.0:		
	br label %break_out
break_out:		
	%retval.3 = phi i32 [ 0, %loopexit.0 ], [ %tmp.94, %endif.6 ], [ 0, %then.10 ]		
	br i1 false, label %cond_true, label %cond_false
cond_true:		
	br label %cond_continue
cond_false:		
	br label %cond_continue
cond_continue:		
	br label %return
after_ret.1:		
	br label %return
return:		
	ret void
}
