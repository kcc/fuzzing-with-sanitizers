

define i64 @__divsc3(float %a, float %b, float %c, float %d) nounwind readnone  {
entry:
	br i1 false, label %bb56, label %bb33

bb33:		
	br label %bb56

bb56:		
	%tmp36.pn = phi float [ 0.000000e+00, %bb33 ], [ 0.000000e+00, %entry ]		
	%b.pn509 = phi float [ %b, %bb33 ], [ %a, %entry ]		
	%a.pn = phi float [ %a, %bb33 ], [ %b, %entry ]		
	%tmp41.pn508 = phi float [ 0.000000e+00, %bb33 ], [ 0.000000e+00, %entry ]		
	%tmp51.pn = phi float [ 0.000000e+00, %bb33 ], [ %a, %entry ]		
	%tmp44.pn = fmul float %tmp36.pn, %b.pn509		
	%tmp46.pn = fadd float %tmp44.pn, %a.pn		
	%tmp53.pn = fsub float 0.000000e+00, %tmp51.pn		
	%x.0 = fdiv float %tmp46.pn, %tmp41.pn508		
	%y.0 = fdiv float %tmp53.pn, 0.000000e+00		
	br i1 false, label %bb433, label %bb98

bb98:		
	%tmp102 = fmul float 0.000000e+00, %a		
	%tmp106 = fmul float 0.000000e+00, %b		
	br label %bb433

bb433:		
	%x.1 = phi float [ %tmp102, %bb98 ], [ %x.0, %bb56 ]		
	%y.1 = phi float [ %tmp106, %bb98 ], [ %y.0, %bb56 ]		
	%tmp460 = fadd float %y.1, 0.000000e+00		
	ret i64 0
}
