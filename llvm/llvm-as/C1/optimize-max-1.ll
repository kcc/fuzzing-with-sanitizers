




target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"

define void @fs(double* nocapture %p, i64 %n) nounwind {
entry:
	%tmp = icmp slt i64 %n, 1		
	%smax = select i1 %tmp, i64 1, i64 %n		
	br label %bb

bb:		
	%i.0 = phi i64 [ 0, %entry ], [ %0, %bb ]		
	%scevgep = getelementptr double, double* %p, i64 %i.0		
	store double 0.000000e+00, double* %scevgep, align 8
	%0 = add i64 %i.0, 1		
	%exitcond = icmp eq i64 %0, %smax		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}

define void @bs(double* nocapture %p, i64 %n) nounwind {
entry:
	%tmp = icmp sge i64 %n, 1		
	%smax = select i1 %tmp, i64 %n, i64 1		
	br label %bb

bb:		
	%i.0 = phi i64 [ 0, %entry ], [ %0, %bb ]		
	%scevgep = getelementptr double, double* %p, i64 %i.0		
	store double 0.000000e+00, double* %scevgep, align 8
	%0 = add i64 %i.0, 1		
	%exitcond = icmp eq i64 %0, %smax		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}

define void @fu(double* nocapture %p, i64 %n) nounwind {
entry:
	%tmp = icmp eq i64 %n, 0		
	%umax = select i1 %tmp, i64 1, i64 %n		
	br label %bb

bb:		
	%i.0 = phi i64 [ 0, %entry ], [ %0, %bb ]		
	%scevgep = getelementptr double, double* %p, i64 %i.0		
	store double 0.000000e+00, double* %scevgep, align 8
	%0 = add i64 %i.0, 1		
	%exitcond = icmp eq i64 %0, %umax		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}

define void @bu(double* nocapture %p, i64 %n) nounwind {
entry:
	%tmp = icmp ne i64 %n, 0		
	%umax = select i1 %tmp, i64 %n, i64 1		
	br label %bb

bb:		
	%i.0 = phi i64 [ 0, %entry ], [ %0, %bb ]		
	%scevgep = getelementptr double, double* %p, i64 %i.0		
	store double 0.000000e+00, double* %scevgep, align 8
	%0 = add i64 %i.0, 1		
	%exitcond = icmp eq i64 %0, %umax		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}
