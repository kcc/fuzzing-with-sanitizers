


define float @foo(i32* %x, float* %y, i32 %c) nounwind  {
entry:
	%tmp2132 = icmp eq i32 %c, 0		
	br i1 %tmp2132, label %bb23, label %bb.preheader

bb.preheader:		
	%umax = select i1 %tmp2132, i32 1, i32 %c		
	br label %bb

bb:		
	%i.0.reg2mem.0 = phi i32 [ 0, %bb.preheader ], [ %indvar.next, %bb ]		
	%res.0.reg2mem.0 = phi float [ 0.000000e+00, %bb.preheader ], [ %tmp14, %bb ]		
	%tmp3 = getelementptr i32, i32* %x, i32 %i.0.reg2mem.0		
	%tmp4 = load i32, i32* %tmp3, align 4		
	%tmp45 = sitofp i32 %tmp4 to float		
	%tmp8 = getelementptr float, float* %y, i32 %i.0.reg2mem.0		
	%tmp9 = load float, float* %tmp8, align 4		
	%tmp11 = fmul float %tmp9, %tmp45		
	%tmp14 = fadd float %tmp11, %res.0.reg2mem.0		
	%indvar.next = add i32 %i.0.reg2mem.0, 1		
	%exitcond = icmp eq i32 %indvar.next, %umax		
	br i1 %exitcond, label %bb23, label %bb

bb23:		
	%res.0.reg2mem.1 = phi float [ 0.000000e+00, %entry ], [ %tmp14, %bb ]		
	ret float %res.0.reg2mem.1
}
