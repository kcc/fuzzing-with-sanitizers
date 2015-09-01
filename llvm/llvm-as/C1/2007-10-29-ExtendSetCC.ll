

define signext i16 @t()   {
entry:
	%tmp180 = load i16, i16* null, align 2		
	%tmp180181 = sext i16 %tmp180 to i32		
	%tmp185 = icmp slt i16 %tmp180, 0		
	br i1 %tmp185, label %cond_true188, label %cond_next245

cond_true188:		
	%tmp195196 = trunc i16 %tmp180 to i8		
	ret i16 0

cond_next245:		
	%tmp256 = and i32 %tmp180181, 15		
	ret i16 0
}
