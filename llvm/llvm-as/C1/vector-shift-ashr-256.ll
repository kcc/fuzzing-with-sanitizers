






define <4 x i64> @var_shift_v4i64(<4 x i64> %a, <4 x i64> %b) nounwind {


































  %shift = ashr <4 x i64> %a, %b
  ret <4 x i64> %shift
}

define <8 x i32> @var_shift_v8i32(<8 x i32> %a, <8 x i32> %b) nounwind {


































  %shift = ashr <8 x i32> %a, %b
  ret <8 x i32> %shift
}

define <16 x i16> @var_shift_v16i16(<16 x i16> %a, <16 x i16> %b) nounwind {
















































  %shift = ashr <16 x i16> %a, %b
  ret <16 x i16> %shift
}

define <32 x i8> @var_shift_v32i8(<32 x i8> %a, <32 x i8> %b) nounwind {


















































































  %shift = ashr <32 x i8> %a, %b
  ret <32 x i8> %shift
}





define <4 x i64> @splatvar_shift_v4i64(<4 x i64> %a, <4 x i64> %b) nounwind {






















  %splat = shufflevector <4 x i64> %b, <4 x i64> undef, <4 x i32> zeroinitializer
  %shift = ashr <4 x i64> %a, %splat
  ret <4 x i64> %shift
}

define <8 x i32> @splatvar_shift_v8i32(<8 x i32> %a, <8 x i32> %b) nounwind {
















  %splat = shufflevector <8 x i32> %b, <8 x i32> undef, <8 x i32> zeroinitializer
  %shift = ashr <8 x i32> %a, %splat
  ret <8 x i32> %shift
}

define <16 x i16> @splatvar_shift_v16i16(<16 x i16> %a, <16 x i16> %b) nounwind {


















  %splat = shufflevector <16 x i16> %b, <16 x i16> undef, <16 x i32> zeroinitializer
  %shift = ashr <16 x i16> %a, %splat
  ret <16 x i16> %shift
}

define <32 x i8> @splatvar_shift_v32i8(<32 x i8> %a, <32 x i8> %b) nounwind {













































































  %splat = shufflevector <32 x i8> %b, <32 x i8> undef, <32 x i32> zeroinitializer
  %shift = ashr <32 x i8> %a, %splat
  ret <32 x i8> %shift
}





define <4 x i64> @constant_shift_v4i64(<4 x i64> %a) nounwind {

























  %shift = ashr <4 x i64> %a, <i64 1, i64 7, i64 31, i64 62>
  ret <4 x i64> %shift
}

define <8 x i32> @constant_shift_v8i32(<8 x i32> %a) nounwind {






















  %shift = ashr <8 x i32> %a, <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 8, i32 7>
  ret <8 x i32> %shift
}

define <16 x i16> @constant_shift_v16i16(<16 x i16> %a) nounwind {












































  %shift = ashr <16 x i16> %a, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>
  ret <16 x i16> %shift
}

define <32 x i8> @constant_shift_v32i8(<32 x i8> %a) nounwind {












































































  %shift = ashr <32 x i8> %a, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  ret <32 x i8> %shift
}





define <4 x i64> @splatconstant_shift_v4i64(<4 x i64> %a) nounwind {


















  %shift = ashr <4 x i64> %a, <i64 7, i64 7, i64 7, i64 7>
  ret <4 x i64> %shift
}

define <8 x i32> @splatconstant_shift_v8i32(<8 x i32> %a) nounwind {












  %shift = ashr <8 x i32> %a, <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  ret <8 x i32> %shift
}

define <16 x i16> @splatconstant_shift_v16i16(<16 x i16> %a) nounwind {












  %shift = ashr <16 x i16> %a, <i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3>
  ret <16 x i16> %shift
}

define <32 x i8> @splatconstant_shift_v32i8(<32 x i8> %a) nounwind {
























  %shift = ashr <32 x i8> %a, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  ret <32 x i8> %shift
}
