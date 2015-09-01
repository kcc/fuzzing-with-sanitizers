










target datalayout = "e-p:32:32"
target triple = "i686-pc-linux-gnu"
	%struct.anon = type <{ i8, i32, i32, i32 }>
@foos = external global %struct.anon		
@bara = weak global [4 x <{ i32, i8 }>] zeroinitializer		

define i32 @foo() nounwind {
entry:
	%tmp = load i32, i32* getelementptr (%struct.anon, %struct.anon* @foos, i32 0, i32 1)		
	%tmp3 = load i32, i32* getelementptr (%struct.anon, %struct.anon* @foos, i32 0, i32 2)		
	%tmp6 = load i32, i32* getelementptr (%struct.anon, %struct.anon* @foos, i32 0, i32 3)		
	%tmp4 = add i32 %tmp3, %tmp		
	%tmp7 = add i32 %tmp4, %tmp6		
	ret i32 %tmp7
}

define i8 @bar() nounwind {
entry:
	%tmp = load i8, i8* getelementptr ([4 x <{ i32, i8 }>], [4 x <{ i32, i8 }>]* @bara, i32 0, i32 0, i32 1)		
	%tmp4 = load i8, i8* getelementptr ([4 x <{ i32, i8 }>], [4 x <{ i32, i8 }>]* @bara, i32 0, i32 3, i32 1)		
	%tmp5 = add i8 %tmp4, %tmp		
	ret i8 %tmp5
}
