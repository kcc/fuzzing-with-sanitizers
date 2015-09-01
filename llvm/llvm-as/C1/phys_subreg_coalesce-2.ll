



define i32 @binomial(i32 %n, i32 %k) nounwind {
entry:
	%cmp = icmp ugt i32 %k, %n		
	br i1 %cmp, label %ifthen, label %forcond.preheader

forcond.preheader:		
	%cmp44 = icmp eq i32 %k, 0		
	br i1 %cmp44, label %afterfor, label %forbody

ifthen:		
	ret i32 0


forbody:		
	%indvar = phi i32 [ 0, %forcond.preheader ], [ %divisor.02, %forbody ]		
	%accumulator.01 = phi i32 [ 1, %forcond.preheader ], [ %div, %forbody ]		
	%divisor.02 = add i32 %indvar, 1		
	%n.addr.03 = sub i32 %n, %indvar		
	%mul = mul i32 %n.addr.03, %accumulator.01		
	%div = udiv i32 %mul, %divisor.02		
	%inc = add i32 %indvar, 2		
	%cmp4 = icmp ugt i32 %inc, %k		
	br i1 %cmp4, label %afterfor, label %forbody

afterfor:		
	%accumulator.0.lcssa = phi i32 [ 1, %forcond.preheader ], [ %div, %forbody ]		
	ret i32 %accumulator.0.lcssa
}
