


@G1 = internal thread_local global i32 0		




define i32* @foo() nounwind readnone {
entry:
	ret i32* @G1
}


