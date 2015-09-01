









define float @test1(float %a) #0 {
entry:
  %call = tail call float @floorf(float %a) nounwind readnone
  ret float %call
}

declare float @floorf(float) nounwind readnone








define double @test2(double %a) #0 {
entry:
  %call = tail call double @floor(double %a) nounwind readnone
  ret double %call
}

declare double @floor(double) nounwind readnone






define float @test3(float %a) #0 {
entry:
  %call = tail call float @nearbyintf(float %a) nounwind readnone
  ret float %call
}

declare float @nearbyintf(float) nounwind readnone






define double @test4(double %a) #0 {
entry:
  %call = tail call double @nearbyint(double %a) nounwind readnone
  ret double %call
}

declare double @nearbyint(double) nounwind readnone








define float @test5(float %a) #0 {
entry:
  %call = tail call float @ceilf(float %a) nounwind readnone
  ret float %call
}

declare float @ceilf(float) nounwind readnone








define double @test6(double %a) #0 {
entry:
  %call = tail call double @ceil(double %a) nounwind readnone
  ret double %call
}

declare double @ceil(double) nounwind readnone






define float @test7(float %a) #0 {
entry:
  %call = tail call float @rintf(float %a) nounwind readnone
  ret float %call
}

declare float @rintf(float) nounwind readnone






define double @test8(double %a) #0 {
entry:
  %call = tail call double @rint(double %a) nounwind readnone
  ret double %call
}

declare double @rint(double) nounwind readnone








define float @test9(float %a) #0 {
entry:
  %call = tail call float @truncf(float %a) nounwind readnone
  ret float %call
}

declare float @truncf(float) nounwind readnone








define double @test10(double %a) #0 {
entry:
  %call = tail call double @trunc(double %a) nounwind readnone
  ret double %call
}

declare double @trunc(double) nounwind readnone








define float @test11(float %a) #0 {
entry:
  %call = tail call float @roundf(float %a) nounwind readnone
  ret float %call
}

declare float @roundf(float %a) nounwind readnone








define double @test12(double %a) #0 {
entry:
  %call = tail call double @round(double %a) nounwind readnone
  ret double %call
}

declare double @round(double %a) nounwind readnone








define float @test13(float %a) #1 {
entry:
  %call = tail call float @floorf(float %a) nounwind readnone
  ret float %call
}








define double @test14(double %a) #1 {
entry:
  %call = tail call double @floor(double %a) nounwind readnone
  ret double %call
}








define float @test15(float %a) #1 {
entry:
  %call = tail call float @ceilf(float %a) nounwind readnone
  ret float %call
}








define double @test16(double %a) #1 {
entry:
  %call = tail call double @ceil(double %a) nounwind readnone
  ret double %call
}








define float @test17(float %a) #1 {
entry:
  %call = tail call float @truncf(float %a) nounwind readnone
  ret float %call
}








define double @test18(double %a) #1 {
entry:
  %call = tail call double @trunc(double %a) nounwind readnone
  ret double %call
}








define float @test19(float %a) #1 {
entry:
  %call = tail call float @roundf(float %a) nounwind readnone
  ret float %call
}








define double @test20(double %a) #1 {
entry:
  %call = tail call double @round(double %a) nounwind readnone
  ret double %call
}



attributes #0 = { nounwind }
attributes #1 = { nounwind "unsafe-fp-math"="true" }
