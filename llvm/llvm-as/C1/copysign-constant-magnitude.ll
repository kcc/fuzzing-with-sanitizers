

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

define void @test_copysign_const_magnitude_d(double %X) {











  %iX = call double @id_d(double %X)


  %d0 = call double @copysign(double 0.000000e+00, double %iX)


  %id0 = call double @id_d(double %d0)



  %dn0 = call double @copysign(double -0.000000e+00, double %id0)


  %idn0 = call double @id_d(double %dn0)



  %d1 = call double @copysign(double 1.000000e+00, double %idn0)


  %id1 = call double @id_d(double %d1)



  %dn1 = call double @copysign(double -1.000000e+00, double %id1)


  %idn1 = call double @id_d(double %dn1)


  ret void
}

define void @test_copysign_const_magnitude_f(float %X) {















  %iX = call float @id_f(float %X)


  %d0 = call float @copysignf(float 0.000000e+00, float %iX)


  %id0 = call float @id_f(float %d0)



  %dn0 = call float @copysignf(float -0.000000e+00, float %id0)


  %idn0 = call float @id_f(float %dn0)



  %d1 = call float @copysignf(float 1.000000e+00, float %idn0)


  %id1 = call float @id_f(float %d1)



  %dn1 = call float @copysignf(float -1.000000e+00, float %id1)


  %idn1 = call float @id_f(float %dn1)


  ret void
}

declare double @copysign(double, double) nounwind readnone
declare float @copysignf(float, float) nounwind readnone


declare double @id_d(double)
declare float @id_f(float)
