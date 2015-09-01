












@.LC0 = internal global [4 x i8] c"foo\00"		
@X = global i8* null		

declare i32 @puts(i8*)

define void @main() {
bb1:
	%reg211 = call i32 @puts( i8* getelementptr ([4 x i8], [4 x i8]* @.LC0, i64 0, i64 0) )		
	ret void
}
