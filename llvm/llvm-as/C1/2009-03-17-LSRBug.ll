


define fastcc void @_qsort(i8* %a, i32 %n, i32 %es, i32 (i8*, i8*)* %cmp, i32 %depth_limit) nounwind optsize ssp {
entry:
	br i1 false, label %bb21, label %bb20.loopexit

bb20.loopexit:		
	ret void

bb21:		
	%0 = getelementptr i8, i8* %a, i32 0		
	br label %bb35

bb29:		
	br i1 false, label %bb7.i252, label %bb34

bb7.i252:		
	%pj.0.rec.i247 = phi i32 [ %indvar.next488, %bb7.i252 ], [ 0, %bb29 ]		
	%pi.0.i248 = getelementptr i8, i8* %pa.1, i32 %pj.0.rec.i247		
	%indvar.next488 = add i32 %pj.0.rec.i247, 1		
	br i1 false, label %bb34, label %bb7.i252

bb34:		
	%indvar.next505 = add i32 %indvar504, 1		
	br label %bb35

bb35:		
	%indvar504 = phi i32 [ %indvar.next505, %bb34 ], [ 0, %bb21 ]		
	%pa.1 = phi i8* [ null, %bb34 ], [ %0, %bb21 ]		
	%pb.0.rec = mul i32 %indvar504, %es		
	br i1 false, label %bb43, label %bb29

bb43:		
	br i1 false, label %bb50, label %bb43

bb50:		
	%1 = ptrtoint i8* %pa.1 to i32		
	%2 = sub i32 %1, 0		
	%3 = icmp sle i32 0, %2		
	%min = select i1 %3, i32 0, i32 %2		
	br label %bb7.i161

bb7.i161:		
	%pj.0.rec.i156 = phi i32 [ %indvar.next394, %bb7.i161 ], [ 0, %bb50 ]		
	%.sum279 = sub i32 %pj.0.rec.i156, %min		
	%pb.0.sum542 = add i32 %pb.0.rec, %.sum279		
	%pj.0.i158 = getelementptr i8, i8* %0, i32 %pb.0.sum542		
	%indvar.next394 = add i32 %pj.0.rec.i156, 1		
	br label %bb7.i161
}
