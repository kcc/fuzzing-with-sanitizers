

define double @test1(double %a, double %b, double %eps) {
  %cmp = fcmp olt double %a, %eps
  %cond = select i1 %cmp, double %b, double 0.000000e+00
  ret double %cond




}

define double @test2(double %a, double %b, double %eps) {
  %cmp = fcmp ole double %a, %eps
  %cond = select i1 %cmp, double %b, double 0.000000e+00
  ret double %cond




}

define double @test3(double %a, double %b, double %eps) {
  %cmp = fcmp ogt double %a, %eps
  %cond = select i1 %cmp, double %b, double 0.000000e+00
  ret double %cond




}

define double @test4(double %a, double %b, double %eps) {
  %cmp = fcmp oge double %a, %eps
  %cond = select i1 %cmp, double %b, double 0.000000e+00
  ret double %cond




}

define double @test5(double %a, double %b, double %eps) {
  %cmp = fcmp olt double %a, %eps
  %cond = select i1 %cmp, double 0.000000e+00, double %b
  ret double %cond




}

define double @test6(double %a, double %b, double %eps) {
  %cmp = fcmp ole double %a, %eps
  %cond = select i1 %cmp, double 0.000000e+00, double %b
  ret double %cond




}

define double @test7(double %a, double %b, double %eps) {
  %cmp = fcmp ogt double %a, %eps
  %cond = select i1 %cmp, double 0.000000e+00, double %b
  ret double %cond




}

define double @test8(double %a, double %b, double %eps) {
  %cmp = fcmp oge double %a, %eps
  %cond = select i1 %cmp, double 0.000000e+00, double %b
  ret double %cond




}

define float @test9(float %a, float %b, float %eps) {
  %cmp = fcmp olt float %a, %eps
  %cond = select i1 %cmp, float %b, float 0.000000e+00
  ret float %cond




}

define float @test10(float %a, float %b, float %eps) {
  %cmp = fcmp ole float %a, %eps
  %cond = select i1 %cmp, float %b, float 0.000000e+00
  ret float %cond




}

define float @test11(float %a, float %b, float %eps) {
  %cmp = fcmp ogt float %a, %eps
  %cond = select i1 %cmp, float %b, float 0.000000e+00
  ret float %cond




}

define float @test12(float %a, float %b, float %eps) {
  %cmp = fcmp oge float %a, %eps
  %cond = select i1 %cmp, float %b, float 0.000000e+00
  ret float %cond




}

define float @test13(float %a, float %b, float %eps) {
  %cmp = fcmp olt float %a, %eps
  %cond = select i1 %cmp, float 0.000000e+00, float %b
  ret float %cond




}

define float @test14(float %a, float %b, float %eps) {
  %cmp = fcmp ole float %a, %eps
  %cond = select i1 %cmp, float 0.000000e+00, float %b
  ret float %cond




}

define float @test15(float %a, float %b, float %eps) {
  %cmp = fcmp ogt float %a, %eps
  %cond = select i1 %cmp, float 0.000000e+00, float %b
  ret float %cond




}

define float @test16(float %a, float %b, float %eps) {
  %cmp = fcmp oge float %a, %eps
  %cond = select i1 %cmp, float 0.000000e+00, float %b
  ret float %cond




}

define float @test17(float %a, float %b, float %c, float %eps) {
  %cmp = fcmp oge float %a, %eps
  %cond = select i1 %cmp, float %c, float %b
  ret float %cond






}

define double @test18(double %a, double %b, double %c, double %eps) {
  %cmp = fcmp oge double %a, %eps
  %cond = select i1 %cmp, double %c, double %b
  ret double %cond






}
