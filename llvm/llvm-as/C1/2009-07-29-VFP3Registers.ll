

@a = external global double		

declare double @llvm.exp.f64(double) nounwind readonly

define void @findratio(double* nocapture %res1, double* nocapture %res2) nounwind {
entry:
	br label %bb

bb:		
	br i1 undef, label %bb28, label %bb

bb28:		
	%0 = load double, double* @a, align 4		
	%1 = fadd double %0, undef		
	br i1 undef, label %bb59, label %bb60

bb59:		
	%2 = fsub double -0.000000e+00, undef		
	br label %bb61

bb60:		
	%3 = tail call double @llvm.exp.f64(double undef) nounwind		
	%4 = fsub double -0.000000e+00, %3		
	%5 = fsub double -0.000000e+00, undef		
	%6 = fsub double -0.000000e+00, undef		
	br label %bb61

bb61:		
	%.pn201 = phi double [ undef, %bb59 ], [ undef, %bb60 ]		
	%.pn111 = phi double [ undef, %bb59 ], [ undef, %bb60 ]		
	%.pn452 = phi double [ undef, %bb59 ], [ undef, %bb60 ]		
	%.pn85 = phi double [ undef, %bb59 ], [ undef, %bb60 ]		
	%.pn238 = phi double [ 0.000000e+00, %bb59 ], [ 0.000000e+00, %bb60 ]		
	%.pn39 = phi double [ undef, %bb59 ], [ undef, %bb60 ]		
	%.pn230 = phi double [ undef, %bb59 ], [ undef, %bb60 ]		
	%.pn228 = phi double [ 0.000000e+00, %bb59 ], [ undef, %bb60 ]		
	%.pn224 = phi double [ undef, %bb59 ], [ undef, %bb60 ]		
	%.pn222 = phi double [ 0.000000e+00, %bb59 ], [ undef, %bb60 ]		
	%.pn218 = phi double [ %2, %bb59 ], [ %4, %bb60 ]		
	%.pn214 = phi double [ 0.000000e+00, %bb59 ], [ undef, %bb60 ]		
	%.pn212 = phi double [ %2, %bb59 ], [ %4, %bb60 ]		
	%.pn213 = phi double [ undef, %bb59 ], [ undef, %bb60 ]		
	%.pn210 = phi double [ undef, %bb59 ], [ %5, %bb60 ]		
	%.pn202 = phi double [ undef, %bb59 ], [ %6, %bb60 ]		
	%.pn390 = fdiv double %.pn452, undef		
	%.pn145 = fdiv double %.pn238, %1		
	%.pn138 = fdiv double %.pn230, undef		
	%.pn139 = fdiv double %.pn228, undef		
	%.pn134 = fdiv double %.pn224, %0		
	%.pn135 = fdiv double %.pn222, %1		
	%.pn133 = fdiv double %.pn218, undef		
	%.pn128 = fdiv double %.pn214, undef		
	%.pn129 = fdiv double %.pn212, %.pn213		
	%.pn126 = fdiv double %.pn210, undef		
	%.pn54.in = fmul double undef, %.pn201		
	%.pn42.in = fmul double undef, undef		
	%.pn76 = fsub double %.pn138, %.pn139		
	%.pn74 = fsub double %.pn134, %.pn135		
	%.pn70 = fsub double %.pn128, %.pn129		
	%.pn54 = fdiv double %.pn54.in, 6.000000e+00		
	%.pn64 = fmul double undef, 0x3FE5555555555555		
	%.pn65 = fmul double undef, undef		
	%.pn50 = fmul double undef, %.pn111		
	%.pn42 = fdiv double %.pn42.in, 6.000000e+00		
	%.pn40 = fmul double undef, %.pn85		
	%.pn56 = fadd double %.pn76, undef		
	%.pn57 = fmul double %.pn74, undef		
	%.pn36 = fadd double undef, undef		
	%.pn37 = fmul double %.pn70, undef		
	%.pn33 = fmul double undef, 0x3FC5555555555555		
	%.pn29 = fsub double %.pn64, %.pn65		
	%.pn21 = fadd double undef, undef		
	%.pn27 = fmul double undef, 0x3FC5555555555555		
	%.pn11 = fadd double %.pn56, %.pn57		
	%.pn32 = fmul double %.pn54, undef		
	%.pn26 = fmul double %.pn42, undef		
	%.pn15 = fmul double 0.000000e+00, %.pn39		
	%.pn7 = fadd double %.pn36, %.pn37		
	%.pn30 = fsub double %.pn32, %.pn33		
	%.pn28 = fadd double %.pn30, 0.000000e+00		
	%.pn24 = fsub double %.pn28, %.pn29		
	%.pn22 = fsub double %.pn26, %.pn27		
	%.pn20 = fadd double %.pn24, undef		
	%.pn18 = fadd double %.pn22, 0.000000e+00		
	%.pn16 = fsub double %.pn20, %.pn21		
	%.pn14 = fsub double %.pn18, undef		
	%.pn12 = fadd double %.pn16, undef		
	%.pn10 = fadd double %.pn14, %.pn15		
	%.pn8 = fsub double %.pn12, undef		
	%.pn6 = fsub double %.pn10, %.pn11		
	%.pn4 = fadd double %.pn8, undef		
	%.pn2 = fadd double %.pn6, %.pn7		
	%N1.0 = fsub double %.pn4, undef		
	%D1.0 = fsub double %.pn2, undef		
	br i1 undef, label %bb62, label %bb64

bb62:		
	%7 = fadd double %D1.0, undef		
	br label %bb64

bb64:		
	%.pn = phi double [ undef, %bb62 ], [ %N1.0, %bb61 ]		
	%.pn1 = phi double [ %7, %bb62 ], [ %D1.0, %bb61 ]		
	%x.1 = fdiv double %.pn, %.pn1		
	ret void
}
