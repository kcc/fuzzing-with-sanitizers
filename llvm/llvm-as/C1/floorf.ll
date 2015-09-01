


define float @test1() nounwind uwtable readnone ssp {

  %foo = call float @floorf(float 0x4000CCCCC0000000) nounwind readnone
  ret float %foo
}


define float @test2() nounwind uwtable readnone ssp {

  %foo = call float @ceilf(float 0x4000CCCCC0000000) nounwind readnone
  ret float %foo
}


define float @test3() nounwind uwtable readnone ssp {

  %foo = call float @truncf(float 0x4000CCCCC0000000) nounwind readnone
  ret float %foo
}

declare float @floorf(float) nounwind readnone
declare float @ceilf(float) nounwind readnone
declare float @truncf(float) nounwind readnone



