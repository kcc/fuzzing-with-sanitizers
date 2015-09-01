

	%struct.shape_edge_t = type { %struct.shape_edge_t*, %struct.shape_edge_t*, i32, i32, i32, i32 }
	%struct.shape_path_t = type { %struct.shape_edge_t*, %struct.shape_edge_t*, i32, i32, i32, i32, i32, i32 }
	%struct.shape_pool_t = type { i8* (%struct.shape_pool_t*, i8*, i32)*, i8* (%struct.shape_pool_t*, i32)*, void (%struct.shape_pool_t*, i8*)* }

define %struct.shape_path_t* @shape_path_alloc(%struct.shape_pool_t* %pool, i32* %shape) {
entry:
	br i1 false, label %cond_false, label %bb45

bb45:		
	ret %struct.shape_path_t* null

cond_false:		
	br i1 false, label %bb140, label %bb174

bb140:		
	%indvar = phi i32 [ 0, %cond_false ], [ %indvar.next, %bb140 ]		
	%edge.230.0.rec = shl i32 %indvar, 1		
	%edge.230.0 = getelementptr %struct.shape_edge_t, %struct.shape_edge_t* null, i32 %edge.230.0.rec		
	%edge.230.0.sum6970 = or i32 %edge.230.0.rec, 1		
	%tmp154 = getelementptr %struct.shape_edge_t, %struct.shape_edge_t* null, i32 %edge.230.0.sum6970		
	%tmp11.i5 = getelementptr %struct.shape_edge_t, %struct.shape_edge_t* null, i32 %edge.230.0.sum6970, i32 0		
	store %struct.shape_edge_t* %edge.230.0, %struct.shape_edge_t** %tmp11.i5
	store %struct.shape_edge_t* %tmp154, %struct.shape_edge_t** null
	%tmp16254.0.rec = add i32 %edge.230.0.rec, 2		
	%xp.350.sum = add i32 0, %tmp16254.0.rec		
	%tmp168 = icmp slt i32 %xp.350.sum, 0		
	%indvar.next = add i32 %indvar, 1		
	br i1 %tmp168, label %bb140, label %bb174

bb174:		
	ret %struct.shape_path_t* null
}



