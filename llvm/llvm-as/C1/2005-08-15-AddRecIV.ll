

define void @try_swap() {
entry:
	br i1 false, label %cond_continue.0.i, label %cond_false.0.i
cond_false.0.i:		
	ret void
cond_continue.0.i:		
	br i1 false, label %cond_continue.1.i, label %cond_false.1.i
cond_false.1.i:		
	ret void
cond_continue.1.i:		
	br i1 false, label %endif.3.i, label %else.0.i
endif.3.i:		
	br i1 false, label %my_irand.exit82, label %endif.0.i62
else.0.i:		
	ret void
endif.0.i62:		
	ret void
my_irand.exit82:		
	br i1 false, label %else.2, label %then.4
then.4:		
	ret void
else.2:		
	br i1 false, label %find_affected_nets.exit, label %loopentry.1.i107.outer.preheader
loopentry.1.i107.outer.preheader:		
	ret void
find_affected_nets.exit:		
	br i1 false, label %save_region_occ.exit, label %loopentry.1
save_region_occ.exit:		
	br i1 false, label %no_exit.1.preheader, label %loopexit.1
loopentry.1:		
	ret void
no_exit.1.preheader:		
	ret void
loopexit.1:		
	br i1 false, label %then.10, label %loopentry.3
then.10:		
	ret void
loopentry.3:		
	%indvar342 = phi i32 [ %indvar.next343, %endif.16 ], [ 0, %loopexit.1 ]		
	br i1 false, label %loopexit.3, label %endif.16
endif.16:		
	%indvar.next343 = add i32 %indvar342, 1		
	br label %loopentry.3
loopexit.3:		
	br label %loopentry.4
loopentry.4:		
	%indvar340 = phi i32 [ 0, %loopexit.3 ], [ %indvar.next341, %loopentry.4 ]		
	%tmp. = add i32 %indvar340, %indvar342		
	%tmp.526 = load i32*, i32** null		
	%gep.upgrd.1 = zext i32 %tmp. to i64		
	%tmp.528 = getelementptr i32, i32* %tmp.526, i64 %gep.upgrd.1		
	store i32 0, i32* %tmp.528
	%indvar.next341 = add i32 %indvar340, 1		
	br label %loopentry.4
}
