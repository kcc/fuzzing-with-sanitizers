













target triple = "arm-apple-darwin8"

define void @foo(i32* %mc, i32* %mpp, i32* %ip, i32* %dpp, i32* %tpmm, i32 %M, i32* %tpim, i32* %tpdm, i32* %bp, i32* %ms, i32 %xmb) {
entry:
	%tmp6584 = icmp slt i32 %M, 1		
	br i1 %tmp6584, label %return, label %bb

bb:		
	%indvar = phi i32 [ 0, %entry ], [ %k.069.0, %cond_next59 ]		
	%k.069.0 = add i32 %indvar, 1		
	%tmp3 = getelementptr i32, i32* %mpp, i32 %indvar		
	%tmp4 = load i32, i32* %tmp3		
	%tmp8 = getelementptr i32, i32* %tpmm, i32 %indvar		
	%tmp9 = load i32, i32* %tmp8		
	%tmp10 = add i32 %tmp9, %tmp4		
	%tmp13 = getelementptr i32, i32* %mc, i32 %k.069.0		
	store i32 %tmp10, i32* %tmp13
	%tmp17 = getelementptr i32, i32* %ip, i32 %indvar		
	%tmp18 = load i32, i32* %tmp17		
	%tmp22 = getelementptr i32, i32* %tpim, i32 %indvar		
	%tmp23 = load i32, i32* %tmp22		
	%tmp24 = add i32 %tmp23, %tmp18		
	%tmp30 = icmp sgt i32 %tmp24, %tmp10		
	br i1 %tmp30, label %cond_true, label %cond_next

cond_true:		
	store i32 %tmp24, i32* %tmp13
	br label %cond_next

cond_next:		
	%tmp39 = load i32, i32* %tmp13		
	%tmp42 = getelementptr i32, i32* %ms, i32 %k.069.0		
	%tmp43 = load i32, i32* %tmp42		
	%tmp44 = add i32 %tmp43, %tmp39		
	store i32 %tmp44, i32* %tmp13
	%tmp52 = icmp slt i32 %tmp44, -987654321		
	br i1 %tmp52, label %cond_true55, label %cond_next59

cond_true55:		
	store i32 -987654321, i32* %tmp13
	br label %cond_next59

cond_next59:		
	%tmp61 = add i32 %indvar, 2		
	%tmp65 = icmp sgt i32 %tmp61, %M		
	br i1 %tmp65, label %return, label %bb

return:		
	ret void
}
