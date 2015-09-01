

	%struct.blktkntype = type { i32, i32 }
	%struct.fieldstruc = type { [128 x i8], %struct.blktkntype*, i32, i32 }

define fastcc i32 @Env_GetFieldStruc(i8* %FieldName, i32* %Status, %struct.fieldstruc* %FieldStruc) nounwind  {
entry:
	br label %bb137.i

bb137.i:		
	%FieldName_addr.0209.rec.i = phi i64 [ %tmp139.rec.i, %bb137.i ], [ 0, %entry ]		
	%tmp147213.i = phi i32 [ %tmp147.i, %bb137.i ], [ 1, %entry ]		
	%tmp139.rec.i = add i64 %FieldName_addr.0209.rec.i, 1		
	%tmp141142.i = sext i32 %tmp147213.i to i64		
	%tmp147.i = add i32 %tmp147213.i, 1		
	br i1 false, label %bb137.i, label %bb149.i.loopexit

bb149.i.loopexit:		
	%tmp139.i = getelementptr i8, i8* %FieldName, i64 %tmp139.rec.i		
	unreachable
}
