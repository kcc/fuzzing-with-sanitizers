












target datalayout = "p:32:32"



define i32 @type_pun_zeroth(<16 x i8> %in) {




  %sroa = shufflevector <16 x i8> %in, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %1 = bitcast <4 x i8> %sroa to i32
  ret i32 %1
}


define i32 @type_pun_first(<16 x i8> %in) {




  %sroa = shufflevector <16 x i8> %in, <16 x i8> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %1 = bitcast <4 x i8> %sroa to i32
  ret i32 %1
}


define i32 @type_pun_misaligned(<16 x i8> %in) {





  %sroa = shufflevector <16 x i8> %in, <16 x i8> undef, <4 x i32> <i32 6, i32 7, i32 8, i32 9>
  %1 = bitcast <4 x i8> %sroa to i32
  ret i32 %1
}


define i32* @type_pun_pointer(<16 x i8> %in) {





  %sroa = shufflevector <16 x i8> %in, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %1 = bitcast <4 x i8> %sroa to i32
  %2 = inttoptr i32 %1 to i32*
  ret i32* %2
}


define float @type_pun_float(<16 x i8> %in) {




  %sroa = shufflevector <16 x i8> %in, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %1 = bitcast <4 x i8> %sroa to float
  ret float %1
}


define double @type_pun_double(<16 x i8> %in) {




  %sroa = shufflevector <16 x i8> %in, <16 x i8> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %1 = bitcast <8 x i8> %sroa to double
  ret double %1
}



define { float, i32 } @type_pun_float_i32(<16 x i8> %in) {








  %sroa = shufflevector <16 x i8> %in, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %f = bitcast <4 x i8> %sroa to float
  %i = bitcast <4 x i8> %sroa to i32
  %1 = insertvalue { float, i32 } undef, float %f, 0
  %2 = insertvalue { float, i32 } %1, i32 %i, 1
  ret { float, i32 } %2
}



define i32 @type_pun_i32_ctrl(<16 x i8> %in) {

entry: 


  %sroa = shufflevector <16 x i8> %in, <16 x i8> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br i1 undef, label %left, label %right
left: 


  %lhs = bitcast <4 x i8> %sroa to i32
  br label %tail
right: 


  %rhs = bitcast <4 x i8> %sroa to i32
  br label %tail
tail: 


  %i = phi i32 [ %lhs, %left ], [ %rhs, %right ]
  ret i32 %i
}



define i40 @type_pun_unhandled(<16 x i8> %in) {




  %sroa = shufflevector <16 x i8> %in, <16 x i8> undef, <5 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8>
  %1 = bitcast <5 x i8> %sroa to i40
  ret i40 %1
}
