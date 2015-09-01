

define signext i16 @f(i32* %bp, i32* %ss)   {
entry:
	br label %cond_next127

cond_next127:		
	%v.1 = phi i32 [ undef, %entry ], [ %tmp411, %cond_next391 ]		
	%tmp149 = mul i32 0, %v.1		
	%tmpss = load i32, i32* %ss, align 4		
	%tmpbp = load i32, i32* %bp, align 4		
	%tmp254 = and i32 %tmpss, 15		
	%tmp256 = and i32 %tmpbp, 15		
	br label %cond_next391

cond_next391:		
	%tmp393 = load i32, i32* %ss, align 4		
	%tmp395 = load i32, i32* %bp, align 4		
	%tmp396 = shl i32 %tmp393, %tmp395		
	%tmp398 = sub i32 32, %tmp256		
	%tmp399 = lshr i32 %tmp396, %tmp398		
	%tmp405 = lshr i32 %tmp396, 31		
	%tmp406 = add i32 %tmp405, -1		
	%tmp409 = lshr i32 %tmp406, %tmp398		
	%tmp411 = sub i32 %tmp399, %tmp409		
	%tmp422445 = add i32 %tmp254, 0		
	%tmp426447 = add i32 %tmp395, %tmp256		
	store i32 %tmp426447, i32* %bp, align 4
	%tmp429448 = icmp ult i32 %tmp422445, 63		
	br i1 %tmp429448, label %cond_next127, label %UnifiedReturnBlock

UnifiedReturnBlock:		
	ret i16 0
}
