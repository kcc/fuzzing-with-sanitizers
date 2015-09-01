




target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"

define void @foo(double* nocapture %x) nounwind {
bb1.thread:
	br label %bb1

bb1:		
	%i.0.reg2mem.0 = phi i64 [ -128, %bb1.thread ], [ %8, %bb1 ]		


	%0 = trunc i64 %i.0.reg2mem.0 to i8		


	%1 = trunc i64 %i.0.reg2mem.0 to i9		


	%2 = sext i9 %1 to i64		


	%3 = getelementptr double, double* %x, i64 %2		
	%4 = load double, double* %3, align 8		
	%5 = fmul double %4, 3.900000e+00		
	%6 = sext i8 %0 to i64		
	%7 = getelementptr double, double* %x, i64 %6		
	store double %5, double* %7, align 8
	%8 = add i64 %i.0.reg2mem.0, 1		
	%9 = icmp sgt i64 %8, 127		
	br i1 %9, label %return, label %bb1

return:		
	ret void
}
