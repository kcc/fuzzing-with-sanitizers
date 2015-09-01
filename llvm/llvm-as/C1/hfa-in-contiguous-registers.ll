

target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-none--gnueabihf"

%struct.s = type { float, float }
%union.t = type { [4 x float] }










define float @test1(float %a, double %b, %struct.s %c) {
entry:




  %result = extractvalue %struct.s %c, 0
  ret float %result
}








define float @test2(float %a, double %b, %union.t %c) #0 {
entry:




  %result = extractvalue %union.t %c, 0, 0
  ret float %result
}










define float @test3(float %a, double %b, %struct.s %c, float %d) {
entry:




  ret float %d
}








define float @test4(%struct.s %a, %struct.s %b) {
entry:



  %result = extractvalue %struct.s %b, 1
  ret float %result
}









define float @test5(%struct.s %a, float %b, %struct.s %c) {
entry:



  %result = extractvalue %struct.s %c, 0
  ret float %result
}
