
	%union.x = type { i64 }





@r = global %union.x { i64 ptrtoint (%union.x* @r to i64) }, align 4





@x = global i64 mul (i64 3, i64 ptrtoint (i2* getelementptr (i2, i2* null, i64 1) to i64))
