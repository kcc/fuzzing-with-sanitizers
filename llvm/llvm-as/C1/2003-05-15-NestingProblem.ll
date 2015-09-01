







define void @getAndMoveToFrontDecode() {
	br label %endif.2

endif.2:		
	br i1 false, label %loopentry.5, label %UnifiedExitNode

loopentry.5:		
	br i1 false, label %loopentry.6, label %UnifiedExitNode

loopentry.6:		
	br i1 false, label %loopentry.7, label %loopexit.6

loopentry.7:		
	br i1 false, label %loopentry.7, label %loopentry.6

loopexit.6:		
	br i1 false, label %loopentry.5, label %loopexit.5

loopexit.5:		
	br i1 false, label %endif.2, label %UnifiedExitNode

UnifiedExitNode:		
	ret void
}
