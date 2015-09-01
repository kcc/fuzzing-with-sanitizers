


@i = thread_local global i32 15
@j = internal thread_local global i32 42
@k = internal thread_local global i32 42

define i32 @f1() {
entry:
	%tmp1 = load i32, i32* @i
	ret i32 %tmp1
}










@i2 = external thread_local global i32

define i32* @f2() {
entry:
	ret i32* @i
}











define i32 @f3() {
entry:
	%tmp1 = load i32, i32* @i		
	ret i32 %tmp1
}










define i32* @f4() nounwind {
entry:
	ret i32* @i
}










define i32 @f5() nounwind {
entry:
	%0 = load i32, i32* @j, align 4
	%1 = load i32, i32* @k, align 4
	%add = add nsw i32 %0, %1
	ret i32 %add
}












