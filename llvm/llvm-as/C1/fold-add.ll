

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-apple-darwin9.6"
@prev_length = internal global i32 0		
@window = internal global [65536 x i8] zeroinitializer, align 32		
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @longest_match to i8*)]		

define fastcc i32 @longest_match(i32 %cur_match) nounwind {





entry:
	%0 = load i32, i32* @prev_length, align 4		
	%1 = zext i32 %cur_match to i64		
	%2 = sext i32 %0 to i64		
	%.sum3 = add i64 %1, %2		
	%3 = getelementptr [65536 x i8], [65536 x i8]* @window, i64 0, i64 %.sum3		
	%4 = load i8, i8* %3, align 1		
	%5 = icmp eq i8 %4, 0		
	br i1 %5, label %bb5, label %bb23

bb5:		
	ret i32 %0

bb23:		
	ret i32 %0
}
