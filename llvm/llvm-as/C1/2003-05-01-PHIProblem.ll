

define void @child(i32 %ct.1) {
entry:
	switch i32 0, label %return [
		 i32 3, label %UnifiedExitNode
		 i32 0, label %return
	]
return:		
	%result.0 = phi i32* [ null, %entry ], [ null, %entry ]		
	br label %UnifiedExitNode
UnifiedExitNode:		
	ret void
}

