

define i128 @__fixsfdi(float %a) {
entry:
	%a_addr = alloca float		
	%retval = alloca i128, align 16		
	%tmp = alloca i128, align 16		
	%"alloca point" = bitcast i32 0 to i32		
	store float %a, float* %a_addr
	%tmp1 = load float, float* %a_addr, align 4		
	%tmp2 = fcmp olt float %tmp1, 0.000000e+00		
	%tmp23 = zext i1 %tmp2 to i8		
	%toBool = icmp ne i8 %tmp23, 0		
	br i1 %toBool, label %bb, label %bb8
bb:		
	%tmp4 = load float, float* %a_addr, align 4		
	%tmp5 = fsub float -0.000000e+00, %tmp4		
	%tmp6 = call i128 @__fixunssfDI( float %tmp5 ) nounwind 		
	%tmp7 = sub i128 0, %tmp6		
	store i128 %tmp7, i128* %tmp, align 16
	br label %bb11
bb8:		
	%tmp9 = load float, float* %a_addr, align 4		
	%tmp10 = call i128 @__fixunssfDI( float %tmp9 ) nounwind 		
	store i128 %tmp10, i128* %tmp, align 16
	br label %bb11
bb11:		
	%tmp12 = load i128, i128* %tmp, align 16		
	store i128 %tmp12, i128* %retval, align 16
	br label %return
return:		
	%retval13 = load i128, i128* %retval		
	ret i128 %retval13
}

declare i128 @__fixunssfDI(float)
