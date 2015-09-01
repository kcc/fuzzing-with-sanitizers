

define signext i16 @t(i32 %depth)  nounwind  {
entry:
	br i1 false, label %bb74, label %bb
bb:		
	ret i16 0
bb74:		
	switch i32 0, label %bail [
		 i32 17, label %bb84
		 i32 18, label %bb81
		 i32 33, label %bb80
		 i32 34, label %bb84
	]
bb80:		
	switch i32 %depth, label %bb103 [
		 i32 16, label %bb96
		 i32 32, label %bb91
		 i32 846624121, label %bb96
		 i32 1094862674, label %bb91
		 i32 1096368963, label %bb91
		 i32 1111970369, label %bb91
		 i32 1278555445, label %bb96
		 i32 1278555701, label %bb96
		 i32 1380401729, label %bb91
		 i32 1668118891, label %bb91
		 i32 1916022840, label %bb91
		 i32 1983131704, label %bb91
		 i32 2037741171, label %bb96
		 i32 2037741173, label %bb96
	]
bb81:		
	ret i16 0
bb84:		
	switch i32 %depth, label %bb103 [
		 i32 16, label %bb96
		 i32 32, label %bb91
		 i32 846624121, label %bb96
		 i32 1094862674, label %bb91
		 i32 1096368963, label %bb91
		 i32 1111970369, label %bb91
		 i32 1278555445, label %bb96
		 i32 1278555701, label %bb96
		 i32 1380401729, label %bb91
		 i32 1668118891, label %bb91
		 i32 1916022840, label %bb91
		 i32 1983131704, label %bb91
		 i32 2037741171, label %bb96
		 i32 2037741173, label %bb96
	]
bb91:		
	%wMB.0.reg2mem.0 = phi i16 [ 16, %bb80 ], [ 16, %bb80 ], [ 16, %bb80 ], [ 16, %bb80 ], [ 16, %bb80 ], [ 16, %bb80 ], [ 16, %bb80 ], [ 16, %bb80 ], [ 0, %bb84 ], [ 0, %bb84 ], [ 0, %bb84 ], [ 0, %bb84 ], [ 0, %bb84 ], [ 0, %bb84 ], [ 0, %bb84 ], [ 0, %bb84 ]		
	%tmp941478 = shl i16 %wMB.0.reg2mem.0, 2		
	br label %bb103
bb96:		
	ret i16 0
bb103:		
	%wMB.0.reg2mem.2 = phi i16 [ %wMB.0.reg2mem.0, %bb91 ], [ 16, %bb80 ], [ 0, %bb84 ]		
	%bBump.0 = phi i16 [ %tmp941478, %bb91 ], [ 16, %bb80 ], [ 0, %bb84 ]		
	br i1 false, label %bb164, label %UnifiedReturnBlock
bb164:		
	%tmp167168 = sext i16 %wMB.0.reg2mem.2 to i32		
	ret i16 0
bail:		
	ret i16 0
UnifiedReturnBlock:		
	ret i16 0
}
