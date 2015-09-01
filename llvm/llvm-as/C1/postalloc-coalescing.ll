

define fastcc i32 @_Z18yy_get_next_bufferv() nounwind {
entry:
	br label %bb131

bb116:		
	%tmp125126 = trunc i32 %c.1 to i8		
	store i8 %tmp125126, i8* null, align 1
	br label %bb131

bb131:		
	%c.2 = phi i32 [ %c.1, %bb116 ], [ 42, %entry ]		
	%c.1 = select i1 false, i32 0, i32 %c.2		
	%tmp181 = icmp eq i32 %c.1, -1		
	br i1 %tmp181, label %bb158, label %bb116

bb158:		
	br i1 true, label %cond_true163, label %cond_next178

cond_true163:		
	%tmp172173 = trunc i32 %c.1 to i8		
	store i8 %tmp172173, i8* null, align 1
	br label %cond_next178

cond_next178:		
	%tmp180 = icmp eq i32 %c.1, -1		
	br i1 %tmp180, label %cond_next184, label %cond_next199

cond_next184:		
	ret i32 0

cond_next199:		
	ret i32 0
}
