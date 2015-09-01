




define i32 @align1(i32* %p) nounwind {
entry:
	%0 = load i32, i32* %p, align 1		
	ret i32 %0
}






define i32 @align2(i32* %p) nounwind {
entry:
	%0 = load i32, i32* %p, align 2		
	ret i32 %0
}

@a = global [5 x i8] zeroinitializer, align 4






define i32 @align3() nounwind {
entry:
	%0 = load i32, i32* bitcast (i8* getelementptr ([5 x i8], [5 x i8]* @a, i32 0, i32 1) to i32*), align 1
	ret i32 %0
}
