


define i128 @f(x86_fp80 %a) nounwind {
entry:
	%tmp78 = fptoui x86_fp80 %a to i128
	ret i128 %tmp78
}
