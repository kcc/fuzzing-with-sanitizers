



define i32 @_Z1aj(i32 %j) nounwind  {
entry:
	icmp sgt i32 0, %j		
	br i1 %0, label %bb.preheader, label %return

bb.preheader:		
	br label %bb

bb:		
	%i.01 = phi i32 [ %1, %bb ], [ 0, %bb.preheader ]		
	add i32 %i.01, -1		
	icmp sgt i32 %1, %j		
	br i1 %2, label %bb, label %return.loopexit

return.loopexit:		
	br label %return

return:		
	%i.0.lcssa = phi i32 [ 0, %entry ], [ %1, %return.loopexit ]		
	ret i32 %i.0.lcssa
}



