



define i1 @test1(i8 %A) {
  %B = sitofp i8 %A to double
  %C = fcmp ult double %B, 128.0
  ret i1 %C
}



define i1 @test2(i8 %A) {
  %B = sitofp i8 %A to double
  %C = fcmp ugt double %B, -128.1
  ret i1 %C
}



define i1 @test3(i8 %A) {
  %B = sitofp i8 %A to double
  %C = fcmp ule double %B, 127.0
  ret i1 %C
}




define i1 @test4(i8 %A) {
  %B = sitofp i8 %A to double
  %C = fcmp ult double %B, 127.0
  ret i1 %C
}



define i32 @test5(i32 %A) {
  %B = sitofp i32 %A to double
  %C = fptosi double %B to i32
  %D = uitofp i32 %C to double
  %E = fptoui double %D to i32
  ret i32 %E
}




define i32 @test6(i32 %A) {
  %B = and i32 %A, 7
  %C = and i32 %A, 32
  %D = sitofp i32 %B to double
  %E = sitofp i32 %C to double
  %F = fadd double %D, %E
  %G = fptosi double %F to i32
  ret i32 %G
}



define i32 @test7(i32 %A) nounwind {
  %B = sitofp i32 %A to double
  %C = fptoui double %B to i32
  ret i32 %C
}



define i32 @test8(i32 %A) nounwind {
  %B = uitofp i32 %A to double
  %C = fptosi double %B to i32
  ret i32 %C
}




define i32 @test9(i8 %A) nounwind {
  %B = sitofp i8 %A to float
  %C = fptoui float %B to i32
  ret i32 %C
}




define i32 @test10(i8 %A) nounwind {
  %B = sitofp i8 %A to float
  %C = fptosi float %B to i32
  ret i32 %C
}






define i8 @test11(i32 %A) nounwind {
  %B = sitofp i32 %A to float
  %C = fptosi float %B to i8
  ret i8 %C
}






define i32 @test12(i8 %A) nounwind {
  %B = sitofp i8 %A to float
  %C = fptoui float %B to i32
  ret i32 %C
}





define i32 @test13(i25 %A) nounwind {
  %B = uitofp i25 %A to float
  %C = fptoui float %B to i32
  ret i32 %C
}





define i32 @test14(i24 %A) nounwind {
  %B = uitofp i24 %A to float
  %C = fptoui float %B to i32
  ret i32 %C
}





define i24 @test15(i32 %A) nounwind {
  %B = uitofp i32 %A to float
  %C = fptoui float %B to i24
  ret i24 %C
}




define i32 @test16(i25 %A) nounwind {
 %B = sitofp i25 %A to float
 %C = fptoui float %B to i32
 ret i32 %C
}






define i32 @test17(i26 %A) nounwind {
 %B = sitofp i26 %A to float
 %C = fptoui float %B to i32
 ret i32 %C
}




define i54 @test18(i64 %A) nounwind {
 %B = sitofp i64 %A to double
 %C = fptosi double %B to i54
 ret i54 %C
}






define i55 @test19(i64 %A) nounwind {
 %B = sitofp i64 %A to double
 %C = fptosi double %B to i55
 ret i55 %C
}

