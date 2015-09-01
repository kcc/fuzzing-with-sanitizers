



define double @test1(double %A) {
  %1 = bitcast double %A to <2 x i32>
  %add = add <2 x i32> %1, <i32 3, i32 5>
  %2 = bitcast <2 x i32> %add to double
  ret double %2
}

















define double @test2(double %A, double %B) {
  %1 = bitcast double %A to <2 x i32>
  %2 = bitcast double %B to <2 x i32>
  %add = add <2 x i32> %1, %2
  %3 = bitcast <2 x i32> %add to double
  ret double %3
}











define i64 @test3(i64 %A) {
  %1 = bitcast i64 %A to <2 x float>
  %add = fadd <2 x float> %1, <float 3.0, float 5.0>
  %2 = bitcast <2 x float> %add to i64
  ret i64 %2
}













define i64 @test4(i64 %A) {
  %1 = bitcast i64 %A to <2 x i32>
  %add = add <2 x i32> %1, <i32 3, i32 5>
  %2 = bitcast <2 x i32> %add to i64
  ret i64 %2
}

















define double @test5(double %A) {
  %1 = bitcast double %A to <2 x float>
  %add = fadd <2 x float> %1, <float 3.0, float 5.0>
  %2 = bitcast <2 x float> %add to double
  ret double %2
}









define double @test6(double %A) {
  %1 = bitcast double %A to <4 x i16>
  %add = add <4 x i16> %1, <i16 3, i16 4, i16 5, i16 6>
  %2 = bitcast <4 x i16> %add to double
  ret double %2
}

















define double @test7(double %A, double %B) {
  %1 = bitcast double %A to <4 x i16>
  %2 = bitcast double %B to <4 x i16>
  %add = add <4 x i16> %1, %2
  %3 = bitcast <4 x i16> %add to double
  ret double %3
}













define double @test8(double %A) {
  %1 = bitcast double %A to <8 x i8>
  %add = add <8 x i8> %1, <i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10>
  %2 = bitcast <8 x i8> %add to double
  ret double %2
}


















define double @test9(double %A, double %B) {
  %1 = bitcast double %A to <8 x i8>
  %2 = bitcast double %B to <8 x i8>
  %add = add <8 x i8> %1, %2
  %3 = bitcast <8 x i8> %add to double
  ret double %3
}












