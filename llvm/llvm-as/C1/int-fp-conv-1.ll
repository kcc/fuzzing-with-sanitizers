


define i64 @__fixunstfdi(ppc_fp128 %a) nounwind  {
entry:
	%tmp1213 = uitofp i64 0 to ppc_fp128		
	%tmp15 = fsub ppc_fp128 %a, %tmp1213		
	%tmp2829 = fptoui ppc_fp128 %tmp15 to i32		
	%tmp282930 = zext i32 %tmp2829 to i64		
	%tmp32 = add i64 %tmp282930, 0		
	ret i64 %tmp32
}
