


@x = weak global i32 0		

define void @self_assign_1() {
entry:
	%tmp = load volatile i32, i32* @x		
	store volatile i32 %tmp, i32* @x
	br label %return

return:		
	ret void
}
