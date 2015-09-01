





target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"

define void @foo(double* %p, i32 %n) nounwind {
entry:
	%0 = icmp sgt i32 %n, 0		
	br i1 %0, label %bb.nph, label %return

bb.nph:		
	br label %bb2

bb2:		
	%i.01 = phi i32 [ %7, %bb3 ], [ 0, %bb.nph ]		
	%1 = sext i32 %i.01 to i64		
	%2 = getelementptr double, double* %p, i64 %1		
	%3 = load double, double* %2, align 8		
	%4 = fmul double %3, 1.100000e+00		
	%5 = sext i32 %i.01 to i64		
	%6 = getelementptr double, double* %p, i64 %5		
	store double %4, double* %6, align 8
	%7 = add i32 %i.01, 1		
	br label %bb3

bb3:		
	%8 = icmp slt i32 %7, %n		
	br i1 %8, label %bb2, label %bb3.return_crit_edge

bb3.return_crit_edge:		
	br label %return

return:		
	ret void
}
