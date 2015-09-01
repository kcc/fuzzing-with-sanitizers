




define i32 @g() nounwind {
entry:
	call void asm sideeffect "$0", "r"(double 1.500000e+00) nounwind
	ret i32 0
}

