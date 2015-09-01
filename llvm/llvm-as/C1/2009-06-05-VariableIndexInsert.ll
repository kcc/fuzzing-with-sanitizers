

define <2 x i64> @_mm_insert_epi16(<2 x i64> %a, i32 %b, i32 %imm) nounwind readnone {
entry:
	%conv = bitcast <2 x i64> %a to <8 x i16>		
	%conv2 = trunc i32 %b to i16		
	%and = and i32 %imm, 7		
	%vecins = insertelement <8 x i16> %conv, i16 %conv2, i32 %and		
	%conv6 = bitcast <8 x i16> %vecins to <2 x i64>		
	ret <2 x i64> %conv6
}
