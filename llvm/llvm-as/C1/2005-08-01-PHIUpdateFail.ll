


define void @main() {
entry:
	%tmp.14.i19 = icmp eq i32 0, 2		
	br i1 %tmp.14.i19, label %endif.1.i20, label %read_min.exit
endif.1.i20:		
	%tmp.9.i.i = icmp eq i8* null, null		
	br i1 %tmp.9.i.i, label %then.i12.i, label %then.i.i
then.i.i:		
	ret void
then.i12.i:		
	%tmp.9.i4.i = icmp eq i8* null, null		
	br i1 %tmp.9.i4.i, label %endif.2.i33, label %then.i5.i
then.i5.i:		
	ret void
endif.2.i33:		
	br i1 false, label %loopexit.0.i40, label %no_exit.0.i35
no_exit.0.i35:		
	%tmp.130.i = icmp slt i32 0, 0		
	br i1 %tmp.130.i, label %loopexit.0.i40.loopexit, label %no_exit.0.i35
loopexit.0.i40.loopexit:		
	br label %loopexit.0.i40
loopexit.0.i40:		
	%tmp.341.i = icmp eq i32 0, 0		
	br i1 %tmp.341.i, label %loopentry.1.i, label %read_min.exit
loopentry.1.i:		
	%tmp.347.i = icmp sgt i32 0, 0		
	br i1 %tmp.347.i, label %no_exit.1.i41, label %loopexit.2.i44
no_exit.1.i41:		
	%indvar.i42 = phi i32 [ %indvar.next.i, %endif.5.i ], [ 0, %loopentry.1.i ]		
	%tmp.355.i = icmp eq i32 0, 3		
	br i1 %tmp.355.i, label %endif.5.i, label %read_min.exit
endif.5.i:		
	%tmp.34773.i = icmp sgt i32 0, 0		
	%indvar.next.i = add i32 %indvar.i42, 1		
	br i1 %tmp.34773.i, label %no_exit.1.i41, label %loopexit.1.i.loopexit
loopexit.1.i.loopexit:		
	ret void
loopexit.2.i44:		
	ret void
read_min.exit:		
	%tmp.23 = icmp eq i32 0, 0		
	br i1 %tmp.23, label %endif.1, label %then.1
then.1:		
	br i1 false, label %endif.0.i, label %then.0.i
then.0.i:		
	br i1 false, label %endif.1.i, label %then.1.i
endif.0.i:		
	br i1 false, label %endif.1.i, label %then.1.i
then.1.i:		
	br i1 false, label %getfree.exit, label %then.2.i
endif.1.i:		
	br i1 false, label %getfree.exit, label %then.2.i
then.2.i:		
	ret void
getfree.exit:		
	ret void
endif.1:		
	%tmp.27.i = getelementptr i32, i32* null, i32 0		
	br i1 false, label %loopexit.0.i15, label %no_exit.0.i14
no_exit.0.i14:		
	ret void
loopexit.0.i15:		
	br i1 false, label %primal_start_artificial.exit, label %no_exit.1.i16
no_exit.1.i16:		
	br i1 false, label %primal_start_artificial.exit, label %no_exit.1.i16
primal_start_artificial.exit:		
	ret void
}
