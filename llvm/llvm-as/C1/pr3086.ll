



	%struct.Cls = type { i32, i8, [2 x %struct.Cls*], [2 x %struct.Lit*] }
	%struct.Lit = type { i8 }

define fastcc i64 @collect_clauses() nounwind {
entry:
	br label %bb11

bb5:		
	%0 = load %struct.Lit*, %struct.Lit** %storemerge, align 8		
	%indvar.next8 = add i64 %storemerge.rec, 1		
	br label %bb9

bb9:		
	%storemerge.rec = phi i64 [ %indvar.next8, %bb5 ], [ 0, %bb22 ]		
	%storemerge = getelementptr %struct.Lit*, %struct.Lit** null, i64 %storemerge.rec		
	%1 = icmp ugt %struct.Lit** null, %storemerge		
	br i1 %1, label %bb5, label %bb22

bb11:		
	%2 = load %struct.Cls*, %struct.Cls** null, align 8		
	br label %bb22

bb22:		
	br i1 false, label %bb11, label %bb9
}
