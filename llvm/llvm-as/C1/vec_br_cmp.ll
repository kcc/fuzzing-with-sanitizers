





define void @test(<4 x float>* %A, <4 x float>* %B) {
	%tmp = load <4 x float>, <4 x float>* %A		
	%tmp3 = load <4 x float>, <4 x float>* %B		
	%tmp.upgrd.1 = tail call i32 @llvm.ppc.altivec.vcmpeqfp.p( i32 1, <4 x float> %tmp, <4 x float> %tmp3 )		
	%tmp.upgrd.2 = icmp eq i32 %tmp.upgrd.1, 0		
	br i1 %tmp.upgrd.2, label %cond_true, label %UnifiedReturnBlock

cond_true:		
	store <4 x float> zeroinitializer, <4 x float>* %B
	ret void

UnifiedReturnBlock:		
	ret void
}

declare i32 @llvm.ppc.altivec.vcmpeqfp.p(i32, <4 x float>, <4 x float>)
