


@NNTOT = weak global i32 0		
@G = weak global float 0.000000e+00		

define void @runcont(i32* %source) nounwind  {
entry:
	%tmp10 = load i32, i32* @NNTOT, align 4		
	br label %bb

bb:		
	%neuron.0 = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%thesum.0 = phi float [ 0.000000e+00, %entry ], [ %tmp6, %bb ]		
	%tmp2 = getelementptr i32, i32* %source, i32 %neuron.0		
	%tmp3 = load i32, i32* %tmp2, align 4		
	%tmp34 = sitofp i32 %tmp3 to float		
	%tmp6 = fadd float %tmp34, %thesum.0		
	%indvar.next = add i32 %neuron.0, 1		
	%exitcond = icmp eq i32 %indvar.next, %tmp10		
	br i1 %exitcond, label %bb13, label %bb

bb13:		
	store volatile float %tmp6, float* @G, align 4
	ret void
}
