


define fastcc void @regcppop() nounwind  {
entry:
	%tmp61 = add i32 0, -5		
	br label %bb

bb:		
	%PL_savestack_ix.tmp.0 = phi i32 [ %tmp61, %entry ], [ %tmp127, %bb ]		
	%indvar10 = phi i32 [ 0, %entry ], [ %indvar.next11, %bb ]		
	%tmp13 = mul i32 %indvar10, -4		
	%tmp111 = add i32 %PL_savestack_ix.tmp.0, -3		
	%tmp127 = add i32 %PL_savestack_ix.tmp.0, -4		
	%indvar.next11 = add i32 %indvar10, 1		
	br label %bb
}
