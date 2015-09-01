
















@bytes = global [2 x i8] zeroinitializer

define void @s_i8(i8 inreg %a) nounwind {
entry:
	store i8 %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @bytes, i32 0, i32 1)
        ret void
}

















