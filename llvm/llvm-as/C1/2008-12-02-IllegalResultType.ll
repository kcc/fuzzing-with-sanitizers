

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i386-pc-linux-gnu"
@g_118 = external global i8		
@g_7 = external global i32		

define i32 @func_73(i32 %p_74) nounwind {
entry:
	%0 = load i32, i32* @g_7, align 4		
	%1 = or i8 0, 118		
	%2 = zext i8 %1 to i64		
	%3 = icmp ne i32 %0, 0		
	%4 = zext i1 %3 to i64		
	%5 = or i64 %4, -758998846		
	%6 = icmp sle i64 %2, %5		
	%7 = zext i1 %6 to i8		
	%8 = or i8 %7, 118		
	%9 = zext i8 %8 to i64		
	%10 = icmp sle i64 %9, 0		
	%11 = zext i1 %10 to i8		
	%12 = or i8 %11, 118		
	%13 = zext i8 %12 to i64		
	%14 = icmp sle i64 %13, %5		
	%15 = zext i1 %14 to i8		
	%16 = or i8 %15, 118		
	%17 = zext i8 %16 to i64		
	%18 = icmp sle i64 %17, 0		
	%19 = zext i1 %18 to i8		
	%20 = or i8 %19, 118		
	%21 = zext i8 %20 to i64		
	%22 = icmp sle i64 %21, %5		
	%23 = zext i1 %22 to i8		
	%24 = or i8 %23, 118		
	store i8 %24, i8* @g_118, align 1
	ret i32 undef
}
