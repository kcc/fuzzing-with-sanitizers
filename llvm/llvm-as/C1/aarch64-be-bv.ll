

@vec_v8i16 = global <8 x i16> <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>


define i16 @movi_modimm_t1() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 1, i16 0, i16 1, i16 0, i16 1, i16 0, i16 1, i16 0>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @movi_modimm_t2() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 256, i16 0, i16 256, i16 0, i16 256, i16 0, i16 256, i16 0>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @movi_modimm_t3() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 0, i16 1, i16 0, i16 1, i16 0, i16 1, i16 0, i16 1>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @movi_modimm_t4() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 0, i16 256, i16 0, i16 256, i16 0, i16 256, i16 0, i16 256>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @movi_modimm_t5() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @movi_modimm_t6() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @movi_modimm_t7() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 511, i16 0, i16 511, i16 0, i16 511, i16 0, i16 511, i16 0>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @movi_modimm_t8() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 65535, i16 1, i16 65535, i16 1, i16 65535, i16 1, i16 65535, i16 1>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @movi_modimm_t9() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 257, i16 257, i16 257, i16 257, i16 257, i16 257, i16 257, i16 257>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @movi_modimm_t10() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @fmov_modimm_t11() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 0, i16 16448, i16 0, i16 16448, i16 0, i16 16448, i16 0, i16 16448>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @fmov_modimm_t12() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 0, i16 0, i16 0, i16 16327, i16 0, i16 0, i16 0, i16 16327>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @mvni_modimm_t1() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 65534, i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534, i16 65535>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @mvni_modimm_t2() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 65279, i16 65535, i16 65279, i16 65535, i16 65279, i16 65535, i16 65279, i16 65535>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @mvni_modimm_t3() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @mvni_modimm_t4() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 65535, i16 65279, i16 65535, i16 65279, i16 65535, i16 65279, i16 65535, i16 65279>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @mvni_modimm_t5() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 65534, i16 65534, i16 65534, i16 65534, i16 65534, i16 65534, i16 65534, i16 65534>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @mvni_modimm_t6() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 65279, i16 65279, i16 65279, i16 65279, i16 65279, i16 65279, i16 65279, i16 65279>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @mvni_modimm_t7() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 65024, i16 65535, i16 65024, i16 65535, i16 65024, i16 65535, i16 65024, i16 65535>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @mvni_modimm_t8() nounwind {
  
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = add <8 x i16> %in, <i16 0, i16 65534, i16 0, i16 65534, i16 0, i16 65534, i16 0, i16 65534>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @bic_modimm_t1() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = and <8 x i16> %in, <i16 65534, i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534, i16 65535>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @bic_modimm_t2() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = and <8 x i16> %in, <i16 65279, i16 65535, i16 65279, i16 65535, i16 65279, i16 65535, i16 65279, i16 65535>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @bic_modimm_t3() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = and <8 x i16> %in, <i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534, i16 65535, i16 65534>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @bic_modimm_t4() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = and <8 x i16> %in, <i16 65535, i16 65279, i16 65535, i16 65279, i16 65535, i16 65279, i16 65535, i16 65279>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @bic_modimm_t5() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = and <8 x i16> %in, <i16 65534, i16 65534, i16 65534, i16 65534, i16 65534, i16 65534, i16 65534, i16 65534>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @bic_modimm_t6() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = and <8 x i16> %in, <i16 65279, i16 65279, i16 65279, i16 65279, i16 65279, i16 65279, i16 65279, i16 65279>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @orr_modimm_t1() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = or <8 x i16> %in, <i16 1, i16 0, i16 1, i16 0, i16 1, i16 0, i16 1, i16 0>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @orr_modimm_t2() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = or <8 x i16> %in, <i16 256, i16 0, i16 256, i16 0, i16 256, i16 0, i16 256, i16 0>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @orr_modimm_t3() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = or <8 x i16> %in, <i16 0, i16 1, i16 0, i16 1, i16 0, i16 1, i16 0, i16 1>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @orr_modimm_t4() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = or <8 x i16> %in, <i16 0, i16 256, i16 0, i16 256, i16 0, i16 256, i16 0, i16 256>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @orr_modimm_t5() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = or <8 x i16> %in, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}


define i16 @orr_modimm_t6() nounwind {
  
  
  
  %in = load <8 x i16>, <8 x i16>* @vec_v8i16
  %rv = or <8 x i16> %in, <i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256>
  %el = extractelement <8 x i16> %rv, i32 0
  ret i16 %el
}

declare i8 @f_v8i8(<8 x i8> %arg)
declare i16 @f_v4i16(<4 x i16> %arg)
declare i32 @f_v2i32(<2 x i32> %arg)
declare i64 @f_v1i64(<1 x i64> %arg)
declare i8 @f_v16i8(<16 x i8> %arg)
declare i16 @f_v8i16(<8 x i16> %arg)
declare i32 @f_v4i32(<4 x i32> %arg)
declare i64 @f_v2i64(<2 x i64> %arg)


define void @modimm_t1_call() {
  
  
  
  call i8 @f_v8i8(<8 x i8> <i8 8, i8 0, i8 0, i8 0, i8 8, i8 0, i8 0, i8 0>)
  
  
  
  call i16 @f_v4i16(<4 x i16> <i16 7, i16 0, i16 7, i16 0>)
  
  
  
  call i32 @f_v2i32(<2 x i32> <i32 6, i32 6>)
  
  
  call i64 @f_v1i64(<1 x i64> <i64 21474836485>)
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 5, i8 0, i8 0, i8 0, i8 5, i8 0, i8 0, i8 0, i8 5, i8 0, i8 0, i8 0, i8 5, i8 0, i8 0, i8 0>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 3, i32 3, i32 3, i32 3>)
  
  
  
  call i64 @f_v2i64(<2 x i64> <i64 8589934594, i64 8589934594>)

  ret void
}


define void @modimm_t2_call() {
  
  
  
  call i8 @f_v8i8(<8 x i8> <i8 0, i8 8, i8 0, i8 0, i8 0, i8 8, i8 0, i8 0>)
  
  
  
  call i16 @f_v4i16(<4 x i16> <i16 1792, i16 0, i16 1792, i16 0>)
  
  
  
  call i32 @f_v2i32(<2 x i32> <i32 1536, i32 1536>)
  
  
  call i64 @f_v1i64(<1 x i64> <i64 5497558140160>)
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 0, i8 5, i8 0, i8 0, i8 0, i8 5, i8 0, i8 0, i8 0, i8 5, i8 0, i8 0, i8 0, i8 5, i8 0, i8 0>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 1024, i16 0, i16 1024, i16 0, i16 1024, i16 0, i16 1024, i16 0>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 768, i32 768, i32 768, i32 768>)
  
  
  
  call i64 @f_v2i64(<2 x i64> <i64 2199023256064, i64 2199023256064>)

  ret void
}


define void @modimm_t3_call() {
  
  
  
  call i8 @f_v8i8(<8 x i8> <i8 0, i8 0, i8 8, i8 0, i8 0, i8 0, i8 8, i8 0>)
  
  
  
  call i16 @f_v4i16(<4 x i16> <i16 0, i16 7, i16 0, i16 7>)
  
  
  
  call i32 @f_v2i32(<2 x i32> <i32 393216, i32 393216>)
  
  
  call i64 @f_v1i64(<1 x i64> <i64 1407374883880960>)
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 0, i8 0, i8 5, i8 0, i8 0, i8 0, i8 5, i8 0, i8 0, i8 0, i8 5, i8 0, i8 0, i8 0, i8 5, i8 0>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 196608, i32 196608, i32 196608, i32 196608>)
  
  
  
  call i64 @f_v2i64(<2 x i64> <i64 562949953552384, i64 562949953552384>)

  ret void
}


define void @modimm_t4_call() {
  
  
  
  call i8 @f_v8i8(<8 x i8> <i8 0, i8 0, i8 0, i8 8, i8 0, i8 0, i8 0, i8 8>)
  
  
  
  call i16 @f_v4i16(<4 x i16> <i16 0, i16 1792, i16 0, i16 1792>)
  
  
  
  call i32 @f_v2i32(<2 x i32> <i32 100663296, i32 100663296>)
  
  
  call i64 @f_v1i64(<1 x i64> <i64 360287970273525760>)
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 0, i8 0, i8 0, i8 5, i8 0, i8 0, i8 0, i8 5, i8 0, i8 0, i8 0, i8 5, i8 0, i8 0, i8 0, i8 5>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 0, i16 1024, i16 0, i16 1024, i16 0, i16 1024, i16 0, i16 1024>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 50331648, i32 50331648, i32 50331648, i32 50331648>)
  
  
  
  call i64 @f_v2i64(<2 x i64> <i64 144115188109410304, i64 144115188109410304>)

  ret void
}


define void @modimm_t5_call() {
  
  
  
  call i8 @f_v8i8(<8 x i8> <i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0>)
  
  
  
  call i16 @f_v4i16(<4 x i16> <i16 7, i16 7, i16 7, i16 7>)
  
  
  
  call i32 @f_v2i32(<2 x i32> <i32 393222, i32 393222>)
  
  
  call i64 @f_v1i64(<1 x i64> <i64 1407396358717445>)
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 196611, i32 196611, i32 196611, i32 196611>)
  
  
  
  call i64 @f_v2i64(<2 x i64> <i64 562958543486978, i64 562958543486978>)

  ret void
}


define void @modimm_t6_call() {
  
  
  
  call i8 @f_v8i8(<8 x i8> <i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8>)
  
  
  
  call i16 @f_v4i16(<4 x i16> <i16 1792, i16 1792, i16 1792, i16 1792>)
  
  
  
  call i32 @f_v2i32(<2 x i32> <i32 100664832, i32 100664832>)
  
  
  call i64 @f_v1i64(<1 x i64> <i64 360293467831665920>)
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 0, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 5, i8 0, i8 5>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 50332416, i32 50332416, i32 50332416, i32 50332416>)
  
  
  
  call i64 @f_v2i64(<2 x i64> <i64 144117387132666368, i64 144117387132666368>)

  ret void
}


define void @modimm_t7_call() {
  
  
  
  call i8 @f_v8i8(<8 x i8> <i8 255, i8 8, i8 0, i8 0, i8 255, i8 8, i8 0, i8 0>)
  
  
  
  call i16 @f_v4i16(<4 x i16> <i16 2047, i16 0, i16 2047, i16 0>)
  
  
  
  call i32 @f_v2i32(<2 x i32> <i32 1791, i32 1791>)
  
  
  call i64 @f_v1i64(<1 x i64> <i64 6592774800895>)
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 255, i8 5, i8 0, i8 0, i8 255, i8 5, i8 0, i8 0, i8 255, i8 5, i8 0, i8 0, i8 255, i8 5, i8 0, i8 0>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 1279, i16 0, i16 1279, i16 0, i16 1279, i16 0, i16 1279, i16 0>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 1023, i32 1023, i32 1023, i32 1023>)
  
  
  
  call i64 @f_v2i64(<2 x i64> <i64 3294239916799, i64 3294239916799>)

  ret void
}


define void @modimm_t8_call() {
  
  
  
  call i8 @f_v8i8(<8 x i8> <i8 255, i8 255, i8 8, i8 0, i8 255, i8 255, i8 8, i8 0>)
  
  
  
  call i16 @f_v4i16(<4 x i16> <i16 65535, i16 7, i16 65535, i16 7>)
  
  
  
  call i32 @f_v2i32(<2 x i32> <i32 458751, i32 458751>)
  
  
  call i64 @f_v1i64(<1 x i64> <i64 1688845565689855>)
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 255, i8 255, i8 5, i8 0, i8 255, i8 255, i8 5, i8 0, i8 255, i8 255, i8 5, i8 0, i8 255, i8 255, i8 5, i8 0>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 65535, i16 4, i16 65535, i16 4, i16 65535, i16 4, i16 65535, i16 4>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 262143, i32 262143, i32 262143, i32 262143>)
  
  
  
  call i64 @f_v2i64(<2 x i64> <i64 844420635361279, i64 844420635361279>)

  ret void
}


define void @modimm_t9_call() {
  
  
  
  call i8 @f_v8i8(<8 x i8> <i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>)
  
  
  
  call i16 @f_v4i16(<4 x i16> <i16 1799, i16 1799, i16 1799, i16 1799>)
  
  
  
  call i32 @f_v2i32(<2 x i32> <i32 101058054, i32 101058054>)
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5, i8 5>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 1028, i16 1028, i16 1028, i16 1028, i16 1028, i16 1028, i16 1028, i16 1028>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 50529027, i32 50529027, i32 50529027, i32 50529027>)

  ret void
}


define void @modimm_t10_call() {
  
  
  
  call i8 @f_v8i8(<8 x i8> <i8 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0>)
  
  
  
  call i16 @f_v4i16(<4 x i16> <i16 -1, i16 0, i16 -1, i16 0>)
  
  
  
  call i32 @f_v2i32(<2 x i32> <i32 -1, i32 -1>)
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 -1, i8 -1, i8 -1, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, i8 -1, i8 -1, i8 0, i8 -1, i8 -1, i8 -1, i8 0>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 0, i32 -1, i32 0, i32 -1>)

  ret void
}


define void @modimm_t11_call() {
  
  
  
  call i8 @f_v8i8(<8 x i8> <i8 0, i8 0, i8 128, i8 64, i8 0, i8 0, i8 128, i8 64>)
  
  
  
  call i16 @f_v4i16(<4 x i16> <i16 0, i16 16496, i16 0, i16 16496>)
  
  
  
  call i32 @f_v2i32(<2 x i32> <i32 1080033280, i32 1080033280>)
  
  
  call i64 @f_v1i64(<1 x i64> <i64 4523865826746957824>)
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 0, i8 0, i8 80, i8 64, i8 0, i8 0, i8 80, i8 64, i8 0, i8 0, i8 80, i8 64, i8 0, i8 0, i8 80, i8 64>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 0, i16 16448, i16 0, i16 16448, i16 0, i16 16448, i16 0, i16 16448>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 1076887552, i32 1076887552, i32 1076887552, i32 1076887552>)
  
  
  
  call i64 @f_v2i64(<2 x i64> <i64 4620693218757967872, i64 4620693218757967872>)

  ret void
}


define void @modimm_t12_call() {
  
  
  
  
  call i8 @f_v16i8(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 200, i8 63, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 200, i8 63>)
  
  
  
  
  call i16 @f_v8i16(<8 x i16> <i16 0, i16 0, i16 0, i16 16327, i16 0, i16 0, i16 0, i16 16327>)
  
  
  
  
  call i32 @f_v4i32(<4 x i32> <i32 0, i32 1069940736, i32 0, i32 1069940736>)

  ret void
}
