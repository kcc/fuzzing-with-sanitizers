


define float @test1(float %x) nounwind  {
  %call = tail call float @floorf(float %x) nounwind readnone
  ret float %call






}

declare float @floorf(float) nounwind readnone

define double @test2(double %x) nounwind  {
  %call = tail call double @floor(double %x) nounwind readnone
  ret double %call






}

declare double @floor(double) nounwind readnone

define float @test3(float %x) nounwind  {
  %call = tail call float @nearbyintf(float %x) nounwind readnone
  ret float %call






}

declare float @nearbyintf(float) nounwind readnone

define double @test4(double %x) nounwind  {
  %call = tail call double @nearbyint(double %x) nounwind readnone
  ret double %call






}

declare double @nearbyint(double) nounwind readnone

define float @test5(float %x) nounwind  {
  %call = tail call float @ceilf(float %x) nounwind readnone
  ret float %call






}

declare float @ceilf(float) nounwind readnone

define double @test6(double %x) nounwind  {
  %call = tail call double @ceil(double %x) nounwind readnone
  ret double %call






}

declare double @ceil(double) nounwind readnone

define float @test7(float %x) nounwind  {
  %call = tail call float @rintf(float %x) nounwind readnone
  ret float %call






}

declare float @rintf(float) nounwind readnone

define double @test8(double %x) nounwind  {
  %call = tail call double @rint(double %x) nounwind readnone
  ret double %call






}

declare double @rint(double) nounwind readnone

define float @test9(float %x) nounwind  {
  %call = tail call float @truncf(float %x) nounwind readnone
  ret float %call






}

declare float @truncf(float) nounwind readnone

define double @test10(double %x) nounwind  {
  %call = tail call double @trunc(double %x) nounwind readnone
  ret double %call






}

declare double @trunc(double) nounwind readnone
