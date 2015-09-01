

@g_103 = common global i32 0		

define i32 @func_127(i32 %p_129) nounwind {
entry:
	load i32, i32* @g_103, align 4		
	icmp eq i32 %0, 0		
	br i1 %1, label %bb6.preheader, label %entry.return_crit_edge

entry.return_crit_edge:		
	br label %return

bb6.preheader:		
	br i1 %1, label %bb6.preheader.split.us, label %bb6.preheader.split

bb6.preheader.split.us:		
	br label %return.loopexit.split

bb6.preheader.split:		
	br label %bb6

bb6:		
	%indvar35 = phi i32 [ 0, %bb6.preheader.split ], [ %indvar.next36, %bb17.bb6_crit_edge ]		
	%p_129_addr.3.reg2mem.0 = phi i32 [ %p_129_addr.2, %bb17.bb6_crit_edge ], [ %p_129, %bb6.preheader.split ]		
	icmp eq i32 %p_129_addr.3.reg2mem.0, 0		
	br i1 %2, label %bb6.bb17_crit_edge, label %bb8

bb6.bb17_crit_edge:		
	br label %bb17

bb8:		
	br label %bb13

bb13:		
	br label %bb17

bb17:		
	%p_129_addr.2 = phi i32 [ %p_129_addr.3.reg2mem.0, %bb13 ], [ %p_129_addr.3.reg2mem.0, %bb6.bb17_crit_edge ]		
	%indvar.next36 = add i32 %indvar35, 1		
	%exitcond37 = icmp eq i32 %indvar.next36, -1		
	br i1 %exitcond37, label %return.loopexit, label %bb17.bb6_crit_edge

bb17.bb6_crit_edge:		
	br label %bb6

return.loopexit:		
	br label %return.loopexit.split

return.loopexit.split:		
	br label %return

return:		
	ret i32 1
}

define i32 @func_135(i8 zeroext %p_137, i32 %p_138, i32 %p_140) nounwind {
entry:
	ret i32 undef
}
