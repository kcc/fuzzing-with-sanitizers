


define i32 @t(i8* %ref_frame_ptr, i32 %ref_frame_stride, i32 %idxX, i32 %idxY) nounwind  {
entry:
	%tmp7 = mul i32 %idxY, %ref_frame_stride		
	%tmp9 = add i32 %tmp7, %idxX		
	%tmp11 = getelementptr i8, i8* %ref_frame_ptr, i32 %tmp9		
	%tmp1112 = bitcast i8* %tmp11 to i32*		
	%tmp13 = load i32, i32* %tmp1112, align 4		
	%tmp18 = add i32 %idxX, 4		
	%tmp20.sum = add i32 %tmp18, %tmp7		
	%tmp21 = getelementptr i8, i8* %ref_frame_ptr, i32 %tmp20.sum		
	%tmp2122 = bitcast i8* %tmp21 to i16*		
	%tmp23 = load i16, i16* %tmp2122, align 2		
	%tmp2425 = zext i16 %tmp23 to i64		
	%tmp26 = shl i64 %tmp2425, 32		
	%tmp2728 = zext i32 %tmp13 to i64		
	%tmp29 = or i64 %tmp26, %tmp2728		
	%tmp3454 = bitcast i64 %tmp29 to double		
	%tmp35 = insertelement <2 x double> undef, double %tmp3454, i32 0		
	%tmp36 = insertelement <2 x double> %tmp35, double 0.000000e+00, i32 1		
	%tmp42 = bitcast <2 x double> %tmp36 to <8 x i16>		
	%tmp43 = shufflevector <8 x i16> %tmp42, <8 x i16> undef, <8 x i32> < i32 0, i32 1, i32 1, i32 2, i32 4, i32 5, i32 6, i32 7 >		
	%tmp47 = bitcast <8 x i16> %tmp43 to <4 x i32>		
	%tmp48 = extractelement <4 x i32> %tmp47, i32 0		
	ret i32 %tmp48
}
