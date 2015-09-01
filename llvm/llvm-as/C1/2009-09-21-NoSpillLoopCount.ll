

define void @dot(i16* nocapture %A, i32 %As, i16* nocapture %B, i32 %Bs, i16* nocapture %C, i32 %N) nounwind ssp {



entry:
	%0 = icmp sgt i32 %N, 0		
	br i1 %0, label %bb, label %bb2

bb:		
	%i.03 = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%sum.04 = phi i32 [ 0, %entry ], [ %10, %bb ]		
	%1 = mul i32 %i.03, %As		
	%2 = getelementptr i16, i16* %A, i32 %1		
	%3 = load i16, i16* %2, align 2		
	%4 = sext i16 %3 to i32		
	%5 = mul i32 %i.03, %Bs		
	%6 = getelementptr i16, i16* %B, i32 %5		
	%7 = load i16, i16* %6, align 2		
	%8 = sext i16 %7 to i32		
	%9 = mul i32 %8, %4		
	%10 = add i32 %9, %sum.04		
	%indvar.next = add i32 %i.03, 1		
	%exitcond = icmp eq i32 %indvar.next, %N		
	br i1 %exitcond, label %bb1.bb2_crit_edge, label %bb

bb1.bb2_crit_edge:		
	%phitmp = trunc i32 %10 to i16		
	br label %bb2

bb2:		
	%sum.0.lcssa = phi i16 [ %phitmp, %bb1.bb2_crit_edge ], [ 0, %entry ]		
	store i16 %sum.0.lcssa, i16* %C, align 2
	ret void
}
