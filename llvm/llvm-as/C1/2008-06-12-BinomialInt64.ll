


define i32 @main1(i32 %argc, i8** %argv) nounwind  {
entry:
	br i1 false, label %bb10, label %bb23

bb10:		
	%accum.03 = phi i64 [ %tmp14, %bb10 ], [ 0, %entry ]		
	%i.02 = phi i32 [ %tmp16, %bb10 ], [ 0, %entry ]		
	%d.1.01 = phi i64 [ %tmp5.i, %bb10 ], [ 0, %entry ]		
	%tmp5.i = add i64 %d.1.01, 1		
	%tmp14 = add i64 %accum.03, %tmp5.i		
	%tmp16 = add i32 %i.02, 1		
	%tmp20 = icmp slt i32 %tmp16, 0		
	br i1 %tmp20, label %bb10, label %bb23

bb23:		
	%accum.0.lcssa = phi i64 [ 0, %entry ], [ %tmp14, %bb10 ]		
	ret i32 0
}

define i32 @main2(i32 %argc, i8** %argv) {
entry:
	%tmp8 = tail call i32 @atoi( i8* null ) nounwind readonly 		
	br i1 false, label %bb9, label %bb21

bb9:		
	%accum.03 = phi i64 [ %tmp12, %bb9 ], [ 0, %entry ]		
	%i.02 = phi i32 [ %tmp14, %bb9 ], [ 0, %entry ]		
	%d.1.01 = phi i64 [ %tmp4.i, %bb9 ], [ 0, %entry ]		
	%tmp4.i = add i64 %d.1.01, 1		
	%tmp12 = add i64 %accum.03, %tmp4.i		
	%tmp14 = add i32 %i.02, 1		
	%tmp18 = icmp slt i32 %tmp14, %tmp8		
	br i1 %tmp18, label %bb9, label %bb21

bb21:		
	%accum.0.lcssa = phi i64 [ 0, %entry ], [ %tmp12, %bb9 ]		
	ret i32 0
}

declare i32 @atoi(i8*) nounwind readonly 
