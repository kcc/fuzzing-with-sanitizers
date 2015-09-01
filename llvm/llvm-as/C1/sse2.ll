


define void @test1(<2 x double>* %r, <2 x double>* %A, double %B) nounwind  {








	%tmp3 = load <2 x double>, <2 x double>* %A, align 16
	%tmp7 = insertelement <2 x double> undef, double %B, i32 0
	%tmp9 = shufflevector <2 x double> %tmp3, <2 x double> %tmp7, <2 x i32> < i32 2, i32 1 >
	store <2 x double> %tmp9, <2 x double>* %r, align 16
	ret void
}

define void @test2(<2 x double>* %r, <2 x double>* %A, double %B) nounwind  {








	%tmp3 = load <2 x double>, <2 x double>* %A, align 16
	%tmp7 = insertelement <2 x double> undef, double %B, i32 0
	%tmp9 = shufflevector <2 x double> %tmp3, <2 x double> %tmp7, <2 x i32> < i32 0, i32 2 >
	store <2 x double> %tmp9, <2 x double>* %r, align 16
	ret void
}


define void @test3(<4 x float>* %res, <4 x float>* %A, <4 x float>* %B) nounwind {









	%tmp = load <4 x float>, <4 x float>* %B		
	%tmp3 = load <4 x float>, <4 x float>* %A		
	%tmp.upgrd.1 = extractelement <4 x float> %tmp3, i32 0		
	%tmp7 = extractelement <4 x float> %tmp, i32 0		
	%tmp8 = extractelement <4 x float> %tmp3, i32 1		
	%tmp9 = extractelement <4 x float> %tmp, i32 1		
	%tmp10 = insertelement <4 x float> undef, float %tmp.upgrd.1, i32 0		
	%tmp11 = insertelement <4 x float> %tmp10, float %tmp7, i32 1		
	%tmp12 = insertelement <4 x float> %tmp11, float %tmp8, i32 2		
	%tmp13 = insertelement <4 x float> %tmp12, float %tmp9, i32 3		
	store <4 x float> %tmp13, <4 x float>* %res
	ret void
}

define void @test4(<4 x float> %X, <4 x float>* %res) nounwind {






	%tmp5 = shufflevector <4 x float> %X, <4 x float> undef, <4 x i32> < i32 2, i32 6, i32 3, i32 7 >		
	store <4 x float> %tmp5, <4 x float>* %res
	ret void
}

define <4 x i32> @test5(i8** %ptr) nounwind {









	%tmp = load i8*, i8** %ptr		
	%tmp.upgrd.1 = bitcast i8* %tmp to float*		
	%tmp.upgrd.2 = load float, float* %tmp.upgrd.1		
	%tmp.upgrd.3 = insertelement <4 x float> undef, float %tmp.upgrd.2, i32 0		
	%tmp9 = insertelement <4 x float> %tmp.upgrd.3, float 0.000000e+00, i32 1		
	%tmp10 = insertelement <4 x float> %tmp9, float 0.000000e+00, i32 2		
	%tmp11 = insertelement <4 x float> %tmp10, float 0.000000e+00, i32 3		
	%tmp21 = bitcast <4 x float> %tmp11 to <16 x i8>		
	%tmp22 = shufflevector <16 x i8> %tmp21, <16 x i8> zeroinitializer, <16 x i32> < i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23 >		
	%tmp31 = bitcast <16 x i8> %tmp22 to <8 x i16>		
	%tmp.upgrd.4 = shufflevector <8 x i16> zeroinitializer, <8 x i16> %tmp31, <8 x i32> < i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11 >		
	%tmp36 = bitcast <8 x i16> %tmp.upgrd.4 to <4 x i32>		
	ret <4 x i32> %tmp36
}

define void @test6(<4 x float>* %res, <4 x float>* %A) nounwind {







  %tmp1 = load <4 x float>, <4 x float>* %A            
  %tmp2 = shufflevector <4 x float> %tmp1, <4 x float> undef, <4 x i32> < i32 0, i32 5, i32 6, i32 7 >          
  store <4 x float> %tmp2, <4 x float>* %res
  ret void
}

define void @test7() nounwind {





  bitcast <4 x i32> zeroinitializer to <4 x float>                
  shufflevector <4 x float> %1, <4 x float> zeroinitializer, <4 x i32> zeroinitializer         
  store <4 x float> %2, <4 x float>* null
  ret void
}

@x = external global [4 x i32]

define <2 x i64> @test8() nounwind {





	%tmp = load i32, i32* getelementptr ([4 x i32], [4 x i32]* @x, i32 0, i32 0)		
	%tmp3 = load i32, i32* getelementptr ([4 x i32], [4 x i32]* @x, i32 0, i32 1)		
	%tmp5 = load i32, i32* getelementptr ([4 x i32], [4 x i32]* @x, i32 0, i32 2)		
	%tmp7 = load i32, i32* getelementptr ([4 x i32], [4 x i32]* @x, i32 0, i32 3)		
	%tmp.upgrd.1 = insertelement <4 x i32> undef, i32 %tmp, i32 0		
	%tmp13 = insertelement <4 x i32> %tmp.upgrd.1, i32 %tmp3, i32 1		
	%tmp14 = insertelement <4 x i32> %tmp13, i32 %tmp5, i32 2		
	%tmp15 = insertelement <4 x i32> %tmp14, i32 %tmp7, i32 3		
	%tmp16 = bitcast <4 x i32> %tmp15 to <2 x i64>		
	ret <2 x i64> %tmp16
}

define <4 x float> @test9(i32 %dummy, float %a, float %b, float %c, float %d) nounwind {




	%tmp = insertelement <4 x float> undef, float %a, i32 0		
	%tmp11 = insertelement <4 x float> %tmp, float %b, i32 1		
	%tmp12 = insertelement <4 x float> %tmp11, float %c, i32 2		
	%tmp13 = insertelement <4 x float> %tmp12, float %d, i32 3		
	ret <4 x float> %tmp13
}

define <4 x float> @test10(float %a, float %b, float %c, float %d) nounwind {




	%tmp = insertelement <4 x float> undef, float %a, i32 0		
	%tmp11 = insertelement <4 x float> %tmp, float %b, i32 1		
	%tmp12 = insertelement <4 x float> %tmp11, float %c, i32 2		
	%tmp13 = insertelement <4 x float> %tmp12, float %d, i32 3		
	ret <4 x float> %tmp13
}

define <2 x double> @test11(double %a, double %b) nounwind {




	%tmp = insertelement <2 x double> undef, double %a, i32 0		
	%tmp7 = insertelement <2 x double> %tmp, double %b, i32 1		
	ret <2 x double> %tmp7
}

define void @test12() nounwind {










  %tmp1 = load <4 x float>, <4 x float>* null          
  %tmp2 = shufflevector <4 x float> %tmp1, <4 x float> < float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00 >, <4 x i32> < i32 0, i32 1, i32 6, i32 7 >             
  %tmp3 = shufflevector <4 x float> %tmp1, <4 x float> zeroinitializer, <4 x i32> < i32 2, i32 3, i32 6, i32 7 >                
  %tmp4 = fadd <4 x float> %tmp2, %tmp3            
  store <4 x float> %tmp4, <4 x float>* null
  ret void
}

define void @test13(<4 x float>* %res, <4 x float>* %A, <4 x float>* %B, <4 x float>* %C) nounwind {










  %tmp3 = load <4 x float>, <4 x float>* %B            
  %tmp5 = load <4 x float>, <4 x float>* %C            
  %tmp11 = shufflevector <4 x float> %tmp3, <4 x float> %tmp5, <4 x i32> < i32 1, i32 4, i32 1, i32 5 >         
  store <4 x float> %tmp11, <4 x float>* %res
  ret void
}

define <4 x float> @test14(<4 x float>* %x, <4 x float>* %y) nounwind {











  %tmp = load <4 x float>, <4 x float>* %y             
  %tmp5 = load <4 x float>, <4 x float>* %x            
  %tmp9 = fadd <4 x float> %tmp5, %tmp             
  %tmp21 = fsub <4 x float> %tmp5, %tmp            
  %tmp27 = shufflevector <4 x float> %tmp9, <4 x float> %tmp21, <4 x i32> < i32 0, i32 1, i32 4, i32 5 >                
  ret <4 x float> %tmp27
}

define <4 x float> @test15(<4 x float>* %x, <4 x float>* %y) nounwind {







entry:
  %tmp = load <4 x float>, <4 x float>* %y             
  %tmp3 = load <4 x float>, <4 x float>* %x            
  %tmp4 = shufflevector <4 x float> %tmp3, <4 x float> %tmp, <4 x i32> < i32 2, i32 3, i32 6, i32 7 >           
  ret <4 x float> %tmp4
}



define  <2 x double> @test16(<4 x double> * nocapture %srcA, <2 x double>* nocapture %dst) {






  %i5 = getelementptr inbounds <4 x double>, <4 x double>* %srcA, i32 3
  %i6 = load <4 x double>, <4 x double>* %i5, align 32
  %i7 = shufflevector <4 x double> %i6, <4 x double> undef, <2 x i32> <i32 0, i32 2>
  ret <2 x double> %i7
}


define fastcc void @test17() nounwind {





entry:
  %0 = insertelement <4 x i32> undef, i32 undef, i32 1
  %1 = shufflevector <4 x i32> <i32 undef, i32 undef, i32 32768, i32 32768>, <4 x i32> %0, <4 x i32> <i32 4, i32 5, i32 2, i32 3>
  %2 = bitcast <4 x i32> %1 to <4 x float>
  store <4 x float> %2, <4 x float> * undef
  ret void
}


define <4 x float> @f(<4 x double>) nounwind {






entry:
 %double2float.i = fptrunc <4 x double> %0 to <4 x float>
 ret <4 x float> %double2float.i
}

define <2 x i64> @test_insert_64_zext(<2 x i64> %i) {




  %1 = shufflevector <2 x i64> %i, <2 x i64> <i64 0, i64 undef>, <2 x i32> <i32 0, i32 2>
  ret <2 x i64> %1
}

define <4 x i32> @PR19721(<4 x i32> %i) {




  %bc = bitcast <4 x i32> %i to i128
  %insert = and i128 %bc, -4294967296
  %bc2 = bitcast i128 %insert to <4 x i32>
  ret <4 x i32> %bc2
}

define <4 x i32> @test_mul(<4 x i32> %x, <4 x i32> %y) {










  %m = mul <4 x i32> %x, %y
  ret <4 x i32> %m
}
