




define x86_vectorcallcc i32 @test_int_1() {
  ret i32 0
}




define x86_vectorcallcc i32 @test_int_2(i32 inreg %a) {
  ret i32 %a
}





define x86_vectorcallcc i32 @test_int_3(i64 inreg %a) {
  %at = trunc i64 %a to i32
  ret i32 %at
}





define x86_vectorcallcc i32 @test_int_4(i32 inreg %a, i32 inreg %b) {
  %s = add i32 %a, %b
  ret i32 %s
}







define x86_vectorcallcc i32 @"\01test_int_5"(i32, i32) {
  ret i32 0
}


define x86_vectorcallcc double @test_fp_1(double %a, double %b) {
  ret double %b
}



define x86_vectorcallcc double @test_fp_2(
    double, double, double, double, double, double, double %r) {
  ret double %r
}



define x86_vectorcallcc {double, double, double, double} @test_fp_3() {
  ret {double, double, double, double}
        { double 0.0, double 0.0, double 0.0, double 0.0 }
}








define x86_vectorcallcc {double, double, double, double, double} @test_fp_4() {
  ret {double, double, double, double, double}
        { double 0.0, double 0.0, double 0.0, double 0.0, double 0.0 }
}







define x86_vectorcallcc <16 x i8> @test_vec_1(<16 x i8> %a, <16 x i8> %b) {
  ret <16 x i8> %b
}



define x86_vectorcallcc <16 x i8> @test_vec_2(
    double, <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> %r) {
  ret <16 x i8> %r
}


