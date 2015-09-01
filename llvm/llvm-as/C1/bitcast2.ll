


define i64 @test1(double %A) {
   %B = bitcast double %A to i64
   ret i64 %B
}

define double @test2(i64 %A) {
   %B = bitcast i64 %A to double
   ret double %B
}

