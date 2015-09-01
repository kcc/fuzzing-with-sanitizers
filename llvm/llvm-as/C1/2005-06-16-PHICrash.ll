

@g_38098584 = external global i32		
@g_60187400 = external global i32		
@g_59182229 = external global i32		

define i32 @_Z13func_26556482h(i8 %l_88173906) {
entry:
	%tmp.1 = bitcast i8 %l_88173906 to i8		
	%tmp.3 = icmp eq i8 %l_88173906, 0		
	br i1 %tmp.3, label %else.0, label %then.0
then.0:		
	%tmp.5 = icmp eq i8 %l_88173906, 0		
	br i1 %tmp.5, label %else.1, label %then.1
then.1:		
	br label %return
else.1:		
	br label %loopentry.0
loopentry.0:		
	%i.0.1 = phi i32 [ 0, %else.1 ], [ %inc.0, %no_exit.0 ]		
	%tmp.9 = icmp sgt i32 %i.0.1, 99		
	br i1 %tmp.9, label %endif.0, label %no_exit.0
no_exit.0:		
	%inc.0 = add i32 %i.0.1, 1		
	br label %loopentry.0
else.0:		
	%tmp.12 = sext i8 %tmp.1 to i32		
	br label %return
endif.0:		
	%tmp.14 = sext i8 %tmp.1 to i32		
	%tmp.16 = zext i8 %l_88173906 to i32		
	%tmp.17 = icmp sgt i32 %tmp.14, %tmp.16		
	%tmp.19 = load i32, i32* @g_59182229		
	br i1 %tmp.17, label %cond_true, label %cond_false
cond_true:		
	%tmp.20 = icmp ne i32 %tmp.19, 1		
	br label %cond_continue
cond_false:		
	%tmp.22 = icmp ne i32 %tmp.19, 0		
	br label %cond_continue
cond_continue:		
	%mem_tmp.0 = phi i1 [ %tmp.20, %cond_true ], [ %tmp.22, %cond_false ]		
	br i1 %mem_tmp.0, label %then.2, label %else.2
then.2:		
	%tmp.25 = zext i8 %l_88173906 to i32		
	br label %return
else.2:		
	br label %loopentry.1
loopentry.1:		
	%i.1.1 = phi i32 [ 0, %else.2 ], [ %inc.3, %endif.3 ]		
	%i.3.2 = phi i32 [ undef, %else.2 ], [ %i.3.0, %endif.3 ]		
	%l_88173906_addr.1 = phi i8 [ %l_88173906, %else.2 ], [ %l_88173906_addr.0, %endif.3 ]		
	%tmp.29 = icmp sgt i32 %i.1.1, 99		
	br i1 %tmp.29, label %endif.2, label %no_exit.1
no_exit.1:		
	%tmp.30 = load i32, i32* @g_38098584		
	%tmp.31 = icmp eq i32 %tmp.30, 0		
	br i1 %tmp.31, label %else.3, label %then.3
then.3:		
	br label %endif.3
else.3:		
	br i1 false, label %else.4, label %then.4
then.4:		
	br label %endif.3
else.4:		
	br i1 false, label %else.5, label %then.5
then.5:		
	store i32 -1004318825, i32* @g_59182229
	br label %return
else.5:		
	br label %loopentry.3
loopentry.3:		
	%i.3.3 = phi i32 [ 0, %else.5 ], [ %inc.2, %then.7 ]		
	%tmp.55 = icmp sgt i32 %i.3.3, 99		
	br i1 %tmp.55, label %endif.3, label %no_exit.3
no_exit.3:		
	%tmp.57 = icmp eq i8 %l_88173906_addr.1, 0		
	br i1 %tmp.57, label %else.7, label %then.7
then.7:		
	store i32 16239, i32* @g_60187400
	%inc.2 = add i32 %i.3.3, 1		
	br label %loopentry.3
else.7:		
	br label %return
endif.3:		
	%i.3.0 = phi i32 [ %i.3.2, %then.3 ], [ %i.3.2, %then.4 ], [ %i.3.3, %loopentry.3 ]		
	%l_88173906_addr.0 = phi i8 [ 100, %then.3 ], [ %l_88173906_addr.1, %then.4 ], [ %l_88173906_addr.1, %loopentry.3 ]		
	%inc.3 = add i32 %i.1.1, 1		
	br label %loopentry.1
endif.2:		
	br label %return
return:		
	%result.0 = phi i32 [ 1624650671, %then.1 ], [ %tmp.25, %then.2 ], [ 3379, %then.5 ], [ 52410, %else.7 ], [ -1526438411, %endif.2 ], [ %tmp.12, %else.0 ]		
	ret i32 %result.0
}
