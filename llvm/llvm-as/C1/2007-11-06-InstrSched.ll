

define float @foo(i32* %x, float* %y, i32 %c) nounwind {
entry:
	%tmp2132 = icmp eq i32 %c, 0		
	br i1 %tmp2132, label %bb23, label %bb18

bb18:		
	%i.0.reg2mem.0 = phi i32 [ 0, %entry ], [ %tmp17, %bb18 ]		
	%res.0.reg2mem.0 = phi float [ 0.000000e+00, %entry ], [ %tmp14, %bb18 ]		
	%tmp3 = getelementptr i32, i32* %x, i32 %i.0.reg2mem.0		
	%tmp4 = load i32, i32* %tmp3, align 4		
	%tmp45 = sitofp i32 %tmp4 to float		
	%tmp8 = getelementptr float, float* %y, i32 %i.0.reg2mem.0		
	%tmp9 = load float, float* %tmp8, align 4		
	%tmp11 = fmul float %tmp9, %tmp45		
	%tmp14 = fadd float %tmp11, %res.0.reg2mem.0		
	%tmp17 = add i32 %i.0.reg2mem.0, 1		
	%tmp21 = icmp ult i32 %tmp17, %c		
	br i1 %tmp21, label %bb18, label %bb23

bb23:		
	%res.0.reg2mem.1 = phi float [ 0.000000e+00, %entry ], [ %tmp14, %bb18 ]		
	ret float %res.0.reg2mem.1
}
