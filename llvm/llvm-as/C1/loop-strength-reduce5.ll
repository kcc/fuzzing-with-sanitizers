

@X = weak global i16 0		
@Y = weak global i16 0		

define void @foo(i32 %N) nounwind {
entry:
	%tmp1019 = icmp sgt i32 %N, 0		
	br i1 %tmp1019, label %bb, label %return

bb:		
	%i.014.0 = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%tmp1 = trunc i32 %i.014.0 to i16		
	store volatile i16 %tmp1, i16* @X, align 2
	%tmp34 = shl i16 %tmp1, 2		
	store volatile i16 %tmp34, i16* @Y, align 2
	%indvar.next = add i32 %i.014.0, 1		
	%exitcond = icmp eq i32 %indvar.next, %N		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}
