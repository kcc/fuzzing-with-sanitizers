








@u1 = external global x86_mmx

define void @t1(x86_mmx %v1) nounwind  {












	store x86_mmx %v1, x86_mmx* @u1, align 8
	ret void
}

@u2 = external global x86_mmx

define void @t2(<1 x i64> %v1) nounwind  {














        %tmp = bitcast <1 x i64> %v1 to x86_mmx
	store x86_mmx %tmp, x86_mmx* @u2, align 8
	ret void
}
