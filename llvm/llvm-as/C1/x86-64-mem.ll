








@ptr = external global i32*		
@src = external global [0 x i32]		
@dst = external global [0 x i32]		
@lptr = internal global i32* null		
@ldst = internal global [500 x i32] zeroinitializer, align 32		
@lsrc = internal global [500 x i32] zeroinitializer, align 32		
@bsrc = internal global [500000 x i32] zeroinitializer, align 32		
@bdst = internal global [500000 x i32] zeroinitializer, align 32		

define void @test1() nounwind {
	%tmp = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @src, i32 0, i32 0)		
	store i32 %tmp, i32* getelementptr ([0 x i32], [0 x i32]* @dst, i32 0, i32 0)
	ret void
}

define void @test2() nounwind {
	store i32* getelementptr ([0 x i32], [0 x i32]* @dst, i32 0, i32 0), i32** @ptr
	ret void
}

define void @test3() nounwind {
	store i32* getelementptr ([500 x i32], [500 x i32]* @ldst, i32 0, i32 0), i32** @lptr
	br label %return

return:		
	ret void
}
