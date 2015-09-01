



target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @test() {
entry:
	%0 = load i32*, i32** undef, align 8		
	%1 = ptrtoint i32* %0 to i64		
	%2 = sub i64 undef, %1		
	%3 = lshr i64 %2, 3		
	%4 = trunc i64 %3 to i32		
	br i1 undef, label %bb10, label %bb4.i

bb4.i:		
	%i.0.i6 = phi i32 [ %8, %bb4.i ], [ 0, %entry ]		
	%5 = sub i32 %4, %i.0.i6		
	%6 = sext i32 %5 to i64		
	%7 = udiv i64 undef, %6		
	%8 = add i32 %i.0.i6, 1		
	%phitmp = icmp eq i64 %7, 0		
	%.not.i = icmp sge i32 %8, %4		
	%or.cond.i = or i1 %phitmp, %.not.i		
	br i1 %or.cond.i, label %bb10, label %bb4.i

bb10:		
	unreachable
}
