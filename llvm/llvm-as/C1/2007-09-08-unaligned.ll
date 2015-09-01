




target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f128:64:128"
target triple = "powerpc-apple-darwin8"
	%struct.anon = type <{ i8, float }>
@s = global %struct.anon <{ i8 3, float 0x4014666660000000 }>		
@u = global <{ i8, double }> <{ i8 3, double 5.100000e+00 }>		
@t = weak global %struct.anon zeroinitializer		
@v = weak global <{ i8, double }> zeroinitializer		
@.str = internal constant [8 x i8] c"%f %lf\0A\00"		

define i32 @foo() {
entry:
	%retval = alloca i32, align 4		
	%"alloca point" = bitcast i32 0 to i32		
	%tmp = getelementptr %struct.anon, %struct.anon* @s, i32 0, i32 1		
	%tmp1 = load float, float* %tmp, align 1		
	%tmp2 = getelementptr %struct.anon, %struct.anon* @t, i32 0, i32 1		
	store float %tmp1, float* %tmp2, align 1
	%tmp3 = getelementptr <{ i8, double }>, <{ i8, double }>* @u, i32 0, i32 1		
	%tmp4 = load double, double* %tmp3, align 1		
	%tmp5 = getelementptr <{ i8, double }>, <{ i8, double }>* @v, i32 0, i32 1		
	store double %tmp4, double* %tmp5, align 1
	br label %return

return:		
	%retval6 = load i32, i32* %retval		
	ret i32 %retval6
}

define i32 @main() {
entry:
	%retval = alloca i32, align 4		
	%"alloca point" = bitcast i32 0 to i32		
	%tmp = call i32 @foo( )		
	%tmp1 = getelementptr %struct.anon, %struct.anon* @t, i32 0, i32 1		
	%tmp2 = load float, float* %tmp1, align 1		
	%tmp23 = fpext float %tmp2 to double		
	%tmp4 = getelementptr <{ i8, double }>, <{ i8, double }>* @v, i32 0, i32 1		
	%tmp5 = load double, double* %tmp4, align 1		
	%tmp6 = getelementptr [8 x i8], [8 x i8]* @.str, i32 0, i32 0		
	%tmp7 = call i32 (i8*, ...) @printf( i8* %tmp6, double %tmp23, double %tmp5 )		
	br label %return

return:		
	%retval8 = load i32, i32* %retval		
	ret i32 %retval8
}

declare i32 @printf(i8*, ...)
