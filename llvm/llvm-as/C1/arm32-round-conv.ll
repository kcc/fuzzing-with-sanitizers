




define i32 @test1(float %a) {
entry:
  %call = call float @floorf(float %a) nounwind readnone
  %conv = fptosi float %call to i32
  ret i32 %conv
}



define i32 @test2(float %a) {
entry:
  %call = call float @floorf(float %a) nounwind readnone
  %conv = fptoui float %call to i32
  ret i32 %conv
}



define i32 @test3(double %a) {
entry:
  %call = call double @floor(double %a) nounwind readnone
  %conv = fptosi double %call to i32
  ret i32 %conv
}



define i32 @test4(double %a) {
entry:
  %call = call double @floor(double %a) nounwind readnone
  %conv = fptoui double %call to i32
  ret i32 %conv
}



define i32 @test5(float %a) {
entry:
  %call = call float @ceilf(float %a) nounwind readnone
  %conv = fptosi float %call to i32
  ret i32 %conv
}



define i32 @test6(float %a) {
entry:
  %call = call float @ceilf(float %a) nounwind readnone
  %conv = fptoui float %call to i32
  ret i32 %conv
}



define i32 @test7(double %a) {
entry:
  %call = call double @ceil(double %a) nounwind readnone
  %conv = fptosi double %call to i32
  ret i32 %conv
}



define i32 @test8(double %a) {
entry:
  %call = call double @ceil(double %a) nounwind readnone
  %conv = fptoui double %call to i32
  ret i32 %conv
}



define i32 @test9(float %a) {
entry:
  %call = call float @roundf(float %a) nounwind readnone
  %conv = fptosi float %call to i32
  ret i32 %conv
}



define i32 @test10(float %a) {
entry:
  %call = call float @roundf(float %a) nounwind readnone
  %conv = fptoui float %call to i32
  ret i32 %conv
}



define i32 @test11(double %a) {
entry:
  %call = call double @round(double %a) nounwind readnone
  %conv = fptosi double %call to i32
  ret i32 %conv
}



define i32 @test12(double %a) {
entry:
  %call = call double @round(double %a) nounwind readnone
  %conv = fptoui double %call to i32
  ret i32 %conv
}

declare float @floorf(float) nounwind readnone
declare double @floor(double) nounwind readnone
declare float @ceilf(float) nounwind readnone
declare double @ceil(double) nounwind readnone
declare float @roundf(float) nounwind readnone
declare double @round(double) nounwind readnone
