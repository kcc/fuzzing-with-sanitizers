



define fastcc void @gen_field_die(i32* %decl) nounwind {
entry:
	br i1 false, label %bb203, label %bb202

bb202:		
	unreachable

bb203:		
	%tmp = getelementptr i32, i32* %decl, i32 1		
	%tmp1 = load i32, i32* %tmp, align 4		
	br i1 false, label %bb207, label %bb204

bb204:		
	%tmp2 = getelementptr i32, i32* %decl, i32 1		
	br label %bb208

bb207:		
	br label %bb208

bb208:		
	%iftmp.1374.0.in = phi i32* [ null, %bb207 ], [ %tmp2, %bb204 ]		
	%iftmp.1374.0 = load i32, i32* %iftmp.1374.0.in		
	unreachable
}
