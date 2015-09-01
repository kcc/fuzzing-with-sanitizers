

define <8 x i8> @vzipi8(<8 x i8>* %A, <8 x i8>* %B) nounwind {








	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = shufflevector <8 x i8> %tmp1, <8 x i8> %tmp2, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
	%tmp4 = shufflevector <8 x i8> %tmp1, <8 x i8> %tmp2, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
        %tmp5 = add <8 x i8> %tmp3, %tmp4
	ret <8 x i8> %tmp5
}

define <16 x i8> @vzipi8_Qres(<8 x i8>* %A, <8 x i8>* %B) nounwind {








	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = shufflevector <8 x i8> %tmp1, <8 x i8> %tmp2, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
	ret <16 x i8> %tmp3
}

define <4 x i16> @vzipi16(<4 x i16>* %A, <4 x i16>* %B) nounwind {








	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = shufflevector <4 x i16> %tmp1, <4 x i16> %tmp2, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
	%tmp4 = shufflevector <4 x i16> %tmp1, <4 x i16> %tmp2, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
        %tmp5 = add <4 x i16> %tmp3, %tmp4
	ret <4 x i16> %tmp5
}

define <8 x i16> @vzipi16_Qres(<4 x i16>* %A, <4 x i16>* %B) nounwind {








	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
	%tmp3 = shufflevector <4 x i16> %tmp1, <4 x i16> %tmp2, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
	ret <8 x i16> %tmp3
}



define <16 x i8> @vzipQi8(<16 x i8>* %A, <16 x i8>* %B) nounwind {









	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = shufflevector <16 x i8> %tmp1, <16 x i8> %tmp2, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
	%tmp4 = shufflevector <16 x i8> %tmp1, <16 x i8> %tmp2, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
        %tmp5 = add <16 x i8> %tmp3, %tmp4
	ret <16 x i8> %tmp5
}

define <32 x i8> @vzipQi8_QQres(<16 x i8>* %A, <16 x i8>* %B) nounwind {








	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = shufflevector <16 x i8> %tmp1, <16 x i8> %tmp2, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
	ret <32 x i8> %tmp3
}

define <8 x i16> @vzipQi16(<8 x i16>* %A, <8 x i16>* %B) nounwind {









	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = shufflevector <8 x i16> %tmp1, <8 x i16> %tmp2, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
	%tmp4 = shufflevector <8 x i16> %tmp1, <8 x i16> %tmp2, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
        %tmp5 = add <8 x i16> %tmp3, %tmp4
	ret <8 x i16> %tmp5
}

define <16 x i16> @vzipQi16_QQres(<8 x i16>* %A, <8 x i16>* %B) nounwind {








	%tmp1 = load <8 x i16>, <8 x i16>* %A
	%tmp2 = load <8 x i16>, <8 x i16>* %B
	%tmp3 = shufflevector <8 x i16> %tmp1, <8 x i16> %tmp2, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
	ret <16 x i16> %tmp3
}

define <4 x i32> @vzipQi32(<4 x i32>* %A, <4 x i32>* %B) nounwind {









	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = shufflevector <4 x i32> %tmp1, <4 x i32> %tmp2, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
	%tmp4 = shufflevector <4 x i32> %tmp1, <4 x i32> %tmp2, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
        %tmp5 = add <4 x i32> %tmp3, %tmp4
	ret <4 x i32> %tmp5
}

define <8 x i32> @vzipQi32_QQres(<4 x i32>* %A, <4 x i32>* %B) nounwind {








	%tmp1 = load <4 x i32>, <4 x i32>* %A
	%tmp2 = load <4 x i32>, <4 x i32>* %B
	%tmp3 = shufflevector <4 x i32> %tmp1, <4 x i32> %tmp2, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
	ret <8 x i32> %tmp3
}

define <4 x float> @vzipQf(<4 x float>* %A, <4 x float>* %B) nounwind {









	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp2 = load <4 x float>, <4 x float>* %B
	%tmp3 = shufflevector <4 x float> %tmp1, <4 x float> %tmp2, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
	%tmp4 = shufflevector <4 x float> %tmp1, <4 x float> %tmp2, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
        %tmp5 = fadd <4 x float> %tmp3, %tmp4
	ret <4 x float> %tmp5
}

define <8 x float> @vzipQf_QQres(<4 x float>* %A, <4 x float>* %B) nounwind {








	%tmp1 = load <4 x float>, <4 x float>* %A
	%tmp2 = load <4 x float>, <4 x float>* %B
	%tmp3 = shufflevector <4 x float> %tmp1, <4 x float> %tmp2, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
	ret <8 x float> %tmp3
}



define <8 x i8> @vzipi8_undef(<8 x i8>* %A, <8 x i8>* %B) nounwind {








	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = shufflevector <8 x i8> %tmp1, <8 x i8> %tmp2, <8 x i32> <i32 0, i32 undef, i32 1, i32 9, i32 undef, i32 10, i32 3, i32 11>
	%tmp4 = shufflevector <8 x i8> %tmp1, <8 x i8> %tmp2, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 undef, i32 undef, i32 15>
        %tmp5 = add <8 x i8> %tmp3, %tmp4
	ret <8 x i8> %tmp5
}

define <16 x i8> @vzipi8_undef_Qres(<8 x i8>* %A, <8 x i8>* %B) nounwind {








	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp2 = load <8 x i8>, <8 x i8>* %B
	%tmp3 = shufflevector <8 x i8> %tmp1, <8 x i8> %tmp2, <16 x i32> <i32 0, i32 undef, i32 1, i32 9, i32 undef, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 undef, i32 undef, i32 15>
	ret <16 x i8> %tmp3
}

define <16 x i8> @vzipQi8_undef(<16 x i8>* %A, <16 x i8>* %B) nounwind {









	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = shufflevector <16 x i8> %tmp1, <16 x i8> %tmp2, <16 x i32> <i32 0, i32 16, i32 1, i32 undef, i32 undef, i32 undef, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
	%tmp4 = shufflevector <16 x i8> %tmp1, <16 x i8> %tmp2, <16 x i32> <i32 8, i32 24, i32 9, i32 undef, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 undef, i32 14, i32 30, i32 undef, i32 31>
        %tmp5 = add <16 x i8> %tmp3, %tmp4
	ret <16 x i8> %tmp5
}

define <32 x i8> @vzipQi8_undef_QQres(<16 x i8>* %A, <16 x i8>* %B) nounwind {








	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp2 = load <16 x i8>, <16 x i8>* %B
	%tmp3 = shufflevector <16 x i8> %tmp1, <16 x i8> %tmp2, <32 x i32> <i32 0, i32 16, i32 1, i32 undef, i32 undef, i32 undef, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 undef, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 undef, i32 14, i32 30, i32 undef, i32 31>
	ret <32 x i8> %tmp3
}

define <8 x i16> @vzip_lower_shufflemask_undef(<4 x i16>* %A, <4 x i16>* %B) {
entry:
  
  
	%tmp1 = load <4 x i16>, <4 x i16>* %A
	%tmp2 = load <4 x i16>, <4 x i16>* %B
  %0 = shufflevector <4 x i16> %tmp1, <4 x i16> %tmp2, <8 x i32> <i32 undef, i32 undef, i32 undef, i32 undef, i32 2, i32 6, i32 3, i32 7>
  ret <8 x i16> %0
}

define <4 x i32> @vzip_lower_shufflemask_zeroed(<2 x i32>* %A) {
entry:
  
  
  
  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %0 = shufflevector <2 x i32> %tmp1, <2 x i32> %tmp1, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  ret <4 x i32> %0
}

define <4 x i32> @vzip_lower_shufflemask_vuzp(<2 x i32>* %A) {
entry:
  
  
  
  %tmp1 = load <2 x i32>, <2 x i32>* %A
  %0 = shufflevector <2 x i32> %tmp1, <2 x i32> %tmp1, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  ret <4 x i32> %0
}

