


define hidden void @__mulxc3({ x86_fp80, x86_fp80 }* noalias nocapture sret %agg.result, x86_fp80 %a, x86_fp80 %b, x86_fp80 %c, x86_fp80 %d) nounwind {
entry:
	%0 = fmul x86_fp80 %b, %d		
	%1 = fsub x86_fp80 0xK00000000000000000000, %0		
	%2 = fadd x86_fp80 0xK00000000000000000000, 0xK00000000000000000000		
	%3 = fcmp uno x86_fp80 %1, 0xK00000000000000000000		
	%4 = fcmp uno x86_fp80 %2, 0xK00000000000000000000		
	%or.cond = and i1 %3, %4		
	br i1 %or.cond, label %bb47, label %bb71

bb47:		
	%5 = fcmp uno x86_fp80 %a, 0xK00000000000000000000		
	br i1 %5, label %bb60, label %bb62

bb60:		
	%6 = tail call x86_fp80 @copysignl(x86_fp80 0xK00000000000000000000, x86_fp80 %a) nounwind readnone		
	br label %bb62

bb62:		
	unreachable

bb71:		
	ret void
}

declare x86_fp80 @copysignl(x86_fp80, x86_fp80) nounwind readnone
