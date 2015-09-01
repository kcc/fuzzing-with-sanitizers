










@p = external global i32
define i32 @f(i32 %n) nounwind {
entry:
	br label %for.cond

for.cond:		
	%i.0 = phi i32 [ 0, %entry ], [ %indvar.next, %for.inc ]		
	%cmp = icmp slt i32 %i.0, %n		
	br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:		
	br label %for.end



for.body:		
	%tmp3 = load i32, i32* @p		
	%dec = add i32 %tmp3, -1		
	store i32 %dec, i32* @p
	%cmp6 = icmp slt i32 %dec, 0		
	br i1 %cmp6, label %for.body.for.end_crit_edge, label %for.inc


for.body.for.end_crit_edge:		
	br label %for.end

for.inc:		
	%indvar.next = add i32 %i.0, 1		
	br label %for.cond

for.end:		
	%tmp9 = load i32, i32* @p		
	ret i32 %tmp9
}
