

	%struct..0anon = type { i32 }
	%struct.binding_level = type { %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.binding_level*, i8, i8, i8, i8, i8, i32, %struct.tree_node* }
	%struct.lang_decl = type opaque
	%struct.rtx_def = type { i16, i8, i8, [1 x %struct..0anon] }
	%struct.tree_decl = type { [12 x i8], i8*, i32, %struct.tree_node*, i32, i8, i8, i8, i8, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.rtx_def*, %struct..0anon, { %struct.rtx_def* }, %struct.tree_node*, %struct.lang_decl* }
	%struct.tree_node = type { %struct.tree_decl }

define fastcc %struct.tree_node* @pushdecl(%struct.tree_node* %x) nounwind  {
entry:
	%tmp3.i40 = icmp eq %struct.binding_level* null, null		
	br label %bb140
bb140:		
	br i1 %tmp3.i40, label %bb160, label %bb17.i
bb17.i:		
	ret %struct.tree_node* null
bb143:		
	%tmp8.i43 = load %struct.tree_node*, %struct.tree_node** null, align 4		
	br i1 %tmp3.i40, label %bb160, label %bb9.i48
bb9.i48:		
	ret %struct.tree_node* null
bb160:		
	%t.0.reg2mem.0 = phi %struct.tree_node* [ null, %bb140 ], [ %tmp8.i43, %bb143 ]		
	%tmp162 = icmp eq %struct.tree_node* %t.0.reg2mem.0, null		
	br i1 %tmp162, label %bb174, label %bb165
bb165:		
	br label %bb174
bb174:		
	%line.0 = phi i32 [ 0, %bb165 ], [ undef, %bb160 ]		
	%file.0 = phi i8* [ null, %bb165 ], [ undef, %bb160 ]		
	br i1 %tmp162, label %bb344, label %bb73.i
bb73.i:		
	br i1 false, label %bb226.i, label %bb220.i
bb220.i:		
	ret %struct.tree_node* null
bb226.i:		
	br i1 false, label %bb260, label %bb273.i
bb273.i:		
	ret %struct.tree_node* null
bb260:		
	tail call void (i8*, i32, ...) @pedwarn_with_file_and_line( i8* %file.0, i32 %line.0, i8* null ) nounwind 
	ret %struct.tree_node* null
bb344:		
	ret %struct.tree_node* null
}

declare void @pedwarn_with_file_and_line(i8*, i32, ...) nounwind 
