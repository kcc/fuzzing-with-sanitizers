




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

declare double @exp2(double)
declare float @exp2f(float)



define double @test_simplify1(i32 %x) {

  %conv = sitofp i32 %x to double
  %ret = call double @exp2(double %conv)

  ret double %ret
}

define double @test_simplify2(i16 signext %x) {

  %conv = sitofp i16 %x to double
  %ret = call double @exp2(double %conv)

  ret double %ret
}

define double @test_simplify3(i8 signext %x) {

  %conv = sitofp i8 %x to double
  %ret = call double @exp2(double %conv)

  ret double %ret
}

define float @test_simplify4(i32 %x) {

  %conv = sitofp i32 %x to float
  %ret = call float @exp2f(float %conv)

  ret float %ret
}



define double @test_no_simplify1(i32 %x) {

  %conv = uitofp i32 %x to double
  %ret = call double @exp2(double %conv)

  ret double %ret
}

define double @test_simplify6(i16 zeroext %x) {

  %conv = uitofp i16 %x to double
  %ret = call double @exp2(double %conv)

  ret double %ret
}

define double @test_simplify7(i8 zeroext %x) {

  %conv = uitofp i8 %x to double
  %ret = call double @exp2(double %conv)

  ret double %ret
}

define float @test_simplify8(i8 zeroext %x) {

  %conv = uitofp i8 %x to float
  %ret = call float @exp2f(float %conv)

  ret float %ret
}

declare double @llvm.exp2.f64(double)
declare float @llvm.exp2.f32(float)

define double @test_simplify9(i8 zeroext %x) {


  %conv = uitofp i8 %x to double
  %ret = call double @llvm.exp2.f64(double %conv)


  ret double %ret
}

define float @test_simplify10(i8 zeroext %x) {


  %conv = uitofp i8 %x to float
  %ret = call float @llvm.exp2.f32(float %conv)


  ret float %ret
}
