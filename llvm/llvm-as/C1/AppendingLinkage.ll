







@X = appending global [2 x i32] [ i32 7, i32 4 ]		
@Y = global i32* getelementptr ([2 x i32], [2 x i32]* @X, i64 0, i64 0)		

define void @foo(i64 %V) {
	%Y = getelementptr [2 x i32], [2 x i32]* @X, i64 0, i64 %V		
	ret void
}

