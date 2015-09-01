



target datalayout = "e-p:32:32"
define void @foo(i32* %mc, i32* %bp, i32* %ms, i32* %xmb, i32* %mpp, i32* %tpmm, i32* %ip, i32* %tpim, i32* %dpp, i32* %tpdm, i32* %bpi, i32 %M) nounwind {
entry:
	%tmp9 = icmp slt i32 %M, 5		
	br i1 %tmp9, label %return, label %cond_true

cond_true:		
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %cond_true ]		
	%tmp. = shl i32 %indvar, 2		
	%tmp.10 = add nsw i32 %tmp., 1		
	%tmp31 = add nsw i32 %tmp.10, -1		
	%tmp32 = getelementptr i32, i32* %mpp, i32 %tmp31		
	%tmp34 = bitcast i32* %tmp32 to <16 x i8>*		
	%tmp = load <16 x i8>, <16 x i8>* %tmp34, align 1
	%tmp42 = getelementptr i32, i32* %tpmm, i32 %tmp31		
	%tmp42.upgrd.1 = bitcast i32* %tmp42 to <4 x i32>*		
	%tmp46 = load <4 x i32>, <4 x i32>* %tmp42.upgrd.1		
	%tmp54 = bitcast <16 x i8> %tmp to <4 x i32>		
	%tmp55 = add <4 x i32> %tmp54, %tmp46		
	%tmp55.upgrd.2 = bitcast <4 x i32> %tmp55 to <2 x i64>		
	%tmp62 = getelementptr i32, i32* %ip, i32 %tmp31		
	%tmp65 = bitcast i32* %tmp62 to <16 x i8>*		
	%tmp66 = load <16 x i8>, <16 x i8>* %tmp65, align 1
	%tmp73 = getelementptr i32, i32* %tpim, i32 %tmp31		
	%tmp73.upgrd.3 = bitcast i32* %tmp73 to <4 x i32>*		
	%tmp77 = load <4 x i32>, <4 x i32>* %tmp73.upgrd.3		
	%tmp87 = bitcast <16 x i8> %tmp66 to <4 x i32>		
	%tmp88 = add <4 x i32> %tmp87, %tmp77		
	%tmp88.upgrd.4 = bitcast <4 x i32> %tmp88 to <2 x i64>		
	%tmp99 = tail call <4 x i32> @llvm.x86.sse2.psra.d( <4 x i32> %tmp88, <4 x i32> %tmp55 )		
	%tmp99.upgrd.5 = bitcast <4 x i32> %tmp99 to <2 x i64>		
	%tmp110 = xor <2 x i64> %tmp99.upgrd.5, < i64 -1, i64 -1 >		
	%tmp111 = and <2 x i64> %tmp110, %tmp55.upgrd.2		
	%tmp121 = and <2 x i64> %tmp99.upgrd.5, %tmp88.upgrd.4		
	%tmp131 = or <2 x i64> %tmp121, %tmp111		
	%tmp137 = getelementptr i32, i32* %mc, i32 %tmp.10		
	%tmp137.upgrd.7 = bitcast i32* %tmp137 to <2 x i64>*		
	store <2 x i64> %tmp131, <2 x i64>* %tmp137.upgrd.7
	%tmp147 = add nsw i32 %tmp.10, 8		
	%tmp.upgrd.8 = icmp ne i32 %tmp147, %M		
	%indvar.next = add i32 %indvar, 1		
	br i1 %tmp.upgrd.8, label %cond_true, label %return

return:		
	ret void
}

declare <4 x i32> @llvm.x86.sse2.psra.d(<4 x i32>, <4 x i32>)
