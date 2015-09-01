

define void @SolveCubic(double %a, double %b, double %c, double %d, i32* %solutions, double* %x) {
entry:
	%tmp71 = load x86_fp80, x86_fp80* null, align 16		
	%tmp72 = fdiv x86_fp80 %tmp71, 0xKC000C000000000000000		
	%tmp73 = fadd x86_fp80 0xK00000000000000000000, %tmp72		
	%tmp7374 = fptrunc x86_fp80 %tmp73 to double		
	store double %tmp7374, double* null, align 8
	%tmp81 = load double, double* null, align 8		
	%tmp82 = fadd double %tmp81, 0x401921FB54442D18		
	%tmp83 = fdiv double %tmp82, 3.000000e+00		
	%tmp84 = call double @cos( double %tmp83 )		
	%tmp85 = fmul double 0.000000e+00, %tmp84		
	%tmp8586 = fpext double %tmp85 to x86_fp80		
	%tmp87 = load x86_fp80, x86_fp80* null, align 16		
	%tmp88 = fdiv x86_fp80 %tmp87, 0xKC000C000000000000000		
	%tmp89 = fadd x86_fp80 %tmp8586, %tmp88		
	%tmp8990 = fptrunc x86_fp80 %tmp89 to double		
	store double %tmp8990, double* null, align 8
	%tmp97 = load double, double* null, align 8		
	%tmp98 = fadd double %tmp97, 0x402921FB54442D18		
	%tmp99 = fdiv double %tmp98, 3.000000e+00		
	%tmp100 = call double @cos( double %tmp99 )		
	%tmp101 = fmul double 0.000000e+00, %tmp100		
	%tmp101102 = fpext double %tmp101 to x86_fp80		
	%tmp103 = load x86_fp80, x86_fp80* null, align 16		
	%tmp104 = fdiv x86_fp80 %tmp103, 0xKC000C000000000000000		
	%tmp105 = fadd x86_fp80 %tmp101102, %tmp104		
	%tmp105106 = fptrunc x86_fp80 %tmp105 to double		
	store double %tmp105106, double* null, align 8
	ret void
}

declare double @cos(double)
