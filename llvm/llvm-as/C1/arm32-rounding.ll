





define float @test1(float %a) {
entry:
  %call = call float @floorf(float %a) nounwind readnone
  ret float %call
}




define double @test2(double %a) {
entry:
  %call = call double @floor(double %a) nounwind readnone
  ret double %call
}



define float @test3(float %a) {
entry:
  %call = call float @ceilf(float %a) nounwind readnone
  ret float %call
}




define double @test4(double %a) {
entry:
  %call = call double @ceil(double %a) nounwind readnone
  ret double %call
}



define float @test5(float %a) {
entry:
  %call = call float @roundf(float %a) nounwind readnone
  ret float %call
}




define double @test6(double %a) {
entry:
  %call = call double @round(double %a) nounwind readnone
  ret double %call
}



define float @test7(float %a) {
entry:
  %call = call float @truncf(float %a) nounwind readnone
  ret float %call
}




define double @test8(double %a) {
entry:
  %call = call double @trunc(double %a) nounwind readnone
  ret double %call
}



define float @test9(float %a) {
entry:
  %call = call float @nearbyintf(float %a) nounwind readnone
  ret float %call
}




define double @test10(double %a) {
entry:
  %call = call double @nearbyint(double %a) nounwind readnone
  ret double %call
}



define float @test11(float %a) {
entry:
  %call = call float @rintf(float %a) nounwind readnone
  ret float %call
}




define double @test12(double %a) {
entry:
  %call = call double @rint(double %a) nounwind readnone
  ret double %call
}

declare float @floorf(float) nounwind readnone
declare double @floor(double) nounwind readnone
declare float @ceilf(float) nounwind readnone
declare double @ceil(double) nounwind readnone
declare float @roundf(float) nounwind readnone
declare double @round(double) nounwind readnone
declare float @truncf(float) nounwind readnone
declare double @trunc(double) nounwind readnone
declare float @nearbyintf(float) nounwind readnone
declare double @nearbyint(double) nounwind readnone
declare float @rintf(float) nounwind readnone
declare double @rint(double) nounwind readnone
