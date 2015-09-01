





@g_16 = external global i16		
@.str = external constant [4 x i8]		

define void @func_15() nounwind {
entry:
	%0 = load i16, i16* @g_16, align 2		
	%1 = icmp sgt i16 %0, 0		
	br i1 %1, label %bb2, label %bb.nph

bb.nph:		
	%g_16.promoted = load i16, i16* @g_16		
	br label %bb

bb:		
	%g_16.tmp.0 = phi i16 [ %g_16.promoted, %bb.nph ], [ %2, %bb1 ]		
	%2 = add i16 %g_16.tmp.0, -1		
	br label %bb1

bb1:		
	%3 = icmp sgt i16 %2, 0		
	br i1 %3, label %bb1.bb2_crit_edge, label %bb

bb1.bb2_crit_edge:		
	store i16 %2, i16* @g_16
	br label %bb2

bb2:		
	br label %return

return:		
	ret void
}

declare i32 @main() nounwind

declare i32 @printf(i8*, ...) nounwind

