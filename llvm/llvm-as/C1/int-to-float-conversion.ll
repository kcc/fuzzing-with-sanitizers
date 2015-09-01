



@i1 = global [3 x i32] [i32 1, i32 2, i32 3], align 4
@i3 = common global i32* null, align 4





define float @test_float_int_(i32 %a) {
entry:
  %conv = sitofp i32 %a to float
  ret float %conv
}








define double @test_double_int_(i32 %a) {
entry:
  %conv = sitofp i32 %a to double
  ret double %conv
}





define float @test_float_LL_(i64 %a) {
entry:
  %conv = sitofp i64 %a to float
  ret float %conv
}





define double @test_double_LL_(i64 %a) {
entry:
  %conv = sitofp i64 %a to double
  ret double %conv
}
