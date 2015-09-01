
	%struct.inoutprops = type <{ i8, [3 x i8] }>

define void @bork(float* %argA, float* %argB, float* %res, i8 %inoutspec.0) {
entry:
	%.mask = and i8 %inoutspec.0, -16		
	%tmp6 = icmp eq i8 %.mask, 16		
	br i1 %tmp6, label %cond_true, label %UnifiedReturnBlock

cond_true:		
	%tmp89 = bitcast float* %res to <4 x i32>*		
	%tmp1011 = bitcast float* %argA to <4 x i32>*		
	%tmp14 = load <4 x i32>, <4 x i32>* %tmp1011, align 16		
	%tmp1516 = bitcast float* %argB to <4 x i32>*		
	%tmp18 = load <4 x i32>, <4 x i32>* %tmp1516, align 16		
	%tmp19 = sdiv <4 x i32> %tmp14, %tmp18		
	store <4 x i32> %tmp19, <4 x i32>* %tmp89, align 16
	ret void

UnifiedReturnBlock:		
	ret void
}
