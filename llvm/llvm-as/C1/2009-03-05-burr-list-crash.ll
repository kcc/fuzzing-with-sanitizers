

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"
external global i32		

declare i64 @strlen(i8* nocapture) nounwind readonly

define fastcc i8* @1(i8*) nounwind {
	br i1 false, label %3, label %2


	ret i8* %0


	%4 = call i64 @strlen(i8* %0) nounwind readonly		
	%5 = trunc i64 %4 to i32		
	%6 = load i32, i32* @0, align 4		
	%7 = sub i32 %5, %6		
	%8 = sext i32 %5 to i64		
	%9 = sext i32 %7 to i64		
	%10 = sub i64 %8, %9		
	%11 = getelementptr i8, i8* %0, i64 %10		
	%12 = icmp sgt i32 %7, 0		
	br i1 %12, label %13, label %14


	br label %13


	%15 = call noalias i8* @make_temp_file(i8* %11) nounwind		
	unreachable
}

declare noalias i8* @make_temp_file(i8*)
