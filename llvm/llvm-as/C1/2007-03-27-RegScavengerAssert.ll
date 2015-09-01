


	%struct.rtx_def = type { i16, i8, i8, %struct.u }
	%struct.u = type { [1 x i64] }

define fastcc void @find_reloads_address(%struct.rtx_def** %loc) {
entry:
	%ad_addr = alloca %struct.rtx_def*		
	br i1 false, label %cond_next416, label %cond_true340

cond_true340:		
	ret void

cond_next416:		
	%tmp1085 = load %struct.rtx_def*, %struct.rtx_def** %ad_addr		
	br i1 false, label %bb1084, label %cond_true418

cond_true418:		
	ret void

bb1084:		
	br i1 false, label %cond_true1092, label %cond_next1102

cond_true1092:		
	%tmp1094 = getelementptr %struct.rtx_def, %struct.rtx_def* %tmp1085, i32 0, i32 3		
	%tmp10981099 = bitcast %struct.u* %tmp1094 to %struct.rtx_def**		
	%tmp1101 = load %struct.rtx_def*, %struct.rtx_def** %tmp10981099		
	store %struct.rtx_def* %tmp1101, %struct.rtx_def** %ad_addr
	br label %cond_next1102

cond_next1102:		
	%loc_addr.0 = phi %struct.rtx_def** [ %tmp10981099, %cond_true1092 ], [ %loc, %bb1084 ]		
	ret void
}
