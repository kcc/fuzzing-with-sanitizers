

define void @Hubba(i8* %saveunder, i32 %firstBlob, i32 %select) nounwind  {
entry:
	br i1 false, label %bb53.us, label %bb53
bb53.us:		
	switch i8 1, label %bb71.us [
		 i8 0, label %bb53.us
		 i8 1, label %bb94.us
	]
bb94.us:		
	%result.0.us = phi i32 [ %tmp93.us, %bb71.us ], [ 0, %bb53.us ]		
	%tmp101.us = lshr i32 %result.0.us, 3		
	%result.0163.us = trunc i32 %result.0.us to i16		
	shl i16 %result.0163.us, 7		
	%tmp106.us = and i16 %0, -1024		
	shl i16 %result.0163.us, 2		
	%tmp109.us = and i16 %1, -32		
	%tmp111112.us = trunc i32 %tmp101.us to i16		
	%tmp110.us = or i16 %tmp109.us, %tmp111112.us		
	%tmp113.us = or i16 %tmp110.us, %tmp106.us		
	store i16 %tmp113.us, i16* null, align 2
	br label %bb53.us
bb71.us:		
	%tmp80.us = load i8, i8* null, align 1		
	%tmp8081.us = zext i8 %tmp80.us to i32		
	%tmp87.us = mul i32 %tmp8081.us, 0		
	%tmp92.us = add i32 0, %tmp87.us		
	%tmp93.us = udiv i32 %tmp92.us, 255		
	br label %bb94.us
bb53:		
	ret void
}
