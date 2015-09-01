

@a = external constant [0 x i32], section ".cp.rodata"
@b = external global [0 x i32]

define i32 *@f1() nounwind {
entry:



	%0 = getelementptr [0 x i32], [0 x i32]* @a, i32 0, i32 1
	ret i32* %0
}

define i32 *@f2() nounwind {
entry:


	%0 = getelementptr [0 x i32], [0 x i32]* @b, i32 0, i32 1
	ret i32* %0
}




define i32 *@f3() nounwind {
entry:



	%0 = getelementptr [0 x i32], [0 x i32]* @a, i32 0, i32 -1
	ret i32* %0
}

define i32 *@f4() nounwind {
entry:



	%0 = getelementptr [0 x i32], [0 x i32]* @b, i32 0, i32 -1
	ret i32* %0
}
