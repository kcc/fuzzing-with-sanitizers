

@varfloat = global float 0.0
@vardouble = global double 0.0

declare void @use_float(float)
declare void @use_double(double)

define void @test_csel(i32 %lhs32, i32 %rhs32, i64 %lhs64) {


  %tst1 = icmp ugt i32 %lhs32, %rhs32
  %val1 = select i1 %tst1, float 0.0, float 1.0
  store float %val1, float* @varfloat




  %rhs64 = sext i32 %rhs32 to i64
  %tst2 = icmp sle i64 %lhs64, %rhs64
  %val2 = select i1 %tst2, double 1.0, double 0.0
  store double %val2, double* @vardouble




  call void @use_float(float 0.0)
  call void @use_float(float 1.0)

  call void @use_double(double 0.0)
  call void @use_double(double 1.0)

  ret void

}
