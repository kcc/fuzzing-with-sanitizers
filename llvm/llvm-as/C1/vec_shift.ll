



define <2 x i64> @t1(<2 x i64> %b1, <2 x i64> %c) nounwind  {
entry:
	%tmp6 = bitcast <2 x i64> %c to <8 x i16>		
	%tmp8 = bitcast <2 x i64> %b1 to <8 x i16>		
	%tmp9 = tail call <8 x i16> @llvm.x86.sse2.psll.w( <8 x i16> %tmp8, <8 x i16> %tmp6 ) nounwind readnone 		
	%tmp10 = bitcast <8 x i16> %tmp9 to <2 x i64>		
	ret <2 x i64> %tmp10
}

define <2 x i64> @t3(<2 x i64> %b1, i32 %c) nounwind  {
entry:
	%tmp2 = bitcast <2 x i64> %b1 to <8 x i16>		
	%tmp4 = insertelement <4 x i32> undef, i32 %c, i32 0		
	%tmp8 = bitcast <4 x i32> %tmp4 to <8 x i16>		
	%tmp9 = tail call <8 x i16> @llvm.x86.sse2.psra.w( <8 x i16> %tmp2, <8 x i16> %tmp8 )		
	%tmp11 = bitcast <8 x i16> %tmp9 to <2 x i64>		
	ret <2 x i64> %tmp11
}

declare <8 x i16> @llvm.x86.sse2.psra.w(<8 x i16>, <8 x i16>) nounwind readnone 

define <2 x i64> @t2(<2 x i64> %b1, <2 x i64> %c) nounwind  {
entry:
	%tmp9 = tail call <2 x i64> @llvm.x86.sse2.psrl.q( <2 x i64> %b1, <2 x i64> %c ) nounwind readnone 		
	ret <2 x i64> %tmp9
}

declare <2 x i64> @llvm.x86.sse2.psrl.q(<2 x i64>, <2 x i64>) nounwind readnone 

declare <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16>, <8 x i16>) nounwind readnone 
