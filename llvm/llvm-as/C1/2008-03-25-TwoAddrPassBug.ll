

define void @t() {
entry:
	%tmp455 = shufflevector <4 x float> zeroinitializer, <4 x float> undef, <4 x i32> < i32 1, i32 0, i32 3, i32 2 >		
	%tmp457 = fmul <4 x float> zeroinitializer, %tmp455		
	%tmp461 = shufflevector <4 x float> %tmp457, <4 x float> undef, <4 x i32> zeroinitializer		
	%tmp465 = shufflevector <4 x float> %tmp457, <4 x float> undef, <4 x i32> < i32 1, i32 1, i32 1, i32 1 >		
	%tmp466 = fsub <4 x float> %tmp461, %tmp465		
	%tmp536 = shufflevector <4 x float> zeroinitializer, <4 x float> %tmp466, <4 x i32> < i32 0, i32 4, i32 1, i32 5 >		
	%tmp542 = shufflevector <4 x float> %tmp536, <4 x float> zeroinitializer, <4 x i32> < i32 6, i32 7, i32 2, i32 3 >		
	%tmp580 = bitcast <4 x float> %tmp542 to <4 x i32>		
	%tmp582 = and <4 x i32> %tmp580, zeroinitializer		
	%tmp591 = or <4 x i32> %tmp582, zeroinitializer		
	%tmp592 = bitcast <4 x i32> %tmp591 to <4 x float>		
	%tmp609 = fdiv <4 x float> < float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00 >, %tmp592		
	%tmp652 = shufflevector <4 x float> %tmp609, <4 x float> undef, <4 x i32> < i32 3, i32 3, i32 3, i32 3 >		
	%tmp662 = fmul <4 x float> zeroinitializer, %tmp652		
	%tmp678 = shufflevector <4 x float> %tmp662, <4 x float> undef, <4 x i32> < i32 1, i32 1, i32 1, i32 1 >		
	%tmp753 = fmul <4 x float> zeroinitializer, %tmp678		
	%tmp754 = fsub <4 x float> zeroinitializer, %tmp753		
	store <4 x float> %tmp754, <4 x float>* null, align 16
	unreachable
}
