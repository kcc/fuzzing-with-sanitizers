



define void @regalloc() nounwind {
entry:
	%0 = add i32 1, 2
	ret void
}








define void @smallstack() nounwind {
entry:
	%0 = alloca i8, i32 4
	ret void
}







define void @bigstack() nounwind {
entry:
	%0 = alloca i8, i32 230
	ret void
}





