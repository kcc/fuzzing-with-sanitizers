


@g_d = external global double		

define void @foo(float %yIncr) {
entry:
	br i1 undef, label %bb, label %bb4

bb:		
	%0 = call arm_aapcs_vfpcc  float @bar()		
	%1 = fpext float %0 to double		
	store double %1, double* @g_d, align 8
	br label %bb4

bb4:		
	unreachable
}

declare arm_aapcs_vfpcc float @bar()
