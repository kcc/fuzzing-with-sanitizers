








@str = internal constant [12 x i8] c"Hello World\00"

define i32 @main() {
	%tmp = call i32 @puts( i8* getelementptr ([12 x i8], [12 x i8]* @str, i32 0, i64 0) )		
	ret i32 0
}

declare i32 @puts(i8*)








