

	%struct.FILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
	%struct.__sFILEX = type opaque
	%struct.__sbuf = type { i8*, i32 }
	%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
	%struct.partition_elem = type { i32, %struct.partition_elem*, i32 }

define void @partition_print(%struct.partition_def* %part) {
entry:
	br i1 false, label %bb.preheader, label %bb99

bb.preheader:		
	br i1 false, label %cond_true, label %cond_next90

cond_true:		
	br i1 false, label %bb32, label %bb87.critedge

bb32:		
	%i.2115.0 = phi i32 [ 0, %cond_true ], [ %indvar.next127, %bb32 ]		
	%c.2112.0 = phi i32 [ 0, %cond_true ], [ %tmp49, %bb32 ]		
	%tmp43 = getelementptr %struct.partition_def, %struct.partition_def* %part, i32 0, i32 1, i32 %c.2112.0, i32 1		
	%tmp44 = load %struct.partition_elem*, %struct.partition_elem** %tmp43		
	%tmp4445 = ptrtoint %struct.partition_elem* %tmp44 to i32		
	%tmp48 = sub i32 %tmp4445, 0		
	%tmp49 = sdiv i32 %tmp48, 12		
	%indvar.next127 = add i32 %i.2115.0, 1		
	%exitcond128 = icmp eq i32 %indvar.next127, 0		
	br i1 %exitcond128, label %bb58, label %bb32

bb58:		
	ret void

bb87.critedge:		
	ret void

cond_next90:		
	ret void

bb99:		
	ret void
}
