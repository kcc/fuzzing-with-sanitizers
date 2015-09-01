



define i64 @i8i16callee(i64 %a1, i64 %a2, i64 %a3, i8 signext %a4, i16 signext %a5, i64 %a6, i64 %a7, i64 %a8, i8 signext %b1, i16 signext %b2, i8 signext %b3, i8 signext %b4) nounwind readnone noinline {
entry:












  %conv = sext i8 %a4 to i64
  %conv3 = sext i16 %a5 to i64
  %conv8 = sext i8 %b1 to i64
  %conv9 = sext i16 %b2 to i64
  %conv11 = sext i8 %b3 to i64
  %conv13 = sext i8 %b4 to i64
  %add10 = add i64 %a2, %a1
  %add12 = add i64 %add10, %a3
  %add14 = add i64 %add12, %conv
  %add = add i64 %add14, %conv3
  %add1 = add i64 %add, %a6
  %add2 = add i64 %add1, %a7
  %add4 = add i64 %add2, %a8
  %add5 = add i64 %add4, %conv8
  %add6 = add i64 %add5, %conv9
  %add7 = add i64 %add6, %conv11
  %add15 = add i64 %add7, %conv13
  %sext = shl i64 %add15, 32
  %conv17 = ashr exact i64 %sext, 32
  ret i64 %conv17
}

define i32 @i8i16caller() nounwind readnone {
entry:














  %call = tail call i64 @i8i16callee(i64 0, i64 1, i64 2, i8 signext 3, i16 signext 4, i64 5, i64 6, i64 7, i8 signext 97, i16 signext 98, i8 signext 99, i8 signext 100)
  %conv = trunc i64 %call to i32
  ret i32 %conv
}


define double @circle_center([2 x float] %a) nounwind ssp {
  %call = tail call double @ext([2 x float] %a) nounwind


  ret double %call
}
declare double @ext([2 x float])




define double @fixed_4i(<4 x i32>* nocapture %in) nounwind {
entry:






  %0 = load <4 x i32>, <4 x i32>* %in, align 16
  %call = tail call double @args_vec_4i(double 3.000000e+00, <4 x i32> %0, <4 x i32> %0, <4 x i32> %0, <4 x i32> %0, <4 x i32> %0, <4 x i32> %0, <4 x i32> %0, double 3.000000e+00, <4 x i32> %0, i8 signext 3)
  ret double %call
}
declare double @args_vec_4i(double, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, double, <4 x i32>, i8 signext)



@g_d = common global double 0.000000e+00, align 8
define void @test1(float %f1, double %d1, double %d2, double %d3, double %d4,
       double %d5, double %d6, double %d7, double %d8, i32 %i) nounwind ssp {
entry:




  %conv = sitofp i32 %i to float
  %add = fadd float %conv, %f1
  %conv1 = fpext float %add to double
  %add2 = fadd double %conv1, %d7
  %add3 = fadd double %add2, %d8
  store double %add3, double* @g_d, align 8
  ret void
}


define void @test2(i32 %i1, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6,
            i32 %i7, i32 %i8, i32 %i9, float %d1) nounwind ssp {
entry:




  %conv = sitofp i32 %i1 to float
  %add = fadd float %conv, %d1
  %conv1 = fpext float %add to double
  %conv2 = sitofp i32 %i8 to double
  %add3 = fadd double %conv2, %conv1
  %conv4 = sitofp i32 %i9 to double
  %add5 = fadd double %conv4, %add3
  store double %add5, double* @g_d, align 8
  ret void
}



define double @test3(<2 x i32>* nocapture %in) nounwind {
entry:






  %0 = load <2 x i32>, <2 x i32>* %in, align 8
  %call = tail call double @args_vec_2i(double 3.000000e+00, <2 x i32> %0,
          <2 x i32> %0, <2 x i32> %0, <2 x i32> %0, <2 x i32> %0, <2 x i32> %0,
          <2 x i32> %0, float 3.000000e+00, <2 x i32> %0, i8 signext 3)
  ret double %call
}
declare double @args_vec_2i(double, <2 x i32>, <2 x i32>, <2 x i32>, <2 x i32>,
               <2 x i32>, <2 x i32>, <2 x i32>, float, <2 x i32>, i8 signext)

define double @test4(double* nocapture %in) nounwind {
entry:




  %0 = load double, double* %in, align 8
  %call = tail call double @args_f64(double 3.000000e+00, double %0, double %0,
          double %0, double %0, double %0, double %0, double %0,
          float 3.000000e+00, double %0, i8 signext 3)
  ret double %call
}
declare double @args_f64(double, double, double, double, double, double, double,
               double, float, double, i8 signext)

define i64 @test5(i64* nocapture %in) nounwind {
entry:




  %0 = load i64, i64* %in, align 8
  %call = tail call i64 @args_i64(i64 3, i64 %0, i64 %0, i64 %0, i64 %0, i64 %0,
                         i64 %0, i64 %0, i32 3, i64 %0, i8 signext 3)
  ret i64 %call
}
declare i64 @args_i64(i64, i64, i64, i64, i64, i64, i64, i64, i32, i64,
             i8 signext)

define i32 @test6(float* nocapture %in) nounwind {
entry:




  %0 = load float, float* %in, align 4
  %call = tail call i32 @args_f32(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6,
          i32 7, i32 8, float 1.0, float 2.0, float 3.0, float 4.0, float 5.0,
          float 6.0, float 7.0, float 8.0, i16 signext 3, float %0,
          i8 signext 3)
  ret i32 %call
}
declare i32 @args_f32(i32, i32, i32, i32, i32, i32, i32, i32,
                      float, float, float, float, float, float, float, float,
                      i16 signext, float, i8 signext)

define i32 @test7(i32* nocapture %in) nounwind {
entry:




  %0 = load i32, i32* %in, align 4
  %call = tail call i32 @args_i32(i32 3, i32 %0, i32 %0, i32 %0, i32 %0, i32 %0,
                         i32 %0, i32 %0, i16 signext 3, i32 %0, i8 signext 4)
  ret i32 %call
}
declare i32 @args_i32(i32, i32, i32, i32, i32, i32, i32, i32, i16 signext, i32,
             i8 signext)

define i32 @test8(i32 %argc, i8** nocapture %argv) nounwind {
entry:












  tail call void @args_i1(i1 zeroext false, i1 zeroext true, i1 zeroext false,
                  i1 zeroext true, i1 zeroext false, i1 zeroext true,
                  i1 zeroext false, i1 zeroext true, i1 zeroext false,
                  i1 zeroext true, i1 zeroext false, i1 zeroext true)
  ret i32 0
}

declare void @args_i1(i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext,
                      i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext,
                      i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext)

define i32 @i1_stack_incoming(i64 %a, i64 %b, i64 %c, i64 %d, i64 %e, i64 %f,
                               i64 %g, i64 %h, i64 %i, i1 zeroext %j) {



  %v = zext i1 %j to i32
  ret i32 %v
}
