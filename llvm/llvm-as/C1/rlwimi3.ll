



define i16 @Trans16Bit(i32 %srcA, i32 %srcB, i32 %alpha) {
	%tmp1 = shl i32 %srcA, 15		
	%tmp2 = and i32 %tmp1, 32505856		
	%tmp4 = and i32 %srcA, 31775		
	%tmp5 = or i32 %tmp2, %tmp4		
	%tmp7 = shl i32 %srcB, 15		
	%tmp8 = and i32 %tmp7, 32505856		
	%tmp10 = and i32 %srcB, 31775		
	%tmp11 = or i32 %tmp8, %tmp10		
	%tmp14 = mul i32 %tmp5, %alpha		
	%tmp16 = sub i32 32, %alpha		
	%tmp18 = mul i32 %tmp11, %tmp16		
	%tmp19 = add i32 %tmp18, %tmp14		
	%tmp21 = lshr i32 %tmp19, 5		
	%tmp21.upgrd.1 = trunc i32 %tmp21 to i16		
	%tmp = and i16 %tmp21.upgrd.1, 31775		
	%tmp23 = lshr i32 %tmp19, 20		
	%tmp23.upgrd.2 = trunc i32 %tmp23 to i16		
	%tmp24 = and i16 %tmp23.upgrd.2, 992		
	%tmp25 = or i16 %tmp, %tmp24		
	ret i16 %tmp25
}
