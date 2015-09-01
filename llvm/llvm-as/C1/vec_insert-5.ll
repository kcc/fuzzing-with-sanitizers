


define void  @t1(i32 %a, x86_mmx* %P) nounwind {









 %tmp12 = shl i32 %a, 12
 %tmp21 = insertelement <2 x i32> undef, i32 %tmp12, i32 1
 %tmp22 = insertelement <2 x i32> %tmp21, i32 0, i32 0
 %tmp23 = bitcast <2 x i32> %tmp22 to x86_mmx
 store x86_mmx %tmp23, x86_mmx* %P
 ret void
}

define <4 x float> @t2(<4 x float>* %P) nounwind {








  %tmp1 = load <4 x float>, <4 x float>* %P
  %tmp2 = shufflevector <4 x float> %tmp1, <4 x float> zeroinitializer, <4 x i32> < i32 4, i32 4, i32 4, i32 0 >
  ret <4 x float> %tmp2
}

define <4 x float> @t3(<4 x float>* %P) nounwind {







  %tmp1 = load <4 x float>, <4 x float>* %P
  %tmp2 = shufflevector <4 x float> %tmp1, <4 x float> zeroinitializer, <4 x i32> < i32 2, i32 3, i32 4, i32 4 >
  ret <4 x float> %tmp2
}

define <4 x float> @t4(<4 x float>* %P) nounwind {








  %tmp1 = load <4 x float>, <4 x float>* %P
  %tmp2 = shufflevector <4 x float> zeroinitializer, <4 x float> %tmp1, <4 x i32> < i32 7, i32 0, i32 0, i32 0 >
  ret <4 x float> %tmp2
}

define <16 x i8> @t5(<16 x i8> %x) nounwind {




  %s = shufflevector <16 x i8> %x, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 17>
  ret <16 x i8> %s
}

define <16 x i8> @t6(<16 x i8> %x) nounwind {




  %s = shufflevector <16 x i8> %x, <16 x i8> undef, <16 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  ret <16 x i8> %s
}

define <16 x i8> @t7(<16 x i8> %x) nounwind {




  %s = shufflevector <16 x i8> %x, <16 x i8> undef, <16 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 1, i32 2>
  ret <16 x i8> %s
}

define <16 x i8> @t8(<16 x i8> %x) nounwind {




  %s = shufflevector <16 x i8> %x, <16 x i8> zeroinitializer, <16 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 8, i32 9, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 17>
  ret <16 x i8> %s
}

define <16 x i8> @t9(<16 x i8> %x) nounwind {




  %s = shufflevector <16 x i8> %x, <16 x i8> undef, <16 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7, i32 8, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 14, i32 undef, i32 undef>
  ret <16 x i8> %s
}
