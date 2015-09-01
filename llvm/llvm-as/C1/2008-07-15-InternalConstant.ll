

@.str = internal unnamed_addr constant [10 x i8] c"AAAAAAAAA\00"
@i0 = internal unnamed_addr constant [5 x i32] [ i32 0, i32 1, i32 2, i32 3, i32 4 ]

define i8* @foo() nounwind {
entry:



	ret i8* getelementptr ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)
}

define i32* @bar() nounwind  {
entry:



  ret i32* getelementptr ([5 x i32], [5 x i32]* @i0, i32 0, i32 0)
}



