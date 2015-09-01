



@test = global i64 0		

define internal i64 @test.upgrd.1() {
	%tmp.0 = load i64, i64* @test		
	%tmp.1 = add i64 %tmp.0, 1		
	ret i64 %tmp.1
}

define i32 @main() {
	%L = call i64 @test.upgrd.1( )		
	%I = trunc i64 %L to i32		
	ret i32 %I
}


