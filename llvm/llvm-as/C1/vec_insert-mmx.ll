



define x86_mmx @t0(i32 %A) nounwind {








  %tmp3 = insertelement <2 x i32> < i32 0, i32 undef >, i32 %A, i32 1
  %tmp4 = bitcast <2 x i32> %tmp3 to x86_mmx
  ret x86_mmx %tmp4
}

define <8 x i8> @t1(i8 zeroext %x) nounwind {





  %r = insertelement <8 x i8> undef, i8 %x, i32 0
  ret <8 x i8> %r
}


define <2 x float> @t2(<2 x float> %a0) {




  %v1 = insertelement <2 x float> %a0, float 0.000000e+00, i32 0
  %v2 = insertelement <2 x float> %v1, float 0.000000e+00, i32 1
  ret <2 x float> %v2
}

@g0 = external global i16
@g1 = external global <4 x i16>


define void @t3() {








  load i16, i16* @g0
  load <4 x i16>, <4 x i16>* @g1
  insertelement <4 x i16> %2, i16 %1, i32 0
  store <4 x i16> %3, <4 x i16>* @g1
  ret void
}
