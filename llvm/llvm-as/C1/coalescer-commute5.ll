

define i32 @t() {
entry:
	br i1 true, label %bb1664, label %bb1656
bb1656:		
	ret i32 0
bb1664:		
	%tmp4297 = bitcast <16 x i8> zeroinitializer to <2 x i64>		
	%tmp4351 = call <16 x i8> @llvm.x86.sse2.pcmpeq.b( <16 x i8> zeroinitializer, <16 x i8> zeroinitializer ) nounwind readnone 		
	br i1 false, label %bb5310, label %bb4743
bb4743:		
	%tmp4360.not28 = or <2 x i64> zeroinitializer, %tmp4297		
	br label %bb5310
bb5310:		
	%tmp4360.not28.pn = phi <2 x i64> [ %tmp4360.not28, %bb4743 ], [ %tmp4297, %bb1664 ]		
	%tmp4415.not.pn = or <2 x i64> zeroinitializer, %tmp4360.not28.pn		
	ret i32 0
}

declare <16 x i8> @llvm.x86.sse2.pcmpeq.b(<16 x i8>, <16 x i8>) nounwind readnone 
