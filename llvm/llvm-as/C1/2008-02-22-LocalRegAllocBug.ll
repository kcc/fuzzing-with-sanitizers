



define void @transpose4x4(i8* %dst, i8* %src, i32 %dst_stride, i32 %src_stride) {
entry:
	%dst_addr = alloca i8*		
	%src_addr = alloca i8*		
	%dst_stride_addr = alloca i32		
	%src_stride_addr = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	store i8* %dst, i8** %dst_addr
	store i8* %src, i8** %src_addr
	store i32 %dst_stride, i32* %dst_stride_addr
	store i32 %src_stride, i32* %src_stride_addr
	%tmp = load i8*, i8** %dst_addr, align 4		
	%tmp1 = getelementptr i8, i8* %tmp, i32 0		
	%tmp12 = bitcast i8* %tmp1 to i32*		
	%tmp3 = load i8*, i8** %dst_addr, align 4		
	%tmp4 = load i32, i32* %dst_stride_addr, align 4		
	%tmp5 = getelementptr i8, i8* %tmp3, i32 %tmp4		
	%tmp56 = bitcast i8* %tmp5 to i32*		
	%tmp7 = load i32, i32* %dst_stride_addr, align 4		
	%tmp8 = mul i32 %tmp7, 2		
	%tmp9 = load i8*, i8** %dst_addr, align 4		
	%tmp10 = getelementptr i8, i8* %tmp9, i32 %tmp8		
	%tmp1011 = bitcast i8* %tmp10 to i32*		
	%tmp13 = load i32, i32* %dst_stride_addr, align 4		
	%tmp14 = mul i32 %tmp13, 3		
	%tmp15 = load i8*, i8** %dst_addr, align 4		
	%tmp16 = getelementptr i8, i8* %tmp15, i32 %tmp14		
	%tmp1617 = bitcast i8* %tmp16 to i32*		
	%tmp18 = load i8*, i8** %src_addr, align 4		
	%tmp19 = getelementptr i8, i8* %tmp18, i32 0		
	%tmp1920 = bitcast i8* %tmp19 to i32*		
	%tmp21 = load i8*, i8** %src_addr, align 4		
	%tmp22 = load i32, i32* %src_stride_addr, align 4		
	%tmp23 = getelementptr i8, i8* %tmp21, i32 %tmp22		
	%tmp2324 = bitcast i8* %tmp23 to i32*		
	%tmp25 = load i32, i32* %src_stride_addr, align 4		
	%tmp26 = mul i32 %tmp25, 2		
	%tmp27 = load i8*, i8** %src_addr, align 4		
	%tmp28 = getelementptr i8, i8* %tmp27, i32 %tmp26		
	%tmp2829 = bitcast i8* %tmp28 to i32*		
	%tmp30 = load i32, i32* %src_stride_addr, align 4		
	%tmp31 = mul i32 %tmp30, 3		
	%tmp32 = load i8*, i8** %src_addr, align 4		
	%tmp33 = getelementptr i8, i8* %tmp32, i32 %tmp31		
	%tmp3334 = bitcast i8* %tmp33 to i32*		
	call void asm sideeffect "movd  $4, %mm0                \0A\09movd  $5, %mm1                \0A\09movd  $6, %mm2                \0A\09movd  $7, %mm3                \0A\09punpcklbw %mm1, %mm0         \0A\09punpcklbw %mm3, %mm2         \0A\09movq %mm0, %mm1              \0A\09punpcklwd %mm2, %mm0         \0A\09punpckhwd %mm2, %mm1         \0A\09movd  %mm0, $0                \0A\09punpckhdq %mm0, %mm0         \0A\09movd  %mm0, $1                \0A\09movd  %mm1, $2                \0A\09punpckhdq %mm1, %mm1         \0A\09movd  %mm1, $3                \0A\09", "=*m,=*m,=*m,=*m,*m,*m,*m,*m,~{dirflag},~{fpsr},~{flags}"( i32* %tmp12, i32* %tmp56, i32* %tmp1011, i32* %tmp1617, i32* %tmp1920, i32* %tmp2324, i32* %tmp2829, i32* %tmp3334 ) nounwind 
	br label %return

return:		
	ret void
}
