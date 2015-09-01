

	%struct.cli_ac_alt = type { i8, i8*, i16, i16, %struct.cli_ac_alt* }
	%struct.cli_ac_node = type { i8, i8, %struct.cli_ac_patt*, %struct.cli_ac_node**, %struct.cli_ac_node* }
	%struct.cli_ac_patt = type { i16*, i16*, i16, i16, i8, i32, i32, i8*, i8*, i32, i16, i16, i16, i16, %struct.cli_ac_alt**, i8, i16, %struct.cli_ac_patt*, %struct.cli_ac_patt* }
	%struct.cli_bm_patt = type { i8*, i8*, i16, i16, i8*, i8*, i8, %struct.cli_bm_patt*, i16 }
	%struct.cli_matcher = type { i16, i8, i8*, %struct.cli_bm_patt**, i32*, i32, i8, i8, %struct.cli_ac_node*, %struct.cli_ac_node**, %struct.cli_ac_patt**, i32, i32, i32 }

declare i32 @strlen(i8* nocapture) nounwind readonly

define i32 @cli_ac_addsig(%struct.cli_matcher* nocapture %root, i8* %virname, i8* %hexsig, i32 %sigid, i16 zeroext %parts, i16 zeroext %partno, i16 zeroext %type, i32 %mindist, i32 %maxdist, i8* %offset, i8 zeroext %target) nounwind {
entry:
	br i1 undef, label %bb126, label %bb1

bb1:		
	br i1 undef, label %cli_calloc.exit.thread, label %cli_calloc.exit

cli_calloc.exit.thread:		
	ret i32 -114

cli_calloc.exit:		
	store i16 %parts, i16* undef, align 4
	br i1 undef, label %bb52, label %bb4

bb4:		
	br i1 undef, label %bb.i, label %bb1.i3

bb.i:		
	unreachable

bb1.i3:		
	br i1 undef, label %bb2.i4, label %cli_strdup.exit

bb2.i4:		
	ret i32 -114

cli_strdup.exit:		
	br i1 undef, label %cli_calloc.exit54.thread, label %cli_calloc.exit54

cli_calloc.exit54.thread:		
	ret i32 -114

cli_calloc.exit54:		
	br label %bb45

cli_calloc.exit70.thread:		
	unreachable

cli_calloc.exit70:		
	br i1 undef, label %bb.i83, label %bb1.i84

bb.i83:		
	unreachable

bb1.i84:		
	br i1 undef, label %bb2.i85, label %bb17

bb2.i85:		
	unreachable

bb17:		
	br i1 undef, label %bb22, label %bb.nph

bb.nph:		
	br label %bb18

bb18:		
	br i1 undef, label %bb18, label %bb22

bb22:		
	br i1 undef, label %bb25, label %bb43.preheader

bb43.preheader:		
	br i1 undef, label %bb28, label %bb45

bb25:		
	unreachable

bb28:		
	unreachable

bb45:		
	br i1 undef, label %cli_calloc.exit70.thread, label %cli_calloc.exit70

bb52:		
	%0 = load i16, i16* undef, align 4		
	%1 = icmp eq i16 %0, 0		
	%iftmp.20.0 = select i1 %1, i8* %hexsig, i8* null		
	%2 = tail call  i32 @strlen(i8* %iftmp.20.0) nounwind readonly		
	unreachable

bb126:		
	ret i32 -117
}
