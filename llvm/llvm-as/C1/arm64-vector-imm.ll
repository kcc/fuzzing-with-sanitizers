

define <8 x i8> @v_orrimm(<8 x i8>* %A) nounwind {




	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp3 = or <8 x i8> %tmp1, <i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1>
	ret <8 x i8> %tmp3
}

define <16 x i8> @v_orrimmQ(<16 x i8>* %A) nounwind {




	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp3 = or <16 x i8> %tmp1, <i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1>
	ret <16 x i8> %tmp3
}

define <8 x i8> @v_bicimm(<8 x i8>* %A) nounwind {




	%tmp1 = load <8 x i8>, <8 x i8>* %A
	%tmp3 = and <8 x i8> %tmp1, < i8 -1, i8 -1, i8 -1, i8 0, i8 -1, i8 -1, i8 -1, i8 0 >
	ret <8 x i8> %tmp3
}

define <16 x i8> @v_bicimmQ(<16 x i8>* %A) nounwind {




	%tmp1 = load <16 x i8>, <16 x i8>* %A
	%tmp3 = and <16 x i8> %tmp1, < i8 -1, i8 -1, i8 -1, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, i8 -1, i8 -1, i8 0 >
	ret <16 x i8> %tmp3
}

define <2 x double> @foo(<2 x double> %bar) nounwind {


  %add = fadd <2 x double> %bar, <double 1.0, double 1.0>
  ret <2 x double> %add
}

define <4 x i32> @movi_4s_imm_t1() nounwind readnone ssp {
entry:


  ret <4 x i32> <i32 75, i32 75, i32 75, i32 75>
}

define <4 x i32> @movi_4s_imm_t2() nounwind readnone ssp {
entry:


  ret <4 x i32> <i32 19200, i32 19200, i32 19200, i32 19200>
}

define <4 x i32> @movi_4s_imm_t3() nounwind readnone ssp {
entry:


  ret <4 x i32> <i32 4915200, i32 4915200, i32 4915200, i32 4915200>
}

define <4 x i32> @movi_4s_imm_t4() nounwind readnone ssp {
entry:


  ret <4 x i32> <i32 1258291200, i32 1258291200, i32 1258291200, i32 1258291200>
}

define <8 x i16> @movi_8h_imm_t5() nounwind readnone ssp {
entry:


  ret <8 x i16> <i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75, i16 75>
}


define <8 x i16> @movi_8h_imm_t6() nounwind readnone ssp {
entry:


  ret <8 x i16> <i16 19200, i16 19200, i16 19200, i16 19200, i16 19200, i16 19200, i16 19200, i16 19200>
}

define <4 x i32> @movi_4s_imm_t7() nounwind readnone ssp {
entry:


ret <4 x i32> <i32 19455, i32 19455, i32 19455, i32 19455>
}

define <4 x i32> @movi_4s_imm_t8() nounwind readnone ssp {
entry:


ret <4 x i32> <i32 4980735, i32 4980735, i32 4980735, i32 4980735>
}

define <16 x i8> @movi_16b_imm_t9() nounwind readnone ssp {
entry:


ret <16 x i8> <i8 75, i8 75, i8 75, i8 75, i8 75, i8 75, i8 75, i8 75,
               i8 75, i8 75, i8 75, i8 75, i8 75, i8 75, i8 75, i8 75>
}

define <2 x i64> @movi_2d_imm_t10() nounwind readnone ssp {
entry:


ret <2 x i64> <i64 71777214294589695, i64 71777214294589695>
}

define <4 x i32> @movi_4s_imm_t11() nounwind readnone ssp {
entry:


ret <4 x i32> <i32 3198681088, i32 3198681088, i32 3198681088, i32 3198681088>
}

define <2 x i64> @movi_2d_imm_t12() nounwind readnone ssp {
entry:


ret <2 x i64> <i64 13818732506632945664, i64 13818732506632945664>
}
