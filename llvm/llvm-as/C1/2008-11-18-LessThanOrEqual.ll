



define i32 @main(i32 %argc, i8** %argv) nounwind {
entry:
	%0 = icmp ugt i32 %argc, 7		
	br i1 %0, label %bb2, label %bb.nph

bb.nph:		
	br label %bb

bb:		
	%indvar = phi i32 [ 0, %bb.nph ], [ %indvar.next, %bb1 ]		
	%argc_addr.04 = add i32 %indvar, %argc		
	tail call void (...) @Test() nounwind
	%1 = add i32 %argc_addr.04, 1		
	br label %bb1

bb1:		
	%phitmp = icmp ugt i32 %1, 7		
	%indvar.next = add i32 %indvar, 1		
	br i1 %phitmp, label %bb1.bb2_crit_edge, label %bb

bb1.bb2_crit_edge:		
	br label %bb2

bb2:		
	ret i32 0
}

declare void @Test(...)
