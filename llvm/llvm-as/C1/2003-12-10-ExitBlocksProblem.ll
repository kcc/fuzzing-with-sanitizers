








@G = weak global i32 0		

define i32 @main() {
entry:
	store i32 123, i32* @G
	br label %loopentry.i
loopentry.i:		
	%tmp.0.i = load i32, i32* @G		
	%tmp.1.i = icmp eq i32 %tmp.0.i, 123		
	br i1 %tmp.1.i, label %Out.i, label %endif.0.i
endif.0.i:		
	%tmp.3.i = load i32, i32* @G		
	%tmp.4.i = icmp eq i32 %tmp.3.i, 126		
	br i1 %tmp.4.i, label %ExitBlock.i, label %endif.1.i
endif.1.i:		
	%tmp.6.i = load i32, i32* @G		
	%inc.i = add i32 %tmp.6.i, 1		
	store i32 %inc.i, i32* @G
	br label %loopentry.i
Out.i:		
	store i32 0, i32* @G
	br label %ExitBlock.i
ExitBlock.i:		
	%tmp.7.i = load i32, i32* @G		
	ret i32 %tmp.7.i
}

