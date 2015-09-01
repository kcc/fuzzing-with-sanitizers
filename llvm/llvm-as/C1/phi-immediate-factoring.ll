



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "i686-apple-darwin8"

define i32 @foo(i32 %A, i32 %B, i32 %C) nounwind {
entry:
	switch i32 %A, label %out [
		 i32 1, label %bb
		 i32 0, label %bb13
		 i32 2, label %bb35
	]

bb:		
	%i.144.1 = phi i32 [ 0, %entry ], [ %tmp7, %cond_next ]		
	%tmp4 = and i32 %i.144.1, %B		
	icmp eq i32 %tmp4, 0		
	br i1 %0, label %cond_next, label %out

cond_next:		
	%tmp7 = add i32 %i.144.1, 1		
	icmp slt i32 %tmp7, 1000		
	br i1 %1, label %bb, label %out

bb13:		
	%i.248.1 = phi i32 [ 0, %entry ], [ %tmp20, %cond_next18 ]		
	%tmp16 = and i32 %i.248.1, %C		
	icmp eq i32 %tmp16, 0		
	br i1 %2, label %cond_next18, label %out

cond_next18:		
	%tmp20 = add i32 %i.248.1, 1		
	icmp slt i32 %tmp20, 1000		
	br i1 %3, label %bb13, label %out

bb27:		
	%tmp30 = and i32 %i.3, %C		
	icmp eq i32 %tmp30, 0		
	br i1 %4, label %cond_next32, label %out

cond_next32:		
	%indvar.next = add i32 %i.3, 1		
	br label %bb35

bb35:		
	%i.3 = phi i32 [ %indvar.next, %cond_next32 ], [ 0, %entry ]		
	icmp slt i32 %i.3, 1000		
	br i1 %5, label %bb27, label %out

out:		
	%result.0 = phi i32 [ 0, %entry ], [ 1, %bb ], [ 0, %cond_next ], [ 1, %bb13 ], [ 0, %cond_next18 ], [ 1, %bb27 ], [ 0, %bb35 ]		
	ret i32 %result.0
}
