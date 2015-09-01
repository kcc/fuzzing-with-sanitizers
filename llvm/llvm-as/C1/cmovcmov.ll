


target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"

























define i32 @test_select_fcmp_oeq_i32(float %a, float %b, i32 %c, i32 %d) #0 {
entry:
  %cmp = fcmp oeq float %a, %b
  %r = select i1 %cmp, i32 %c, i32 %d
  ret i32 %r
}























define i64 @test_select_fcmp_oeq_i64(float %a, float %b, i64 %c, i64 %d) #0 {
entry:
  %cmp = fcmp oeq float %a, %b
  %r = select i1 %cmp, i64 %c, i64 %d
  ret i64 %r
}























define i64 @test_select_fcmp_une_i64(float %a, float %b, i64 %c, i64 %d) #0 {
entry:
  %cmp = fcmp une float %a, %b
  %r = select i1 %cmp, i64 %c, i64 %d
  ret i64 %r
}























define double @test_select_fcmp_oeq_f64(float %a, float %b, double %c, double %d) #0 {
entry:
  %cmp = fcmp oeq float %a, %b
  %r = select i1 %cmp, double %c, double %d
  ret double %r
}


















































define <4 x i32> @test_select_fcmp_oeq_v4i32(float %a, float %b, <4 x i32> %c, <4 x i32> %d) #0 {
entry:
  %cmp = fcmp oeq float %a, %b
  %r = select i1 %cmp, <4 x i32> %c, <4 x i32> %d
  ret <4 x i32> %r
}

















define float @test_zext_fcmp_une(float %a, float %b) #0 {
entry:
  %cmp = fcmp une float %a, %b
  %conv1 = zext i1 %cmp to i32
  %conv2 = sitofp i32 %conv1 to float
  ret float %conv2
}















define float @test_zext_fcmp_oeq(float %a, float %b) #0 {
entry:
  %cmp = fcmp oeq float %a, %b
  %conv1 = zext i1 %cmp to i32
  %conv2 = sitofp i32 %conv1 to float
  ret float %conv2
}

attributes #0 = { nounwind }
