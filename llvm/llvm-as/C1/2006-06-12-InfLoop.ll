


define void @main(i32 %c) {
entry:
	%tmp.9 = icmp eq i32 %c, 2		
	br i1 %tmp.9, label %endif.0, label %then.0
then.0:		
	ret void
endif.0:		
	br i1 false, label %then.1, label %endif.1
then.1:		
	ret void
endif.1:		
	br i1 false, label %then.2, label %endif.2
then.2:		
	ret void
endif.2:		
	br i1 false, label %then.3, label %loopentry.0
then.3:		
	ret void
loopentry.0:		
	br i1 false, label %no_exit.0.preheader, label %loopexit.0
no_exit.0.preheader:		
	br label %no_exit.0
no_exit.0:		
	br i1 false, label %then.4, label %endif.4
then.4:		
	ret void
endif.4:		
	br i1 false, label %no_exit.0, label %loopexit.0.loopexit
loopexit.0.loopexit:		
	br label %loopexit.0
loopexit.0:		
	br i1 false, label %then.5, label %loopentry.1
then.5:		
	ret void
loopentry.1:		
	%tmp.143 = icmp sgt i32 0, 0		
	br i1 %tmp.143, label %no_exit.1.preheader, label %loopexit.1
no_exit.1.preheader:		
	br label %no_exit.1
no_exit.1:		
	br i1 false, label %then.6, label %shortcirc_next.3
shortcirc_next.3:		
	br i1 false, label %then.6, label %shortcirc_next.4
shortcirc_next.4:		
	br i1 false, label %then.6, label %endif.6
then.6:		
	ret void
endif.6:		
	br i1 false, label %no_exit.1, label %loopexit.1.loopexit
loopexit.1.loopexit:		
	br label %loopexit.1
loopexit.1:		
	br i1 false, label %then.i, label %loopentry.0.i
then.i:		
	ret void
loopentry.0.i:		
	br i1 %tmp.143, label %no_exit.0.i.preheader, label %readvector.exit
no_exit.0.i.preheader:		
	br label %no_exit.0.i
no_exit.0.i:		
	br i1 false, label %no_exit.1.i.preheader, label %loopexit.1.i
no_exit.1.i.preheader:		
	br label %no_exit.1.i
no_exit.1.i:		
	br i1 false, label %no_exit.2.i.preheader, label %loopexit.2.i
no_exit.2.i.preheader:		
	br label %no_exit.2.i
no_exit.2.i:		
	br i1 false, label %no_exit.2.i, label %loopexit.2.i.loopexit
loopexit.2.i.loopexit:		
	br label %loopexit.2.i
loopexit.2.i:		
	br i1 false, label %no_exit.1.i, label %loopexit.1.i.loopexit
loopexit.1.i.loopexit:		
	br label %loopexit.1.i
loopexit.1.i:		
	br i1 false, label %no_exit.0.i, label %readvector.exit.loopexit
readvector.exit.loopexit:		
	br label %readvector.exit
readvector.exit:		
	br i1 %tmp.143, label %loopentry.1.preheader.i, label %loopexit.0.i
loopentry.1.preheader.i:		
	br label %loopentry.1.outer.i
loopentry.1.outer.i:		
	br label %loopentry.1.i85
loopentry.1.i85.loopexit:		
	br label %loopentry.1.i85
loopentry.1.i85:		
	br i1 false, label %no_exit.1.preheader.i, label %loopexit.1.i110.loopexit1
no_exit.1.preheader.i:		
	br label %no_exit.1.i87
no_exit.1.i87:		
	br i1 false, label %no_exit.i.i101.preheader, label %hamming.exit.i104
no_exit.i.i101.preheader:		
	br label %no_exit.i.i101
no_exit.i.i101:		
	br i1 false, label %no_exit.i.i101, label %hamming.exit.i104.loopexit
hamming.exit.i104.loopexit:		
	br label %hamming.exit.i104
hamming.exit.i104:		
	br i1 false, label %no_exit.i15.i.preheader, label %hamming.exit16.i
no_exit.i15.i.preheader:		
	br label %no_exit.i15.i
no_exit.i15.i:		
	br i1 false, label %no_exit.i15.i, label %hamming.exit16.i.loopexit
hamming.exit16.i.loopexit:		
	br label %hamming.exit16.i
hamming.exit16.i:		
	br i1 false, label %loopentry.1.i85.loopexit, label %then.1.i107
then.1.i107:		
	br i1 false, label %no_exit.1.i87, label %loopexit.1.i110.loopexit
loopexit.1.i110.loopexit:		
	br label %loopexit.1.i110
loopexit.1.i110.loopexit1:		
	br label %loopexit.1.i110
loopexit.1.i110:		
	br i1 false, label %loopentry.1.outer.i, label %loopexit.0.i.loopexit
loopexit.0.i.loopexit:		
	br label %loopexit.0.i
loopexit.0.i:		
	br i1 false, label %UnifiedReturnBlock.i113, label %then.2.i112
then.2.i112:		
	br label %checkham.exit
UnifiedReturnBlock.i113:		
	br label %checkham.exit
checkham.exit:		
	br i1 false, label %loopentry.1.i14.preheader, label %loopentry.3.i.preheader
loopentry.1.i14.preheader:		
	br label %loopentry.1.i14
loopentry.1.i14:		
	br i1 false, label %no_exit.1.i16.preheader, label %loopexit.1.i18
no_exit.1.i16.preheader:		
	br label %no_exit.1.i16
no_exit.1.i16:		
	br i1 false, label %no_exit.1.i16, label %loopexit.1.i18.loopexit
loopexit.1.i18.loopexit:		
	br label %loopexit.1.i18
loopexit.1.i18:		
	br i1 false, label %loopentry.1.i14, label %loopentry.3.i.loopexit
loopentry.3.i.loopexit:		
	br label %loopentry.3.i.preheader
loopentry.3.i.preheader:		
	br label %loopentry.3.i
loopentry.3.i:		
	br i1 false, label %loopentry.4.i.preheader, label %endif.1.i
loopentry.4.i.preheader:		
	br label %loopentry.4.i
loopentry.4.i:		
	br i1 false, label %no_exit.4.i.preheader, label %loopexit.4.i
no_exit.4.i.preheader:		
	br label %no_exit.4.i
no_exit.4.i:		
	br i1 false, label %endif.0.i, label %else.i
else.i:		
	br i1 false, label %no_exit.4.i.backedge, label %loopexit.4.i.loopexit
no_exit.4.i.backedge:		
	br label %no_exit.4.i
endif.0.i:		
	br i1 false, label %no_exit.4.i.backedge, label %loopexit.4.i.loopexit
loopexit.4.i.loopexit:		
	br label %loopexit.4.i
loopexit.4.i:		
	br i1 false, label %loopentry.4.i, label %endif.1.i.loopexit
endif.1.i.loopexit:		
	br label %endif.1.i
endif.1.i:		
	%exitcond = icmp eq i32 0, 10		
	br i1 %exitcond, label %generateT.exit, label %loopentry.3.i
generateT.exit:		
	br i1 false, label %then.0.i, label %loopentry.1.i30.preheader
then.0.i:		
	ret void
loopentry.1.i30.loopexit:		
	br label %loopentry.1.i30.backedge
loopentry.1.i30.preheader:		
	br label %loopentry.1.i30
loopentry.1.i30:		
	br i1 %tmp.143, label %no_exit.0.i31.preheader, label %loopentry.1.i30.backedge
loopentry.1.i30.backedge:		
	br label %loopentry.1.i30
no_exit.0.i31.preheader:		
	br label %no_exit.0.i31
no_exit.0.i31:		
	br i1 false, label %then.1.i, label %else.0.i
then.1.i:		
	br i1 undef, label %then.0.i29, label %loopentry.0.i31
then.0.i29:		
	unreachable
loopentry.0.i31:		
	br i1 false, label %no_exit.0.i38.preheader, label %loopentry.1.i.preheader
no_exit.0.i38.preheader:		
	br label %no_exit.0.i38
no_exit.0.i38:		
	br i1 undef, label %no_exit.0.i38, label %loopentry.1.i.preheader.loopexit
loopentry.1.i.preheader.loopexit:		
	br label %loopentry.1.i.preheader
loopentry.1.i.preheader:		
	br label %loopentry.1.i
loopentry.1.i:		
	br i1 undef, label %loopentry.2.i39.preheader, label %loopexit.1.i79.loopexit2
loopentry.2.i39.preheader:		
	br label %loopentry.2.i39
loopentry.2.i39:		
	br i1 false, label %loopentry.3.i40.preheader, label %hamming.exit.i71
loopentry.3.i40.preheader:		
	br label %loopentry.3.i40
loopentry.3.i40:		
	br i1 false, label %no_exit.3.preheader.i42, label %loopexit.3.i51
no_exit.3.preheader.i42:		
	br label %no_exit.3.i49
no_exit.3.i49:		
	br i1 undef, label %no_exit.3.i49, label %loopexit.3.i51.loopexit
loopexit.3.i51.loopexit:		
	br label %loopexit.3.i51
loopexit.3.i51:		
	br i1 undef, label %loopentry.3.i40, label %loopentry.4.i52
loopentry.4.i52:		
	br i1 false, label %no_exit.4.i54.preheader, label %hamming.exit.i71
no_exit.4.i54.preheader:		
	br label %no_exit.4.i54
no_exit.4.i54:		
	br i1 undef, label %then.1.i55, label %endif.1.i56
then.1.i55:		
	br i1 undef, label %no_exit.4.backedge.i, label %loopexit.4.i57
no_exit.4.backedge.i:		
	br label %no_exit.4.i54
endif.1.i56:		
	br i1 undef, label %no_exit.4.backedge.i, label %loopexit.4.i57
loopexit.4.i57:		
	br i1 false, label %no_exit.i.i69.preheader, label %hamming.exit.i71
no_exit.i.i69.preheader:		
	br label %no_exit.i.i69
no_exit.i.i69:		
	br i1 undef, label %no_exit.i.i69, label %hamming.exit.i71.loopexit
hamming.exit.i71.loopexit:		
	br label %hamming.exit.i71
hamming.exit.i71:		
	br i1 undef, label %endif.2.i, label %loopentry.5.i72
loopentry.5.i72:		
	br i1 false, label %shortcirc_next.i74.preheader, label %loopexit.5.i77
shortcirc_next.i74.preheader:		
	br label %shortcirc_next.i74
shortcirc_next.i74:		
	br i1 undef, label %no_exit.5.i76, label %loopexit.5.i77.loopexit
no_exit.5.i76:		
	br i1 undef, label %shortcirc_next.i74, label %loopexit.5.i77.loopexit
loopexit.5.i77.loopexit:		
	br label %loopexit.5.i77
loopexit.5.i77:		
	br i1 undef, label %loopentry.2.i39, label %loopexit.1.i79.loopexit
endif.2.i:		
	br label %loopentry.1.i
loopexit.1.i79.loopexit:		
	br label %loopexit.1.i79
loopexit.1.i79.loopexit2:		
	br label %loopexit.1.i79
loopexit.1.i79:		
	br i1 undef, label %then.3.i, label %loopentry.6.i80
then.3.i:		
	br i1 false, label %no_exit.6.i82.preheader, label %run.exit
loopentry.6.i80:		
	br i1 false, label %no_exit.6.i82.preheader, label %run.exit
no_exit.6.i82.preheader:		
	br label %no_exit.6.i82
no_exit.6.i82:		
	br i1 undef, label %no_exit.6.i82, label %run.exit.loopexit
run.exit.loopexit:		
	br label %run.exit
run.exit:		
	br i1 false, label %no_exit.1.i36.preheader, label %loopentry.3.i37
else.0.i:		
	br i1 false, label %then.0.i4, label %loopentry.0.i6
then.0.i4:		
	unreachable
loopentry.0.i6:		
	br i1 false, label %no_exit.0.i8.preheader, label %loopentry.2.i.preheader
no_exit.0.i8.preheader:		
	br label %no_exit.0.i8
no_exit.0.i8:		
	br i1 false, label %no_exit.0.i8, label %loopentry.2.i.preheader.loopexit
loopentry.2.i.preheader.loopexit:		
	br label %loopentry.2.i.preheader
loopentry.2.i.preheader:		
	br label %loopentry.2.i
loopentry.2.i:		
	br i1 false, label %loopentry.3.i10.preheader, label %loopentry.4.i15
loopentry.3.i10.preheader:		
	br label %loopentry.3.i10
loopentry.3.i10:		
	br i1 false, label %no_exit.3.preheader.i, label %loopexit.3.i14
no_exit.3.preheader.i:		
	br label %no_exit.3.i12
no_exit.3.i12:		
	br i1 false, label %no_exit.3.i12, label %loopexit.3.i14.loopexit
loopexit.3.i14.loopexit:		
	br label %loopexit.3.i14
loopexit.3.i14:		
	br i1 false, label %loopentry.3.i10, label %loopentry.4.i15.loopexit
loopentry.4.i15.loopexit:		
	br label %loopentry.4.i15
loopentry.4.i15:		
	br i1 false, label %loopentry.5.outer.i.preheader, label %loopentry.7.i
loopentry.5.outer.i.preheader:		
	br label %loopentry.5.outer.i
loopentry.5.outer.i:		
	br label %loopentry.5.i
loopentry.5.i:		
	br i1 false, label %no_exit.5.i.preheader, label %loopexit.5.i.loopexit3
no_exit.5.i.preheader:		
	br label %no_exit.5.i
no_exit.5.i:		
	br i1 false, label %loopentry.6.i, label %endif.1.i18
loopentry.6.i:		
	br i1 false, label %no_exit.6.preheader.i, label %loopexit.6.i
no_exit.6.preheader.i:		
	br label %no_exit.6.i
no_exit.6.i:		
	br i1 false, label %no_exit.6.i, label %loopexit.6.i.loopexit
loopexit.6.i.loopexit:		
	br label %loopexit.6.i
loopexit.6.i:		
	br i1 false, label %then.2.i, label %endif.1.i18
then.2.i:		
	br i1 false, label %no_exit.5.i, label %loopexit.5.i.loopexit
endif.1.i18:		
	br label %loopentry.5.i
loopexit.5.i.loopexit:		
	br label %loopexit.5.i
loopexit.5.i.loopexit3:		
	br label %loopexit.5.i
loopexit.5.i:		
	br i1 false, label %loopentry.5.outer.i, label %loopentry.7.i.loopexit
loopentry.7.i.loopexit:		
	br label %loopentry.7.i
loopentry.7.i:		
	br i1 false, label %no_exit.7.i.preheader, label %hamming.exit.i
no_exit.7.i.preheader:		
	br label %no_exit.7.i
no_exit.7.i:		
	br i1 false, label %no_exit.7.i, label %loopexit.7.i
loopexit.7.i:		
	br i1 false, label %no_exit.i.i.preheader, label %hamming.exit.i
no_exit.i.i.preheader:		
	br label %no_exit.i.i
no_exit.i.i:		
	br i1 false, label %no_exit.i.i, label %hamming.exit.i.loopexit
hamming.exit.i.loopexit:		
	br label %hamming.exit.i
hamming.exit.i:		
	br i1 false, label %endif.3.i19, label %loopentry.8.i
loopentry.8.i:		
	br i1 false, label %shortcirc_next.i.preheader, label %loopexit.8.i
shortcirc_next.i.preheader:		
	br label %shortcirc_next.i
shortcirc_next.i:		
	br i1 false, label %no_exit.8.i, label %loopexit.8.i.loopexit
no_exit.8.i:		
	br i1 false, label %shortcirc_next.i, label %loopexit.8.i.loopexit
loopexit.8.i.loopexit:		
	br label %loopexit.8.i
loopexit.8.i:		
	br i1 false, label %no_exit.9.i.preheader, label %endif.3.i19
no_exit.9.i.preheader:		
	br label %no_exit.9.i
no_exit.9.i:		
	br i1 false, label %no_exit.9.i, label %endif.3.i19.loopexit
endif.3.i19.loopexit:		
	br label %endif.3.i19
endif.3.i19:		
	br i1 false, label %loopentry.2.i, label %loopexit.1.i20
loopexit.1.i20:		
	br i1 false, label %then.4.i, label %UnifiedReturnBlock.i
then.4.i:		
	br label %runcont.exit
UnifiedReturnBlock.i:		
	br label %runcont.exit
runcont.exit:		
	br i1 false, label %no_exit.1.i36.preheader, label %loopentry.3.i37
no_exit.1.i36.preheader:		
	br label %no_exit.1.i36
no_exit.1.i36:		
	br i1 false, label %no_exit.1.i36, label %loopentry.3.i37.loopexit
loopentry.3.i37.loopexit:		
	br label %loopentry.3.i37
loopentry.3.i37:		
	br i1 false, label %loopentry.4.i38.preheader, label %loopexit.3.i
loopentry.4.i38.preheader:		
	br label %loopentry.4.i38
loopentry.4.i38:		
	br i1 false, label %no_exit.3.i.preheader, label %loopexit.4.i42
no_exit.3.i.preheader:		
	br label %no_exit.3.i
no_exit.3.i:		
	br i1 false, label %endif.3.i, label %else.1.i
else.1.i:		
	br i1 false, label %no_exit.3.i.backedge, label %loopexit.4.i42.loopexit
no_exit.3.i.backedge:		
	br label %no_exit.3.i
endif.3.i:		
	br i1 false, label %no_exit.3.i.backedge, label %loopexit.4.i42.loopexit
loopexit.4.i42.loopexit:		
	br label %loopexit.4.i42
loopexit.4.i42:		
	br i1 false, label %loopentry.4.i38, label %loopexit.3.i.loopexit
loopexit.3.i.loopexit:		
	br label %loopexit.3.i
loopexit.3.i:		
	%tmp.13.i155 = icmp slt i32 0, 0		
	br i1 %tmp.13.i155, label %no_exit.0.i31, label %loopentry.1.i30.loopexit
}
