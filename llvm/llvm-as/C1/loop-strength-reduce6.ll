

define fastcc i32 @decodeMP3(i32 %isize, i32* %done) nounwind {
entry:
	br label %cond_true189

cond_true189:		
	ret i32 0

cond_next191:		
	br label %cond_false.i9

cond_false.i9:		
	ret i32 0

cond_next37.i:		
	br label %cond_true44.i

cond_true44.i:		
	br label %bb414.preheader.i

cond_true11.i.i:		
	ret i32 0

cond_false50.i:		
	ret i32 0

bb414.preheader.i:		
	br label %do_layer3.exit

bb.i18:		
	br label %cond_true79.i

cond_true79.i:		
	ret i32 0

bb331.i:		
	br label %cond_false.i151.i

cond_true.i149.i:		
	br label %bb331.i

cond_false.i151.i:		
	ret i32 0

bb163.i.i:		
	%rawout2.451.rec.i.i = phi i64 [ 0, %bb178.preheader.i.i ], [ %indvar.next260.i, %bb163.i.i ]		
	%i.052.i.i = trunc i64 %rawout2.451.rec.i.i to i32		
	%tmp165.i144.i = shl i32 %i.052.i.i, 5		
	%tmp165169.i.i = sext i32 %tmp165.i144.i to i64		
	%indvar.next260.i = add i64 %rawout2.451.rec.i.i, 1		
	%exitcond261.i = icmp eq i64 %indvar.next260.i, 18		
	br i1 %exitcond261.i, label %bb178.preheader.i.i, label %bb163.i.i

bb178.preheader.i.i:		
	br label %bb163.i.i

bb358.i:		
	br label %bb406.i

bb406.i:		
	ret i32 0

do_layer3.exit:		
	ret i32 0
}
