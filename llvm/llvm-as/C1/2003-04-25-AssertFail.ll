




define i32 @yylex() {
	br label %loopentry.0
loopentry.0:		
	br label %loopexit.2
loopexit.2:		
	br i1 false, label %loopexit.2, label %else.4
yy_find_action:		
	br label %else.4
else.4:		
	switch i32 0, label %loopexit.2 [
		 i32 2, label %yy_find_action
		 i32 0, label %loopentry.0
	]
}

