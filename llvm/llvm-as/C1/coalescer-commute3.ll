

	%struct.quad_struct = type { i32, i32, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct*, %struct.quad_struct* }

define  i32 @perimeter(%struct.quad_struct* %tree, i32 %size) nounwind  {
entry:
	switch i32 %size, label %UnifiedReturnBlock [
		 i32 2, label %bb
		 i32 0, label %bb50
	]

bb:		
	%tmp31 = tail call  i32 @perimeter( %struct.quad_struct* null, i32 0 ) nounwind 		
	%tmp40 = tail call  i32 @perimeter( %struct.quad_struct* null, i32 0 ) nounwind 		
	%tmp33 = add i32 0, %tmp31		
	%tmp42 = add i32 %tmp33, %tmp40		
	ret i32 %tmp42

bb50:		
	ret i32 0

UnifiedReturnBlock:		
	ret i32 0
}
