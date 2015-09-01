

define double @test_direct(float %in) {

  %cmp = fcmp olt float %in, 0.000000e+00
  %val = select i1 %cmp, float 0.000000e+00, float %in
  %longer = fpext float %val to double
  ret double %longer


}

define double @test_cross(float %in) {

  %cmp = fcmp ult float %in, 0.000000e+00
  %val = select i1 %cmp, float %in, float 0.000000e+00
  %longer = fpext float %val to double
  ret double %longer


}



define double @test_cross_fail_nan(float %in) {

  %cmp = fcmp olt float %in, 0.000000e+00
  %val = select i1 %cmp, float %in, float 0.000000e+00
  %longer = fpext float %val to double
  ret double %longer


}



define float @test_cross_fail(float %lhs, float %rhs) {

  %tst = fcmp une float %lhs, %rhs
  %res = select i1 %tst, float %rhs, float %lhs
  ret float %res

  
  

}


define i64 @test_integer(i64  %in) {
  %cmp = icmp slt i64 %in, 0
  %val = select i1 %cmp, i64 0, i64 %in
  ret i64 %val
}
