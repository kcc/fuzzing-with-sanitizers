



define i32 @yyparse() {
bb0:
	br i1 false, label %UnifiedExitNode, label %bb19
bb19:		
	br i1 false, label %bb28, label %UnifiedExitNode
bb28:		
	br i1 false, label %bb32, label %bb19
bb32:		
	br i1 false, label %UnifiedExitNode, label %bb28
UnifiedExitNode:		
	ret i32 0
}

