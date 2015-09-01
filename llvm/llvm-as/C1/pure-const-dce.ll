

@g = global i32 0




















define i32 @test() {
entry:
	%tmp0 = call i32 @TestConst( i32 5 ) readnone 		
	%tmp1 = call i32 @TestPure( i32 6 ) readonly 		
	%tmp2 = call i32 @TestNone( i32 7 )		
	store i32 1, i32* @g
	%tmp3 = call i32 @TestConst( i32 5 ) readnone 		
	%tmp4 = call i32 @TestConst( i32 5 ) readnone 		
	%tmp5 = call i32 @TestPure( i32 6 ) readonly 		
	%tmp6 = call i32 @TestPure( i32 6 ) readonly 		
	%tmp7 = call i32 @TestNone( i32 7 )		
	%tmp8 = call i32 @TestNone( i32 7 )		
	%sum0 = add i32 %tmp0, %tmp1		
	%sum1 = add i32 %sum0, %tmp2		
	%sum2 = add i32 %sum1, %tmp3		
	%sum3 = add i32 %sum2, %tmp4		
	%sum4 = add i32 %sum3, %tmp5		
	%sum5 = add i32 %sum4, %tmp6		
	%sum6 = add i32 %sum5, %tmp7		
	%sum7 = add i32 %sum6, %tmp8		
	ret i32 %sum7
}

declare i32 @TestConst(i32) readnone

declare i32 @TestPure(i32) readonly

declare i32 @TestNone(i32)



