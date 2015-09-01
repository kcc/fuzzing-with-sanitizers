


define void @test(i8* %stack) {
entry:
	%tmp9 = icmp eq i32 0, 0		
	%tmp30 = icmp eq i32 0, 0		
	br i1 %tmp30, label %cond_next54, label %cond_true31
cond_true860:		
	%tmp879 = tail call <4 x float> @llvm.ppc.altivec.vmaddfp( <4 x float> zeroinitializer, <4 x float> zeroinitializer, <4 x float> zeroinitializer )		
	%tmp880 = bitcast <4 x float> %tmp879 to <4 x i32>		
	%tmp883 = shufflevector <4 x i32> %tmp880, <4 x i32> undef, <4 x i32> < i32 1, i32 1, i32 1, i32 1 >		
	%tmp883.upgrd.1 = bitcast <4 x i32> %tmp883 to <4 x float>		
	%tmp885 = shufflevector <4 x i32> %tmp880, <4 x i32> undef, <4 x i32> < i32 2, i32 2, i32 2, i32 2 >		
	%tmp885.upgrd.2 = bitcast <4 x i32> %tmp885 to <4 x float>		
	br label %cond_next905
cond_true31:		
	ret void
cond_next54:		
	br i1 %tmp9, label %cond_false385, label %bb279
bb279:		
	ret void
cond_false385:		
	%tmp388 = icmp eq i32 0, 0		
	br i1 %tmp388, label %cond_next463, label %cond_true389
cond_true389:		
	ret void
cond_next463:		
	%tmp1208107 = icmp ugt i8* null, %stack		
	br i1 %tmp1208107, label %cond_true1209.preheader, label %bb1212
cond_true498:		
	ret void
cond_true519:		
	%bothcond = or i1 false, false		
	br i1 %bothcond, label %bb855, label %bb980
cond_false548:		
	ret void
bb855:		
	%tmp859 = icmp eq i32 0, 0		
	br i1 %tmp859, label %cond_true860, label %cond_next905
cond_next905:		
	%vfpw2.4 = phi <4 x float> [ %tmp885.upgrd.2, %cond_true860 ], [ undef, %bb855 ]		
	%vfpw1.4 = phi <4 x float> [ %tmp883.upgrd.1, %cond_true860 ], [ undef, %bb855 ]		
	%tmp930 = bitcast <4 x float> zeroinitializer to <4 x i32>		
	ret void
bb980:		
	ret void
cond_true1209.preheader:		
	%tmp496 = and i32 0, 12288		
	switch i32 %tmp496, label %cond_false548 [
		 i32 0, label %cond_true498
		 i32 4096, label %cond_true519
	]
bb1212:		
	ret void
}

declare <4 x float> @llvm.ppc.altivec.vmaddfp(<4 x float>, <4 x float>, <4 x float>)
