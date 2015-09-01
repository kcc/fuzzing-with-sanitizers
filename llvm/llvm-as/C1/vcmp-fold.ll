




define void @test(<4 x float>* %x, <4 x float>* %y, i32* %P) {
entry:
	%tmp = load <4 x float>, <4 x float>* %x		
	%tmp2 = load <4 x float>, <4 x float>* %y		
	%tmp.upgrd.1 = call i32 @llvm.ppc.altivec.vcmpbfp.p( i32 1, <4 x float> %tmp, <4 x float> %tmp2 )		
	%tmp4 = load <4 x float>, <4 x float>* %x		
	%tmp6 = load <4 x float>, <4 x float>* %y		
	%tmp.upgrd.2 = call <4 x i32> @llvm.ppc.altivec.vcmpbfp( <4 x float> %tmp4, <4 x float> %tmp6 )		
	%tmp7 = bitcast <4 x i32> %tmp.upgrd.2 to <4 x float>		
	store <4 x float> %tmp7, <4 x float>* %x
	store i32 %tmp.upgrd.1, i32* %P
	ret void
}

declare i32 @llvm.ppc.altivec.vcmpbfp.p(i32, <4 x float>, <4 x float>)

declare <4 x i32> @llvm.ppc.altivec.vcmpbfp(<4 x float>, <4 x float>)
