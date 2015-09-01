



define i8 @foo0(i8 %i0) nounwind {
entry:
	br label %bb1

bb:		
	%0 = add i8 %j.0, 1		
	%1 = add i8 %i.0, 5		
	br label %bb1

bb1:		
	%j.0 = phi i8 [ 0, %entry ], [ %0, %bb ]		
	%i.0 = phi i8 [ %i0, %entry ], [ %1, %bb ]		
	%2 = icmp sgt i8 %i.0, 100		
	br i1 %2, label %return, label %bb

return:		
	ret i8 %j.0
}
