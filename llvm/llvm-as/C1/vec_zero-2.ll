

define i32 @t() {
entry:
	br i1 true, label %bb4743, label %bb1656
bb1656:		
	ret i32 0
bb1664:		
	br i1 false, label %bb5310, label %bb4743
bb4743:		
	%tmp5256 = bitcast <2 x i64> zeroinitializer to <8 x i16>		
	%tmp5257 = sub <8 x i16> %tmp5256, zeroinitializer		
	%tmp5258 = bitcast <8 x i16> %tmp5257 to <2 x i64>		
	%tmp5265 = bitcast <2 x i64> %tmp5258 to <8 x i16>		
	%tmp5266 = call <16 x i8> @llvm.x86.sse2.packuswb.128( <8 x i16> %tmp5265, <8 x i16> zeroinitializer ) nounwind readnone 		
	%tmp5267 = bitcast <16 x i8> %tmp5266 to <2 x i64>		
	%tmp5294 = and <2 x i64> zeroinitializer, %tmp5267		
	br label %bb5310
bb5310:		
	%tmp5294.pn = phi <2 x i64> [ %tmp5294, %bb4743 ], [ zeroinitializer, %bb1664 ]		
	ret i32 0
}

declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) nounwind readnone
