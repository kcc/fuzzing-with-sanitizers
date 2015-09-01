
target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f128:64:128"
target triple = "powerpc-apple-darwin9"

define hidden i256 @__divtc3(ppc_fp128 %a, ppc_fp128 %b, ppc_fp128 %c, ppc_fp128 %d) nounwind readnone  {
entry:
	call ppc_fp128 @fabsl( ppc_fp128 %d ) nounwind readnone 		
	fcmp olt ppc_fp128 0xM00000000000000000000000000000000, %0		
	%.pn106 = select i1 %1, ppc_fp128 %a, ppc_fp128 0xM00000000000000000000000000000000		
	%.pn = fsub ppc_fp128 0xM00000000000000000000000000000000, %.pn106		
	%y.0 = fdiv ppc_fp128 %.pn, 0xM00000000000000000000000000000000		
	fmul ppc_fp128 %y.0, 0xM3FF00000000000000000000000000000		
	fadd ppc_fp128 %2, fmul (ppc_fp128 0xM00000000000000000000000000000000, ppc_fp128 0xM00000000000000000000000000000000)		
	%tmpi = fadd ppc_fp128 %3, 0xM00000000000000000000000000000000		
	store ppc_fp128 %tmpi, ppc_fp128* null, align 16
	ret i256 0
}

declare ppc_fp128 @fabsl(ppc_fp128) nounwind readnone 
