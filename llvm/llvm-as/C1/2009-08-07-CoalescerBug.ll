


	%a = type { i32 (...)** }
	%b = type { %a }
	%c = type { float, float, float, float }

declare arm_aapcs_vfpcc float @bar(%c*)

define arm_aapcs_vfpcc void @foo(%b* %x, %c* %y) {
entry:
	%0 = call arm_aapcs_vfpcc  float @bar(%c* %y)		
	%1 = fadd float undef, undef		
	store float %1, float* undef, align 8
	ret void
}
