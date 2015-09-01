

define void @__multc3({ ppc_fp128, ppc_fp128 }* noalias sret %agg.result, ppc_fp128 %a, ppc_fp128 %b, ppc_fp128 %c, ppc_fp128 %d) nounwind {
entry:
	%.pre139 = and i1 false, false		
	br i1 false, label %bb6, label %bb21

bb6:		
	%0 = tail call ppc_fp128 @copysignl(ppc_fp128 0xM00000000000000000000000000000000, ppc_fp128 %a) nounwind readnone		
	%iftmp.1.0 = select i1 %.pre139, ppc_fp128 0xM3FF00000000000000000000000000000, ppc_fp128 0xM00000000000000000000000000000000		
	%1 = tail call ppc_fp128 @copysignl(ppc_fp128 %iftmp.1.0, ppc_fp128 %b) nounwind readnone		
	unreachable

bb21:		
	unreachable
}

declare ppc_fp128 @copysignl(ppc_fp128, ppc_fp128) nounwind readnone
