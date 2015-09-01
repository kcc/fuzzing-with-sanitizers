

define i32 @test1_factorial(i32 %x) {
entry:
	%tmp.1 = icmp sgt i32 %x, 0		
	br i1 %tmp.1, label %then, label %else
then:		
	%tmp.6 = add i32 %x, -1		
	%tmp.4 = call i32 @test1_factorial( i32 %tmp.6 )		
	%tmp.7 = mul i32 %tmp.4, %x		
	ret i32 %tmp.7
else:		
	ret i32 1
}









define i32 @test2_mul(i32 %x, i32 %y) {
entry:
	%tmp.1 = icmp eq i32 %y, 0		
	br i1 %tmp.1, label %return, label %endif
endif:		
	%tmp.8 = add i32 %y, -1		
	%tmp.5 = call i32 @test2_mul( i32 %x, i32 %tmp.8 )		
	%tmp.9 = add i32 %tmp.5, %x		
	ret i32 %tmp.9
return:		
	ret i32 %x
}







define i64 @test3_fib(i64 %n) nounwind readnone {

entry:



  switch i64 %n, label %bb1 [

    i64 0, label %bb2
    i64 1, label %bb2
  ]

bb1:

  %0 = add i64 %n, -1

  %1 = tail call i64 @test3_fib(i64 %0) nounwind

  %2 = add i64 %n, -2

  %3 = tail call i64 @test3_fib(i64 %2) nounwind

  %4 = add nsw i64 %3, %1

  ret i64 %4


bb2:

  ret i64 %n

}
