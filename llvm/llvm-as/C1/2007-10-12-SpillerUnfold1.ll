

define fastcc void @fht(float* %fz, i16 signext  %n) {
entry:
	br i1 true, label %bb171.preheader, label %bb431

bb171.preheader:		
	%tmp176 = fadd float 0.000000e+00, 1.000000e+00		
	%gi.1 = getelementptr float, float* %fz, i32 0		
	%tmp240 = load float, float* %gi.1, align 4		
	%tmp242 = fsub float %tmp240, 0.000000e+00		
	%tmp251 = getelementptr float, float* %fz, i32 0		
	%tmp252 = load float, float* %tmp251, align 4		
	%tmp258 = getelementptr float, float* %fz, i32 0		
	%tmp259 = load float, float* %tmp258, align 4		
	%tmp261 = fmul float %tmp259, %tmp176		
	%tmp262 = fsub float 0.000000e+00, %tmp261		
	%tmp269 = fmul float %tmp252, %tmp176		
	%tmp276 = fmul float %tmp259, 0.000000e+00		
	%tmp277 = fadd float %tmp269, %tmp276		
	%tmp281 = getelementptr float, float* %fz, i32 0		
	%tmp282 = load float, float* %tmp281, align 4		
	%tmp284 = fsub float %tmp282, %tmp277		
	%tmp291 = fadd float %tmp282, %tmp277		
	%tmp298 = fsub float 0.000000e+00, %tmp262		
	%tmp305 = fadd float 0.000000e+00, %tmp262		
	%tmp315 = fmul float 0.000000e+00, %tmp291		
	%tmp318 = fmul float 0.000000e+00, %tmp298		
	%tmp319 = fadd float %tmp315, %tmp318		
	%tmp329 = fadd float 0.000000e+00, %tmp319		
	store float %tmp329, float* null, align 4
	%tmp336 = fsub float %tmp242, 0.000000e+00		
	store float %tmp336, float* %tmp258, align 4
	%tmp343 = fadd float %tmp242, 0.000000e+00		
	store float %tmp343, float* null, align 4
	%tmp355 = fmul float 0.000000e+00, %tmp305		
	%tmp358 = fmul float 0.000000e+00, %tmp284		
	%tmp359 = fadd float %tmp355, %tmp358		
	%tmp369 = fadd float 0.000000e+00, %tmp359		
	store float %tmp369, float* %gi.1, align 4
	ret void

bb431:		
	ret void
}
