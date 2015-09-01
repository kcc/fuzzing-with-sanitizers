

define fastcc void @t() nounwind {
entry:
	br i1 undef, label %bb.i.i3, label %growMapping.exit

bb.i.i3:		
	unreachable

growMapping.exit:		
	unreachable
}
