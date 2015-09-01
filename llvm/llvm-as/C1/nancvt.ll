






target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i686-apple-darwin8"
	%struct..0anon = type { float }
	%struct..1anon = type { double }
@fnan = constant [3 x i32] [ i32 2143831397, i32 2143831396, i32 2143831398 ]		
@dnan = constant [3 x i64] [ i64 9223235251041752696, i64 9223235251041752697, i64 9223235250773317239 ], align 8		
@fsnan = constant [3 x i32] [ i32 2139637093, i32 2139637092, i32 2139637094 ]		
@dsnan = constant [3 x i64] [ i64 9220983451228067448, i64 9220983451228067449, i64 9220983450959631991 ], align 8		
@.str = internal constant [10 x i8] c"%08x%08x\0A\00"		
@.str1 = internal constant [6 x i8] c"%08x\0A\00"		

@var = external global i32

define i32 @main() {
entry:
	%retval = alloca i32, align 4		
	%i = alloca i32, align 4		
	%uf = alloca %struct..0anon, align 4		
	%ud = alloca %struct..1anon, align 8		
	%"alloca point" = bitcast i32 0 to i32		
	store i32 0, i32* %i, align 4
	br label %bb23

bb:		
	%tmp = load i32, i32* %i, align 4		
	%tmp1 = getelementptr [3 x i32], [3 x i32]* @fnan, i32 0, i32 %tmp		
	%tmp2 = load i32, i32* %tmp1, align 4		
	%tmp3 = getelementptr %struct..0anon, %struct..0anon* %uf, i32 0, i32 0		
	%tmp34 = bitcast float* %tmp3 to i32*		
	store i32 %tmp2, i32* %tmp34, align 4
	%tmp5 = getelementptr %struct..0anon, %struct..0anon* %uf, i32 0, i32 0		
	%tmp6 = load float, float* %tmp5, align 4		
	%tmp67 = fpext float %tmp6 to double		
	%tmp8 = getelementptr %struct..1anon, %struct..1anon* %ud, i32 0, i32 0		
	store double %tmp67, double* %tmp8, align 8
	%tmp9 = getelementptr %struct..1anon, %struct..1anon* %ud, i32 0, i32 0		
	%tmp910 = bitcast double* %tmp9 to i64*		
	%tmp11 = load i64, i64* %tmp910, align 8		
	%tmp1112 = trunc i64 %tmp11 to i32		
	%tmp13 = and i32 %tmp1112, -1		
	%tmp14 = getelementptr %struct..1anon, %struct..1anon* %ud, i32 0, i32 0		
	%tmp1415 = bitcast double* %tmp14 to i64*		
	%tmp16 = load i64, i64* %tmp1415, align 8		
	%.cast = zext i32 32 to i64		
	%tmp17 = ashr i64 %tmp16, %.cast		
	%tmp1718 = trunc i64 %tmp17 to i32		
	%tmp19 = getelementptr [10 x i8], [10 x i8]* @.str, i32 0, i32 0		
	store volatile i32 %tmp1718, i32* @var
	store volatile i32 %tmp13, i32* @var
	%tmp21 = load i32, i32* %i, align 4		
	%tmp22 = add i32 %tmp21, 1		
	store i32 %tmp22, i32* %i, align 4
	br label %bb23

bb23:		
	%tmp24 = load i32, i32* %i, align 4		
	%tmp25 = icmp sle i32 %tmp24, 2		
	%tmp2526 = zext i1 %tmp25 to i8		
	%toBool = icmp ne i8 %tmp2526, 0		
	br i1 %toBool, label %bb, label %bb27

bb27:		
	store i32 0, i32* %i, align 4
	br label %bb46

bb28:		
	%tmp29 = load i32, i32* %i, align 4		
	%tmp30 = getelementptr [3 x i64], [3 x i64]* @dnan, i32 0, i32 %tmp29		
	%tmp31 = load i64, i64* %tmp30, align 8		
	%tmp32 = getelementptr %struct..1anon, %struct..1anon* %ud, i32 0, i32 0		
	%tmp3233 = bitcast double* %tmp32 to i64*		
	store i64 %tmp31, i64* %tmp3233, align 8
	%tmp35 = getelementptr %struct..1anon, %struct..1anon* %ud, i32 0, i32 0		
	%tmp36 = load double, double* %tmp35, align 8		
	%tmp3637 = fptrunc double %tmp36 to float		
	%tmp38 = getelementptr %struct..0anon, %struct..0anon* %uf, i32 0, i32 0		
	store float %tmp3637, float* %tmp38, align 4
	%tmp39 = getelementptr %struct..0anon, %struct..0anon* %uf, i32 0, i32 0		
	%tmp3940 = bitcast float* %tmp39 to i32*		
	%tmp41 = load i32, i32* %tmp3940, align 4		
	%tmp42 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0		
	store volatile i32 %tmp41, i32* @var
	%tmp44 = load i32, i32* %i, align 4		
	%tmp45 = add i32 %tmp44, 1		
	store i32 %tmp45, i32* %i, align 4
	br label %bb46

bb46:		
	%tmp47 = load i32, i32* %i, align 4		
	%tmp48 = icmp sle i32 %tmp47, 2		
	%tmp4849 = zext i1 %tmp48 to i8		
	%toBool50 = icmp ne i8 %tmp4849, 0		
	br i1 %toBool50, label %bb28, label %bb51

bb51:		
	store i32 0, i32* %i, align 4
	br label %bb78

bb52:		
	%tmp53 = load i32, i32* %i, align 4		
	%tmp54 = getelementptr [3 x i32], [3 x i32]* @fsnan, i32 0, i32 %tmp53		
	%tmp55 = load i32, i32* %tmp54, align 4		
	%tmp56 = getelementptr %struct..0anon, %struct..0anon* %uf, i32 0, i32 0		
	%tmp5657 = bitcast float* %tmp56 to i32*		
	store i32 %tmp55, i32* %tmp5657, align 4
	%tmp58 = getelementptr %struct..0anon, %struct..0anon* %uf, i32 0, i32 0		
	%tmp59 = load float, float* %tmp58, align 4		
	%tmp5960 = fpext float %tmp59 to double		
	%tmp61 = getelementptr %struct..1anon, %struct..1anon* %ud, i32 0, i32 0		
	store double %tmp5960, double* %tmp61, align 8
	%tmp62 = getelementptr %struct..1anon, %struct..1anon* %ud, i32 0, i32 0		
	%tmp6263 = bitcast double* %tmp62 to i64*		
	%tmp64 = load i64, i64* %tmp6263, align 8		
	%tmp6465 = trunc i64 %tmp64 to i32		
	%tmp66 = and i32 %tmp6465, -1		
	%tmp68 = getelementptr %struct..1anon, %struct..1anon* %ud, i32 0, i32 0		
	%tmp6869 = bitcast double* %tmp68 to i64*		
	%tmp70 = load i64, i64* %tmp6869, align 8		
	%.cast71 = zext i32 32 to i64		
	%tmp72 = ashr i64 %tmp70, %.cast71		
	%tmp7273 = trunc i64 %tmp72 to i32		
	%tmp74 = getelementptr [10 x i8], [10 x i8]* @.str, i32 0, i32 0		
	store volatile i32 %tmp7273, i32* @var
	store volatile i32 %tmp66, i32* @var
	%tmp76 = load i32, i32* %i, align 4		
	%tmp77 = add i32 %tmp76, 1		
	store i32 %tmp77, i32* %i, align 4
	br label %bb78

bb78:		
	%tmp79 = load i32, i32* %i, align 4		
	%tmp80 = icmp sle i32 %tmp79, 2		
	%tmp8081 = zext i1 %tmp80 to i8		
	%toBool82 = icmp ne i8 %tmp8081, 0		
	br i1 %toBool82, label %bb52, label %bb83

bb83:		
	store i32 0, i32* %i, align 4
	br label %bb101

bb84:		
	%tmp85 = load i32, i32* %i, align 4		
	%tmp86 = getelementptr [3 x i64], [3 x i64]* @dsnan, i32 0, i32 %tmp85		
	%tmp87 = load i64, i64* %tmp86, align 8		
	%tmp88 = getelementptr %struct..1anon, %struct..1anon* %ud, i32 0, i32 0		
	%tmp8889 = bitcast double* %tmp88 to i64*		
	store i64 %tmp87, i64* %tmp8889, align 8
	%tmp90 = getelementptr %struct..1anon, %struct..1anon* %ud, i32 0, i32 0		
	%tmp91 = load double, double* %tmp90, align 8		
	%tmp9192 = fptrunc double %tmp91 to float		
	%tmp93 = getelementptr %struct..0anon, %struct..0anon* %uf, i32 0, i32 0		
	store float %tmp9192, float* %tmp93, align 4
	%tmp94 = getelementptr %struct..0anon, %struct..0anon* %uf, i32 0, i32 0		
	%tmp9495 = bitcast float* %tmp94 to i32*		
	%tmp96 = load i32, i32* %tmp9495, align 4		
	%tmp97 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0		
	store volatile i32 %tmp96, i32* @var
	%tmp99 = load i32, i32* %i, align 4		
	%tmp100 = add i32 %tmp99, 1		
	store i32 %tmp100, i32* %i, align 4
	br label %bb101

bb101:		
	%tmp102 = load i32, i32* %i, align 4		
	%tmp103 = icmp sle i32 %tmp102, 2		
	%tmp103104 = zext i1 %tmp103 to i8		
	%toBool105 = icmp ne i8 %tmp103104, 0		
	br i1 %toBool105, label %bb84, label %bb106

bb106:		
	br label %return

return:		
	%retval107 = load i32, i32* %retval		
	ret i32 %retval107
}
