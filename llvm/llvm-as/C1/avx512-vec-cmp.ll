


define <16 x float> @test1(<16 x float> %x, <16 x float> %y) nounwind {






  %mask = fcmp ole <16 x float> %x, %y
  %max = select <16 x i1> %mask, <16 x float> %x, <16 x float> %y
  ret <16 x float> %max
}

define <8 x double> @test2(<8 x double> %x, <8 x double> %y) nounwind {






  %mask = fcmp ole <8 x double> %x, %y
  %max = select <8 x i1> %mask, <8 x double> %x, <8 x double> %y
  ret <8 x double> %max
}

define <16 x i32> @test3(<16 x i32> %x, <16 x i32> %x1, <16 x i32>* %yp) nounwind {






  %y = load <16 x i32>, <16 x i32>* %yp, align 4
  %mask = icmp eq <16 x i32> %x, %y
  %max = select <16 x i1> %mask, <16 x i32> %x, <16 x i32> %x1
  ret <16 x i32> %max
}

define <16 x i32> @test4_unsigned(<16 x i32> %x, <16 x i32> %y, <16 x i32> %x1) nounwind {






  %mask = icmp uge <16 x i32> %x, %y
  %max = select <16 x i1> %mask, <16 x i32> %x1, <16 x i32> %y
  ret <16 x i32> %max
}

define <8 x i64> @test5(<8 x i64> %x, <8 x i64> %y) nounwind {






  %mask = icmp eq <8 x i64> %x, %y
  %max = select <8 x i1> %mask, <8 x i64> %x, <8 x i64> %y
  ret <8 x i64> %max
}

define <8 x i64> @test6_unsigned(<8 x i64> %x, <8 x i64> %y, <8 x i64> %x1) nounwind {






  %mask = icmp ugt <8 x i64> %x, %y
  %max = select <8 x i1> %mask, <8 x i64> %x1, <8 x i64> %y
  ret <8 x i64> %max
}

define <4 x float> @test7(<4 x float> %a, <4 x float> %b) {














  %mask = fcmp olt <4 x float> %a, zeroinitializer
  %c = select <4 x i1>%mask, <4 x float>%a, <4 x float>%b
  ret <4 x float>%c
}

define <2 x double> @test8(<2 x double> %a, <2 x double> %b) {













  %mask = fcmp olt <2 x double> %a, zeroinitializer
  %c = select <2 x i1>%mask, <2 x double>%a, <2 x double>%b
  ret <2 x double>%c
}

define <8 x i32> @test9(<8 x i32> %x, <8 x i32> %y) nounwind {





  %mask = icmp eq <8 x i32> %x, %y
  %max = select <8 x i1> %mask, <8 x i32> %x, <8 x i32> %y
  ret <8 x i32> %max
}

define <8 x float> @test10(<8 x float> %x, <8 x float> %y) nounwind {












  %mask = fcmp oeq <8 x float> %x, %y
  %max = select <8 x i1> %mask, <8 x float> %x, <8 x float> %y
  ret <8 x float> %max
}

define <8 x i32> @test11_unsigned(<8 x i32> %x, <8 x i32> %y) nounwind {




  %mask = icmp ugt <8 x i32> %x, %y
  %max = select <8 x i1> %mask, <8 x i32> %x, <8 x i32> %y
  ret <8 x i32> %max
}


define i16 @test12(<16 x i64> %a, <16 x i64> %b) nounwind {







  %res = icmp eq <16 x i64> %a, %b
  %res1 = bitcast <16 x i1> %res to i16
  ret i16 %res1
}

define <16 x i32> @test13(<16 x float>%a, <16 x float>%b)





{
  %cmpvector_i = fcmp oeq <16 x float> %a, %b
  %conv = zext <16 x i1> %cmpvector_i to <16 x i32>
  ret <16 x i32> %conv
}

define <16 x i32> @test14(<16 x i32>%a, <16 x i32>%b) {








  %sub_r = sub <16 x i32> %a, %b
  %cmp.i2.i = icmp sgt <16 x i32> %sub_r, %a
  %sext.i3.i = sext <16 x i1> %cmp.i2.i to <16 x i32>
  %mask = icmp eq <16 x i32> %sext.i3.i, zeroinitializer
  %res = select <16 x i1> %mask, <16 x i32> zeroinitializer, <16 x i32> %sub_r
  ret <16 x i32>%res
}

define <8 x i64> @test15(<8 x i64>%a, <8 x i64>%b) {








  %sub_r = sub <8 x i64> %a, %b
  %cmp.i2.i = icmp sgt <8 x i64> %sub_r, %a
  %sext.i3.i = sext <8 x i1> %cmp.i2.i to <8 x i64>
  %mask = icmp eq <8 x i64> %sext.i3.i, zeroinitializer
  %res = select <8 x i1> %mask, <8 x i64> zeroinitializer, <8 x i64> %sub_r
  ret <8 x i64>%res
}

define <16 x i32> @test16(<16 x i32> %x, <16 x i32> %y, <16 x i32> %x1) nounwind {






  %mask = icmp sge <16 x i32> %x, %y
  %max = select <16 x i1> %mask, <16 x i32> %x1, <16 x i32> %y
  ret <16 x i32> %max
}

define <16 x i32> @test17(<16 x i32> %x, <16 x i32> %x1, <16 x i32>* %y.ptr) nounwind {






  %y = load <16 x i32>, <16 x i32>* %y.ptr, align 4
  %mask = icmp sgt <16 x i32> %x, %y
  %max = select <16 x i1> %mask, <16 x i32> %x, <16 x i32> %x1
  ret <16 x i32> %max
}

define <16 x i32> @test18(<16 x i32> %x, <16 x i32> %x1, <16 x i32>* %y.ptr) nounwind {






  %y = load <16 x i32>, <16 x i32>* %y.ptr, align 4
  %mask = icmp sle <16 x i32> %x, %y
  %max = select <16 x i1> %mask, <16 x i32> %x, <16 x i32> %x1
  ret <16 x i32> %max
}

define <16 x i32> @test19(<16 x i32> %x, <16 x i32> %x1, <16 x i32>* %y.ptr) nounwind {






  %y = load <16 x i32>, <16 x i32>* %y.ptr, align 4
  %mask = icmp ule <16 x i32> %x, %y
  %max = select <16 x i1> %mask, <16 x i32> %x, <16 x i32> %x1
  ret <16 x i32> %max
}

define <16 x i32> @test20(<16 x i32> %x, <16 x i32> %y, <16 x i32> %x1, <16 x i32> %y1) nounwind {







  %mask1 = icmp eq <16 x i32> %x1, %y1
  %mask0 = icmp eq <16 x i32> %x, %y
  %mask = select <16 x i1> %mask0, <16 x i1> %mask1, <16 x i1> zeroinitializer
  %max = select <16 x i1> %mask, <16 x i32> %x, <16 x i32> %y
  ret <16 x i32> %max
}

define <8 x i64> @test21(<8 x i64> %x, <8 x i64> %y, <8 x i64> %x1, <8 x i64> %y1) nounwind {







  %mask1 = icmp sge <8 x i64> %x1, %y1
  %mask0 = icmp sle <8 x i64> %x, %y
  %mask = select <8 x i1> %mask0, <8 x i1> %mask1, <8 x i1> zeroinitializer
  %max = select <8 x i1> %mask, <8 x i64> %x, <8 x i64> %x1
  ret <8 x i64> %max
}

define <8 x i64> @test22(<8 x i64> %x, <8 x i64>* %y.ptr, <8 x i64> %x1, <8 x i64> %y1) nounwind {







  %mask1 = icmp sgt <8 x i64> %x1, %y1
  %y = load <8 x i64>, <8 x i64>* %y.ptr, align 4
  %mask0 = icmp sgt <8 x i64> %x, %y
  %mask = select <8 x i1> %mask0, <8 x i1> %mask1, <8 x i1> zeroinitializer
  %max = select <8 x i1> %mask, <8 x i64> %x, <8 x i64> %x1
  ret <8 x i64> %max
}

define <16 x i32> @test23(<16 x i32> %x, <16 x i32>* %y.ptr, <16 x i32> %x1, <16 x i32> %y1) nounwind {







  %mask1 = icmp sge <16 x i32> %x1, %y1
  %y = load <16 x i32>, <16 x i32>* %y.ptr, align 4
  %mask0 = icmp ule <16 x i32> %x, %y
  %mask = select <16 x i1> %mask0, <16 x i1> %mask1, <16 x i1> zeroinitializer
  %max = select <16 x i1> %mask, <16 x i32> %x, <16 x i32> %x1
  ret <16 x i32> %max
}

define <8 x i64> @test24(<8 x i64> %x, <8 x i64> %x1, i64* %yb.ptr) nounwind {






  %yb = load i64, i64* %yb.ptr, align 4
  %y.0 = insertelement <8 x i64> undef, i64 %yb, i32 0
  %y = shufflevector <8 x i64> %y.0, <8 x i64> undef, <8 x i32> zeroinitializer
  %mask = icmp eq <8 x i64> %x, %y
  %max = select <8 x i1> %mask, <8 x i64> %x, <8 x i64> %x1
  ret <8 x i64> %max
}

define <16 x i32> @test25(<16 x i32> %x, i32* %yb.ptr, <16 x i32> %x1) nounwind {






  %yb = load i32, i32* %yb.ptr, align 4
  %y.0 = insertelement <16 x i32> undef, i32 %yb, i32 0
  %y = shufflevector <16 x i32> %y.0, <16 x i32> undef, <16 x i32> zeroinitializer
  %mask = icmp sle <16 x i32> %x, %y
  %max = select <16 x i1> %mask, <16 x i32> %x, <16 x i32> %x1
  ret <16 x i32> %max
}

define <16 x i32> @test26(<16 x i32> %x, i32* %yb.ptr, <16 x i32> %x1, <16 x i32> %y1) nounwind {







  %mask1 = icmp sge <16 x i32> %x1, %y1
  %yb = load i32, i32* %yb.ptr, align 4
  %y.0 = insertelement <16 x i32> undef, i32 %yb, i32 0
  %y = shufflevector <16 x i32> %y.0, <16 x i32> undef, <16 x i32> zeroinitializer
  %mask0 = icmp sgt <16 x i32> %x, %y
  %mask = select <16 x i1> %mask0, <16 x i1> %mask1, <16 x i1> zeroinitializer
  %max = select <16 x i1> %mask, <16 x i32> %x, <16 x i32> %x1
  ret <16 x i32> %max
}

define <8 x i64> @test27(<8 x i64> %x, i64* %yb.ptr, <8 x i64> %x1, <8 x i64> %y1) nounwind {







  %mask1 = icmp sge <8 x i64> %x1, %y1
  %yb = load i64, i64* %yb.ptr, align 4
  %y.0 = insertelement <8 x i64> undef, i64 %yb, i32 0
  %y = shufflevector <8 x i64> %y.0, <8 x i64> undef, <8 x i32> zeroinitializer
  %mask0 = icmp sle <8 x i64> %x, %y
  %mask = select <8 x i1> %mask0, <8 x i1> %mask1, <8 x i1> zeroinitializer
  %max = select <8 x i1> %mask, <8 x i64> %x, <8 x i64> %x1
  ret <8 x i64> %max
}





define <8 x i32>@test28(<8 x i64> %x, <8 x i64> %y, <8 x i64> %x1, <8 x i64> %y1) {
  %x_gt_y = icmp sgt <8 x i64> %x, %y
  %x1_gt_y1 = icmp sgt <8 x i64> %x1, %y1
  %res = icmp eq <8 x i1>%x_gt_y, %x1_gt_y1
  %resse = sext <8 x i1>%res to <8 x i32>
  ret <8 x i32> %resse
}





define <16 x i8>@test29(<16 x i32> %x, <16 x i32> %y, <16 x i32> %x1, <16 x i32> %y1) {
  %x_gt_y = icmp sgt <16 x i32> %x, %y
  %x1_gt_y1 = icmp sgt <16 x i32> %x1, %y1
  %res = icmp ne <16 x i1>%x_gt_y, %x1_gt_y1
  %resse = sext <16 x i1>%res to <16 x i8>
  ret <16 x i8> %resse
}

define <4 x double> @test30(<4 x double> %x, <4 x double> %y) nounwind {




  %mask = fcmp oeq <4 x double> %x, %y
  %max = select <4 x i1> %mask, <4 x double> %x, <4 x double> %y
  ret <4 x double> %max
}

define <2 x double> @test31(<2 x double> %x, <2 x double> %x1, <2 x double>* %yp) nounwind {




  %y = load <2 x double>, <2 x double>* %yp, align 4
  %mask = fcmp olt <2 x double> %x, %y
  %max = select <2 x i1> %mask, <2 x double> %x, <2 x double> %x1
  ret <2 x double> %max
}

define <4 x double> @test32(<4 x double> %x, <4 x double> %x1, <4 x double>* %yp) nounwind {




  %y = load <4 x double>, <4 x double>* %yp, align 4
  %mask = fcmp ogt <4 x double> %y, %x
  %max = select <4 x i1> %mask, <4 x double> %x, <4 x double> %x1
  ret <4 x double> %max
}

define <8 x double> @test33(<8 x double> %x, <8 x double> %x1, <8 x double>* %yp) nounwind {



  %y = load <8 x double>, <8 x double>* %yp, align 4
  %mask = fcmp olt <8 x double> %x, %y
  %max = select <8 x i1> %mask, <8 x double> %x, <8 x double> %x1
  ret <8 x double> %max
}

define <4 x float> @test34(<4 x float> %x, <4 x float> %x1, <4 x float>* %yp) nounwind {



  %y = load <4 x float>, <4 x float>* %yp, align 4
  %mask = fcmp olt <4 x float> %x, %y
  %max = select <4 x i1> %mask, <4 x float> %x, <4 x float> %x1
  ret <4 x float> %max
}

define <8 x float> @test35(<8 x float> %x, <8 x float> %x1, <8 x float>* %yp) nounwind {




  %y = load <8 x float>, <8 x float>* %yp, align 4
  %mask = fcmp ogt <8 x float> %y, %x
  %max = select <8 x i1> %mask, <8 x float> %x, <8 x float> %x1
  ret <8 x float> %max
}

define <16 x float> @test36(<16 x float> %x, <16 x float> %x1, <16 x float>* %yp) nounwind {



  %y = load <16 x float>, <16 x float>* %yp, align 4
  %mask = fcmp olt <16 x float> %x, %y
  %max = select <16 x i1> %mask, <16 x float> %x, <16 x float> %x1
  ret <16 x float> %max
}

define <8 x double> @test37(<8 x double> %x, <8 x double> %x1, double* %ptr) nounwind {




  %a = load double, double* %ptr
  %v = insertelement <8 x double> undef, double %a, i32 0
  %shuffle = shufflevector <8 x double> %v, <8 x double> undef, <8 x i32> zeroinitializer

  %mask = fcmp ogt <8 x double> %shuffle, %x
  %max = select <8 x i1> %mask, <8 x double> %x, <8 x double> %x1
  ret <8 x double> %max
}

define <4 x double> @test38(<4 x double> %x, <4 x double> %x1, double* %ptr) nounwind {




  %a = load double, double* %ptr
  %v = insertelement <4 x double> undef, double %a, i32 0
  %shuffle = shufflevector <4 x double> %v, <4 x double> undef, <4 x i32> zeroinitializer
  
  %mask = fcmp ogt <4 x double> %shuffle, %x
  %max = select <4 x i1> %mask, <4 x double> %x, <4 x double> %x1
  ret <4 x double> %max
}

define <2 x double> @test39(<2 x double> %x, <2 x double> %x1, double* %ptr) nounwind {




  %a = load double, double* %ptr
  %v = insertelement <2 x double> undef, double %a, i32 0
  %shuffle = shufflevector <2 x double> %v, <2 x double> undef, <2 x i32> <i32 0, i32 0>
  
  %mask = fcmp ogt <2 x double> %shuffle, %x
  %max = select <2 x i1> %mask, <2 x double> %x, <2 x double> %x1
  ret <2 x double> %max
}


define <16  x float> @test40(<16  x float> %x, <16  x float> %x1, float* %ptr) nounwind {




  %a = load float, float* %ptr
  %v = insertelement <16  x float> undef, float %a, i32 0
  %shuffle = shufflevector <16  x float> %v, <16  x float> undef, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  
  %mask = fcmp ogt <16  x float> %shuffle, %x
  %max = select <16 x i1> %mask, <16  x float> %x, <16  x float> %x1
  ret <16  x float> %max
}

define <8  x float> @test41(<8  x float> %x, <8  x float> %x1, float* %ptr) nounwind {




  %a = load float, float* %ptr
  %v = insertelement <8  x float> undef, float %a, i32 0
  %shuffle = shufflevector <8  x float> %v, <8  x float> undef, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  
  %mask = fcmp ogt <8  x float> %shuffle, %x
  %max = select <8 x i1> %mask, <8  x float> %x, <8  x float> %x1
  ret <8  x float> %max
}

define <4  x float> @test42(<4  x float> %x, <4  x float> %x1, float* %ptr) nounwind {



  
  %a = load float, float* %ptr
  %v = insertelement <4  x float> undef, float %a, i32 0
  %shuffle = shufflevector <4  x float> %v, <4  x float> undef, <4 x i32> <i32 0, i32 0, i32 0, i32 0>
  
  %mask = fcmp ogt <4  x float> %shuffle, %x
  %max = select <4 x i1> %mask, <4  x float> %x, <4  x float> %x1
  ret <4  x float> %max
}

define <8 x double> @test43(<8 x double> %x, <8 x double> %x1, double* %ptr,<8 x i1> %mask_in) nounwind {





  %a = load double, double* %ptr
  %v = insertelement <8 x double> undef, double %a, i32 0
  %shuffle = shufflevector <8 x double> %v, <8 x double> undef, <8 x i32> zeroinitializer
  
  %mask_cmp = fcmp ogt <8 x double> %shuffle, %x
  %mask = and <8 x i1> %mask_cmp, %mask_in
  %max = select <8 x i1> %mask, <8 x double> %x, <8 x double> %x1
  ret <8 x double> %max
}
