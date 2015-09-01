


define i32 @value(i64 %b1, i64 %b2) nounwind readonly {
entry:
	%0 = icmp eq i32 undef, 0		
	%mod.0.ph.ph = select i1 %0, float -1.000000e+00, float 1.000000e+00		
	br label %bb7

bb7:		
	br i1 undef, label %bb86.preheader, label %bb7

bb86.preheader:		
	%1 = fmul float %mod.0.ph.ph, 5.000000e+00		
	br label %bb79

bb79:		
	br i1 undef, label %bb119, label %bb79

bb119:		
	ret i32 undef
}
