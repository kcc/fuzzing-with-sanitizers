




define i32 @foo0(i32 %i0) nounwind {
entry:
	br label %bb1

bb:		
	%0 = add i32 %j.0, 1		
	%1 = add i32 %i.0, 5		
	br label %bb1

bb1:		
	%j.0 = phi i32 [ 0, %entry ], [ %0, %bb ]		
	%i.0 = phi i32 [ %i0, %entry ], [ %1, %bb ]		
	%2 = icmp sgt i32 %i.0, 100000		
	br i1 %2, label %return, label %bb

return:		
	ret i32 %j.0
}
