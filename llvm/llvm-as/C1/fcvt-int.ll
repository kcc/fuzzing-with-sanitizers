

define i32 @test_floattoi32(float %in) {


  %signed = fptosi float %in to i32
  %unsigned = fptoui float %in to i32



  %res = sub i32 %signed, %unsigned


  ret i32 %res

}

define i32 @test_doubletoi32(double %in) {


  %signed = fptosi double %in to i32
  %unsigned = fptoui double %in to i32



  %res = sub i32 %signed, %unsigned


  ret i32 %res

}

define i64 @test_floattoi64(float %in) {


  %signed = fptosi float %in to i64
  %unsigned = fptoui float %in to i64



  %res = sub i64 %signed, %unsigned


  ret i64 %res

}

define i64 @test_doubletoi64(double %in) {


  %signed = fptosi double %in to i64
  %unsigned = fptoui double %in to i64



  %res = sub i64 %signed, %unsigned


  ret i64 %res

}

define float @test_i32tofloat(i32 %in) {


  %signed = sitofp i32 %in to float
  %unsigned = uitofp i32 %in to float



  %res = fsub float %signed, %unsigned

  ret float %res

}

define double @test_i32todouble(i32 %in) {


  %signed = sitofp i32 %in to double
  %unsigned = uitofp i32 %in to double



  %res = fsub double %signed, %unsigned

  ret double %res

}

define float @test_i64tofloat(i64 %in) {


  %signed = sitofp i64 %in to float
  %unsigned = uitofp i64 %in to float



  %res = fsub float %signed, %unsigned

  ret float %res

}

define double @test_i64todouble(i64 %in) {


  %signed = sitofp i64 %in to double
  %unsigned = uitofp i64 %in to double



  %res = fsub double %signed, %unsigned

  ret double %res

}

define i32 @test_bitcastfloattoi32(float %in) {


   %res = bitcast float %in to i32

   ret i32 %res
}

define i64 @test_bitcastdoubletoi64(double %in) {


   %res = bitcast double %in to i64

   ret i64 %res
}

define float @test_bitcasti32tofloat(i32 %in) {


   %res = bitcast i32 %in to float

   ret float %res

}

define double @test_bitcasti64todouble(i64 %in) {


   %res = bitcast i64 %in to double

   ret double %res

}
