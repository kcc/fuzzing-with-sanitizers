








define <4 x i16> @test1() {
  %1 = insertelement <4 x i8> undef, i8 0, i32 0
  %2 = insertelement <4 x i8> %1, i8 -1, i32 1
  %3 = insertelement <4 x i8> %2, i8 2, i32 2
  %4 = insertelement <4 x i8> %3, i8 -3, i32 3
  %5 = sext <4 x i8> %4 to <4 x i16>
  ret <4 x i16> %5
}




define <4 x i16> @test2() {
  %1 = insertelement <4 x i8> undef, i8 undef, i32 0
  %2 = insertelement <4 x i8> %1, i8 -1, i32 1
  %3 = insertelement <4 x i8> %2, i8 undef, i32 2
  %4 = insertelement <4 x i8> %3, i8 -3, i32 3
  %5 = sext <4 x i8> %4 to <4 x i16>
  ret <4 x i16> %5
}




define <4 x i32> @test3() {
  %1 = insertelement <4 x i8> undef, i8 0, i32 0
  %2 = insertelement <4 x i8> %1, i8 -1, i32 1
  %3 = insertelement <4 x i8> %2, i8 2, i32 2
  %4 = insertelement <4 x i8> %3, i8 -3, i32 3
  %5 = sext <4 x i8> %4 to <4 x i32>
  ret <4 x i32> %5
}




define <4 x i32> @test4() {
  %1 = insertelement <4 x i8> undef, i8 undef, i32 0
  %2 = insertelement <4 x i8> %1, i8 -1, i32 1
  %3 = insertelement <4 x i8> %2, i8 undef, i32 2
  %4 = insertelement <4 x i8> %3, i8 -3, i32 3
  %5 = sext <4 x i8> %4 to <4 x i32>
  ret <4 x i32> %5
}





define <4 x i64> @test5() {
  %1 = insertelement <4 x i8> undef, i8 0, i32 0
  %2 = insertelement <4 x i8> %1, i8 -1, i32 1
  %3 = insertelement <4 x i8> %2, i8 2, i32 2
  %4 = insertelement <4 x i8> %3, i8 -3, i32 3
  %5 = sext <4 x i8> %4 to <4 x i64>
  ret <4 x i64> %5
}





define <4 x i64> @test6() {
  %1 = insertelement <4 x i8> undef, i8 undef, i32 0
  %2 = insertelement <4 x i8> %1, i8 -1, i32 1
  %3 = insertelement <4 x i8> %2, i8 undef, i32 2
  %4 = insertelement <4 x i8> %3, i8 -3, i32 3
  %5 = sext <4 x i8> %4 to <4 x i64>
  ret <4 x i64> %5
}





define <8 x i16> @test7() {
  %1 = insertelement <8 x i8> undef, i8 0, i32 0
  %2 = insertelement <8 x i8> %1, i8 -1, i32 1
  %3 = insertelement <8 x i8> %2, i8 2, i32 2
  %4 = insertelement <8 x i8> %3, i8 -3, i32 3
  %5 = insertelement <8 x i8> %4, i8 4, i32 4
  %6 = insertelement <8 x i8> %5, i8 -5, i32 5
  %7 = insertelement <8 x i8> %6, i8 6, i32 6
  %8 = insertelement <8 x i8> %7, i8 -7, i32 7
  %9 = sext <8 x i8> %4 to <8 x i16>
  ret <8 x i16> %9
}




define <8 x i32> @test8() {
  %1 = insertelement <8 x i8> undef, i8 0, i32 0
  %2 = insertelement <8 x i8> %1, i8 -1, i32 1
  %3 = insertelement <8 x i8> %2, i8 2, i32 2
  %4 = insertelement <8 x i8> %3, i8 -3, i32 3
  %5 = insertelement <8 x i8> %4, i8 4, i32 4
  %6 = insertelement <8 x i8> %5, i8 -5, i32 5
  %7 = insertelement <8 x i8> %6, i8 6, i32 6
  %8 = insertelement <8 x i8> %7, i8 -7, i32 7
  %9 = sext <8 x i8> %4 to <8 x i32>
  ret <8 x i32> %9
}





define <8 x i16> @test9() {
  %1 = insertelement <8 x i8> undef, i8 undef, i32 0
  %2 = insertelement <8 x i8> %1, i8 -1, i32 1
  %3 = insertelement <8 x i8> %2, i8 undef, i32 2
  %4 = insertelement <8 x i8> %3, i8 -3, i32 3
  %5 = insertelement <8 x i8> %4, i8 undef, i32 4
  %6 = insertelement <8 x i8> %5, i8 -5, i32 5
  %7 = insertelement <8 x i8> %6, i8 undef, i32 6
  %8 = insertelement <8 x i8> %7, i8 -7, i32 7
  %9 = sext <8 x i8> %4 to <8 x i16>
  ret <8 x i16> %9
}




define <8 x i32> @test10() {
  %1 = insertelement <8 x i8> undef, i8 0, i32 0
  %2 = insertelement <8 x i8> %1, i8 undef, i32 1
  %3 = insertelement <8 x i8> %2, i8 2, i32 2
  %4 = insertelement <8 x i8> %3, i8 undef, i32 3
  %5 = insertelement <8 x i8> %4, i8 4, i32 4
  %6 = insertelement <8 x i8> %5, i8 undef, i32 5
  %7 = insertelement <8 x i8> %6, i8 6, i32 6
  %8 = insertelement <8 x i8> %7, i8 undef, i32 7
  %9 = sext <8 x i8> %4 to <8 x i32>
  ret <8 x i32> %9
}






define <4 x i16> @test11() {
  %1 = insertelement <4 x i8> undef, i8 0, i32 0
  %2 = insertelement <4 x i8> %1, i8 -1, i32 1
  %3 = insertelement <4 x i8> %2, i8 2, i32 2
  %4 = insertelement <4 x i8> %3, i8 -3, i32 3
  %5 = zext <4 x i8> %4 to <4 x i16>
  ret <4 x i16> %5
}




define <4 x i32> @test12() {
  %1 = insertelement <4 x i8> undef, i8 0, i32 0
  %2 = insertelement <4 x i8> %1, i8 -1, i32 1
  %3 = insertelement <4 x i8> %2, i8 2, i32 2
  %4 = insertelement <4 x i8> %3, i8 -3, i32 3
  %5 = zext <4 x i8> %4 to <4 x i32>
  ret <4 x i32> %5
}




define <4 x i64> @test13() {
  %1 = insertelement <4 x i8> undef, i8 0, i32 0
  %2 = insertelement <4 x i8> %1, i8 -1, i32 1
  %3 = insertelement <4 x i8> %2, i8 2, i32 2
  %4 = insertelement <4 x i8> %3, i8 -3, i32 3
  %5 = zext <4 x i8> %4 to <4 x i64>
  ret <4 x i64> %5
}





define <4 x i16> @test14() {
  %1 = insertelement <4 x i8> undef, i8 undef, i32 0
  %2 = insertelement <4 x i8> %1, i8 -1, i32 1
  %3 = insertelement <4 x i8> %2, i8 undef, i32 2
  %4 = insertelement <4 x i8> %3, i8 -3, i32 3
  %5 = zext <4 x i8> %4 to <4 x i16>
  ret <4 x i16> %5
}




define <4 x i32> @test15() {
  %1 = insertelement <4 x i8> undef, i8 0, i32 0
  %2 = insertelement <4 x i8> %1, i8 undef, i32 1
  %3 = insertelement <4 x i8> %2, i8 2, i32 2
  %4 = insertelement <4 x i8> %3, i8 undef, i32 3
  %5 = zext <4 x i8> %4 to <4 x i32>
  ret <4 x i32> %5
}




define <4 x i64> @test16() {
  %1 = insertelement <4 x i8> undef, i8 undef, i32 0
  %2 = insertelement <4 x i8> %1, i8 -1, i32 1
  %3 = insertelement <4 x i8> %2, i8 2, i32 2
  %4 = insertelement <4 x i8> %3, i8 undef, i32 3
  %5 = zext <4 x i8> %4 to <4 x i64>
  ret <4 x i64> %5
}





define <8 x i16> @test17() {
  %1 = insertelement <8 x i8> undef, i8 0, i32 0
  %2 = insertelement <8 x i8> %1, i8 -1, i32 1
  %3 = insertelement <8 x i8> %2, i8 2, i32 2
  %4 = insertelement <8 x i8> %3, i8 -3, i32 3
  %5 = insertelement <8 x i8> %4, i8 4, i32 4
  %6 = insertelement <8 x i8> %5, i8 -5, i32 5
  %7 = insertelement <8 x i8> %6, i8 6, i32 6
  %8 = insertelement <8 x i8> %7, i8 -7, i32 7
  %9 = zext <8 x i8> %8 to <8 x i16>
  ret <8 x i16> %9
}




define <8 x i32> @test18() {
  %1 = insertelement <8 x i8> undef, i8 0, i32 0
  %2 = insertelement <8 x i8> %1, i8 -1, i32 1
  %3 = insertelement <8 x i8> %2, i8 2, i32 2
  %4 = insertelement <8 x i8> %3, i8 -3, i32 3
  %5 = insertelement <8 x i8> %4, i8 4, i32 4
  %6 = insertelement <8 x i8> %5, i8 -5, i32 5
  %7 = insertelement <8 x i8> %6, i8 6, i32 6
  %8 = insertelement <8 x i8> %7, i8 -7, i32 7
  %9 = zext <8 x i8> %8 to <8 x i32>
  ret <8 x i32> %9
}





define <8 x i16> @test19() {
  %1 = insertelement <8 x i8> undef, i8 undef, i32 0
  %2 = insertelement <8 x i8> %1, i8 -1, i32 1
  %3 = insertelement <8 x i8> %2, i8 undef, i32 2
  %4 = insertelement <8 x i8> %3, i8 -3, i32 3
  %5 = insertelement <8 x i8> %4, i8 undef, i32 4
  %6 = insertelement <8 x i8> %5, i8 -5, i32 5
  %7 = insertelement <8 x i8> %6, i8 undef, i32 6
  %8 = insertelement <8 x i8> %7, i8 -7, i32 7
  %9 = zext <8 x i8> %8 to <8 x i16>
  ret <8 x i16> %9
}




define <8 x i32> @test20() {
  %1 = insertelement <8 x i8> undef, i8 0, i32 0
  %2 = insertelement <8 x i8> %1, i8 undef, i32 1
  %3 = insertelement <8 x i8> %2, i8 2, i32 2
  %4 = insertelement <8 x i8> %3, i8 -3, i32 3
  %5 = insertelement <8 x i8> %4, i8 4, i32 4
  %6 = insertelement <8 x i8> %5, i8 undef, i32 5
  %7 = insertelement <8 x i8> %6, i8 6, i32 6
  %8 = insertelement <8 x i8> %7, i8 undef, i32 7
  %9 = zext <8 x i8> %8 to <8 x i32>
  ret <8 x i32> %9
}





