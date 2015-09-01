


define void @printk(i32, ...) {
entry:
	%flags = alloca i32		
	br i1 false, label %then.0, label %endif.0
then.0:		
	br label %endif.0
endif.0:		
	store i32 0, i32* %flags
	br label %loopentry
loopentry:		
	br i1 false, label %no_exit, label %loopexit
no_exit:		
	br i1 false, label %then.1, label %endif.1
then.1:		
	br i1 false, label %shortcirc_done.0, label %shortcirc_next.0
shortcirc_next.0:		
	br label %shortcirc_done.0
shortcirc_done.0:		
	br i1 false, label %shortcirc_done.1, label %shortcirc_next.1
shortcirc_next.1:		
	br label %shortcirc_done.1
shortcirc_done.1:		
	br i1 false, label %shortcirc_done.2, label %shortcirc_next.2
shortcirc_next.2:		
	br label %shortcirc_done.2
shortcirc_done.2:		
	br i1 false, label %then.2, label %endif.2
then.2:		
	br label %endif.2
endif.2:		
	br label %endif.1
endif.1:		
	br i1 false, label %then.3, label %endif.3
then.3:		
	br label %endif.3
endif.3:		
	br label %loopentry
loopexit:		
	br label %endif.4
then.4:		
	%tmp.61 = load i32, i32* %flags		
	br label %out
dead_block_after_goto:		
	br label %endif.4
endif.4:		
	br i1 false, label %then.5, label %else
then.5:		
	br label %endif.5
else:		
	br label %endif.5
endif.5:		
	br label %out
out:		
	br label %return
after_ret:		
	br label %return
return:		
	ret void
}
