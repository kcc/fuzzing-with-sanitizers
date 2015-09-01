



%i4 = type <4 x i32>

define void @splat_i4(%i4* %P, %i4* %Q, i32 %X) {
	%tmp = insertelement %i4 undef, i32 %X, i32 0		
	%tmp2 = insertelement %i4 %tmp, i32 %X, i32 1		
	%tmp4 = insertelement %i4 %tmp2, i32 %X, i32 2		
	%tmp6 = insertelement %i4 %tmp4, i32 %X, i32 3		
	%q = load %i4, %i4* %Q		
	%R = add %i4 %q, %tmp6		
	store %i4 %R, %i4* %P
	ret void
}
