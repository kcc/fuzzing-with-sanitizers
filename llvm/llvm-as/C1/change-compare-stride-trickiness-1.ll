







define void @foo() nounwind {





entry:
	br label %loop

loop:
	%indvar = phi i32 [ 0, %entry ], [ %i.2.0.us1534, %loop ]		
	%i.2.0.us1534 = add i32 %indvar, 1		
	%tmp628.us1540 = shl i32 %i.2.0.us1534, 1		
	%tmp645646647.us1547 = sext i32 %tmp628.us1540 to i64		
	store i64 %tmp645646647.us1547, i64* null
	%tmp611.us1535 = icmp eq i32 %i.2.0.us1534, 4		
	%tmp623.us1538 = select i1 %tmp611.us1535, i32 6, i32 0		
	store i32 %tmp623.us1538, i32* null
	br i1 %tmp611.us1535, label %exit, label %loop

exit:
	ret void
}
