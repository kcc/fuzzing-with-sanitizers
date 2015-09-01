
@a_fstr = internal constant [8 x i8] c"a = %f\0A\00"		
@a_lstr = internal constant [10 x i8] c"a = %lld\0A\00"		
@a_dstr = internal constant [8 x i8] c"a = %d\0A\00"		
@b_dstr = internal constant [8 x i8] c"b = %d\0A\00"		
@b_fstr = internal constant [8 x i8] c"b = %f\0A\00"		
@A = global double 2.000000e+00		
@B = global i32 2		

declare i32 @printf(i8*, ...)

define i32 @main() {
	%a = load double, double* @A		
	%a_fs = getelementptr [8 x i8], [8 x i8]* @a_fstr, i64 0, i64 0		
	call i32 (i8*, ...) @printf( i8* %a_fs, double %a )		
	%a_d2l = fptosi double %a to i64		
	%a_ls = getelementptr [10 x i8], [10 x i8]* @a_lstr, i64 0, i64 0		
	call i32 (i8*, ...) @printf( i8* %a_ls, i64 %a_d2l )		
	%a_d2i = fptosi double %a to i32		
	%a_ds = getelementptr [8 x i8], [8 x i8]* @a_dstr, i64 0, i64 0		
	call i32 (i8*, ...) @printf( i8* %a_ds, i32 %a_d2i )		
	%a_d2sb = fptosi double %a to i8		
	call i32 (i8*, ...) @printf( i8* %a_ds, i8 %a_d2sb )		
	%a_d2i2sb = trunc i32 %a_d2i to i8		
	call i32 (i8*, ...) @printf( i8* %a_ds, i8 %a_d2i2sb )		
	%b = load i32, i32* @B		
	%b_ds = getelementptr [8 x i8], [8 x i8]* @b_dstr, i64 0, i64 0		
	call i32 (i8*, ...) @printf( i8* %b_ds, i32 %b )		
	%b_i2d = sitofp i32 %b to double		
	%b_fs = getelementptr [8 x i8], [8 x i8]* @b_fstr, i64 0, i64 0		
	call i32 (i8*, ...) @printf( i8* %b_fs, double %b_i2d )		
	ret i32 0
}
