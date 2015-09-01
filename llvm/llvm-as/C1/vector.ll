


%d8 = type <8 x double>
%f1 = type <1 x float>
%f2 = type <2 x float>
%f4 = type <4 x float>
%f8 = type <8 x float>
%i4 = type <4 x i32>



define void @test_f1(%f1* %P, %f1* %Q, %f1* %S) {
	%p = load %f1, %f1* %P		
	%q = load %f1, %f1* %Q		
	%R = fadd %f1 %p, %q		
	store %f1 %R, %f1* %S
	ret void
}

define void @test_f2(%f2* %P, %f2* %Q, %f2* %S) {
	%p = load %f2, %f2* %P		
	%q = load %f2, %f2* %Q		
	%R = fadd %f2 %p, %q		
	store %f2 %R, %f2* %S
	ret void
}

define void @test_f4(%f4* %P, %f4* %Q, %f4* %S) {
	%p = load %f4, %f4* %P		
	%q = load %f4, %f4* %Q		
	%R = fadd %f4 %p, %q		
	store %f4 %R, %f4* %S
	ret void
}

define void @test_f8(%f8* %P, %f8* %Q, %f8* %S) {
	%p = load %f8, %f8* %P		
	%q = load %f8, %f8* %Q		
	%R = fadd %f8 %p, %q		
	store %f8 %R, %f8* %S
	ret void
}

define void @test_fmul(%f8* %P, %f8* %Q, %f8* %S) {
	%p = load %f8, %f8* %P		
	%q = load %f8, %f8* %Q		
	%R = fmul %f8 %p, %q		
	store %f8 %R, %f8* %S
	ret void
}

define void @test_div(%f8* %P, %f8* %Q, %f8* %S) {
	%p = load %f8, %f8* %P		
	%q = load %f8, %f8* %Q		
	%R = fdiv %f8 %p, %q		
	store %f8 %R, %f8* %S
	ret void
}




define void @test_cst(%f4* %P, %f4* %S) {
	%p = load %f4, %f4* %P		
	%R = fadd %f4 %p, < float 0x3FB99999A0000000, float 1.000000e+00, float 2.000000e+00, float 4.500000e+00 >		
	store %f4 %R, %f4* %S
	ret void
}

define void @test_zero(%f4* %P, %f4* %S) {
	%p = load %f4, %f4* %P		
	%R = fadd %f4 %p, zeroinitializer		
	store %f4 %R, %f4* %S
	ret void
}

define void @test_undef(%f4* %P, %f4* %S) {
	%p = load %f4, %f4* %P		
	%R = fadd %f4 %p, undef		
	store %f4 %R, %f4* %S
	ret void
}

define void @test_constant_insert(%f4* %S) {
	%R = insertelement %f4 zeroinitializer, float 1.000000e+01, i32 0		
	store %f4 %R, %f4* %S
	ret void
}

define void @test_variable_buildvector(float %F, %f4* %S) {
	%R = insertelement %f4 zeroinitializer, float %F, i32 0		
	store %f4 %R, %f4* %S
	ret void
}

define void @test_scalar_to_vector(float %F, %f4* %S) {
	%R = insertelement %f4 undef, float %F, i32 0		
	store %f4 %R, %f4* %S
	ret void
}

define float @test_extract_elt(%f8* %P) {
	%p = load %f8, %f8* %P		
	%R = extractelement %f8 %p, i32 3		
	ret float %R
}

define double @test_extract_elt2(%d8* %P) {
	%p = load %d8, %d8* %P		
	%R = extractelement %d8 %p, i32 3		
	ret double %R
}

define void @test_cast_1(%f4* %b, %i4* %a) {
	%tmp = load %f4, %f4* %b		
	%tmp2 = fadd %f4 %tmp, < float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00 >		
	%tmp3 = bitcast %f4 %tmp2 to %i4		
	%tmp4 = add %i4 %tmp3, < i32 1, i32 2, i32 3, i32 4 >		
	store %i4 %tmp4, %i4* %a
	ret void
}

define void @test_cast_2(%f8* %a, <8 x i32>* %b) {
	%T = load %f8, %f8* %a		
	%T2 = bitcast %f8 %T to <8 x i32>		
	store <8 x i32> %T2, <8 x i32>* %b
	ret void
}



define void @splat(%f4* %P, %f4* %Q, float %X) {
	%tmp = insertelement %f4 undef, float %X, i32 0		
	%tmp2 = insertelement %f4 %tmp, float %X, i32 1		
	%tmp4 = insertelement %f4 %tmp2, float %X, i32 2		
	%tmp6 = insertelement %f4 %tmp4, float %X, i32 3		
	%q = load %f4, %f4* %Q		
	%R = fadd %f4 %q, %tmp6		
	store %f4 %R, %f4* %P
	ret void
}

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

define <2 x i32*> @vector_gep(<2 x [3 x {i32, i32}]*> %a) {
    %w = getelementptr [3 x {i32, i32}], <2 x [3 x {i32, i32}]*> %a, <2 x i32> <i32 1, i32 2>, <2 x i32> <i32 2, i32 3>, <2 x i32> <i32 1, i32 1>
      ret <2 x i32*> %w
}
