
target datalayout = "e-p:32:32"
@yy_base = external global [787 x i16]		
@yy_state_ptr = external global i32*		
@yy_state_buf = external global [16386 x i32]		
@yy_lp = external global i32		

define i32 @_yylex() {
	br label %loopentry.0
loopentry.0:		
	store i32* getelementptr ([16386 x i32], [16386 x i32]* @yy_state_buf, i64 0, i64 0), i32** @yy_state_ptr
	%tmp.35 = load i32*, i32** @yy_state_ptr		
	%inc.0 = getelementptr i32, i32* %tmp.35, i64 1		
	store i32* %inc.0, i32** @yy_state_ptr
	%tmp.36 = load i32, i32* null		
	store i32 %tmp.36, i32* %tmp.35
	br label %loopexit.2
loopexit.2:		
	store i8* null, i8** null
	%tmp.91 = load i32, i32* null		
	%tmp.92 = sext i32 %tmp.91 to i64		
	%tmp.93 = getelementptr [787 x i16], [787 x i16]* @yy_base, i64 0, i64 %tmp.92		
	%tmp.94 = load i16, i16* %tmp.93		
	%tmp.95 = icmp ne i16 %tmp.94, 4394		
	br i1 %tmp.95, label %loopexit.2, label %yy_find_action
yy_find_action:		
	br label %loopentry.3
loopentry.3:		
	%tmp.105 = load i32, i32* @yy_lp		
	%tmp.106 = icmp ne i32 %tmp.105, 0		
	br i1 %tmp.106, label %shortcirc_next.0, label %shortcirc_done.0
shortcirc_next.0:		
	%tmp.114 = load i16, i16* null		
	%tmp.115 = sext i16 %tmp.114 to i32		
	%tmp.116 = icmp slt i32 0, %tmp.115		
	br label %shortcirc_done.0
shortcirc_done.0:		
	%shortcirc_val.0 = phi i1 [ false, %loopentry.3 ], [ %tmp.116, %shortcirc_next.0 ]		
	br i1 %shortcirc_val.0, label %else.0, label %loopentry.3
else.0:		
	%tmp.144 = load i32, i32* null		
	%tmp.145 = and i32 %tmp.144, 8192		
	%tmp.146 = icmp ne i32 %tmp.145, 0		
	br i1 %tmp.146, label %then.9, label %else.26
then.9:		
	br label %loopentry.3
else.26:		
	switch i32 0, label %loopentry.0 [
		 i32 2, label %yy_find_action
		 i32 0, label %loopexit.2
	]
}
