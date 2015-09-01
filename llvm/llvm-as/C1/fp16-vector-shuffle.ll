


define <4 x half> @select_64(<4 x half> %a, <4 x half> %b, <4 x i16> %c) #0 {


entry:
  %0 = bitcast <4 x half> %a to <4 x i16>
  %1 = bitcast <4 x half> %b to <4 x i16>
  %vbsl3.i = and <4 x i16> %0, %c
  %2 = xor <4 x i16> %c, <i16 -1, i16 -1, i16 -1, i16 -1>
  %vbsl4.i = and <4 x i16> %1, %2
  %vbsl5.i = or <4 x i16> %vbsl3.i, %vbsl4.i
  %3 = bitcast <4 x i16> %vbsl5.i to <4 x half>
  ret <4 x half> %3
}


define <8 x half> @select_128(<8 x half> %a, <8 x half> %b, <8 x i16> %c) #0 {


entry:
  %0 = bitcast <8 x half> %a to <8 x i16>
  %1 = bitcast <8 x half> %b to <8 x i16>
  %vbsl3.i = and <8 x i16> %0, %c
  %2 = xor <8 x i16> %c, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  %vbsl4.i = and <8 x i16> %1, %2
  %vbsl5.i = or <8 x i16> %vbsl3.i, %vbsl4.i
  %3 = bitcast <8 x i16> %vbsl5.i to <8 x half>
  ret <8 x half> %3
}




define <4 x half> @lane_64_64(<4 x half> %a, <4 x half> %b) #0 {


entry:
  %0 = shufflevector <4 x half> %a, <4 x half> %b, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  ret <4 x half> %0
}




define <8 x half> @lane_128_64(<8 x half> %a, <4 x half> %b) #0 {


entry:
  %0 = bitcast <4 x half> %b to <4 x i16>
  %vget_lane = extractelement <4 x i16> %0, i32 2
  %1 = bitcast <8 x half> %a to <8 x i16>
  %vset_lane = insertelement <8 x i16> %1, i16 %vget_lane, i32 1
  %2 = bitcast <8 x i16> %vset_lane to <8 x half>
  ret <8 x half> %2
}




define <4 x half> @lane_64_128(<4 x half> %a, <8 x half> %b) #0 {


entry:
  %0 = bitcast <8 x half> %b to <8 x i16>
  %vgetq_lane = extractelement <8 x i16> %0, i32 5
  %1 = bitcast <4 x half> %a to <4 x i16>
  %vset_lane = insertelement <4 x i16> %1, i16 %vgetq_lane, i32 3
  %2 = bitcast <4 x i16> %vset_lane to <4 x half>
  ret <4 x half> %2
}




define <8 x half> @lane_128_128(<8 x half> %a, <8 x half> %b) #0 {


entry:
  %0 = shufflevector <8 x half> %a, <8 x half> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 13, i32 4, i32 5, i32 6, i32 7>
  ret <8 x half> %0
}




define <4 x half> @ext_64(<4 x half> %a, <4 x half> %b) #0 {


entry:
  %0 = shufflevector <4 x half> %a, <4 x half> %b, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  ret <4 x half> %0
}




define <8 x half> @ext_128(<8 x half> %a, <8 x half> %b) #0 {


entry:
  %0 = shufflevector <8 x half> %a, <8 x half> %b, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10>
  ret <8 x half> %0
}




define <4 x half> @rev32_64(<4 x half> %a) #0 {
entry:


  %0 = shufflevector <4 x half> %a, <4 x half> undef, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  ret <4 x half> %0
}




define <4 x half> @rev64_64(<4 x half> %a) #0 {
entry:


  %0 = shufflevector <4 x half> %a, <4 x half> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  ret <4 x half> %0
}




define <8 x half> @rev32_128(<8 x half> %a) #0 {
entry:


  %0 = shufflevector <8 x half> %a, <8 x half> undef, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  ret <8 x half> %0
}




define <8 x half> @rev64_128(<8 x half> %a) #0 {
entry:


  %0 = shufflevector <8 x half> %a, <8 x half> undef, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  ret <8 x half> %0
}


define <4 x half> @create_64(i64 %a) #0 {


entry:
  %0 = bitcast i64 %a to <4 x half>
  ret <4 x half> %0
}


define <4 x half> @dup_64(half %a) #0 {


entry:
  %vecinit = insertelement <4 x half> undef, half %a, i32 0
  %vecinit1 = insertelement <4 x half> %vecinit, half %a, i32 1
  %vecinit2 = insertelement <4 x half> %vecinit1, half %a, i32 2
  %vecinit3 = insertelement <4 x half> %vecinit2, half %a, i32 3
  ret <4 x half> %vecinit3
}


define <8 x half> @dup_128(half %a) #0 {
entry:


  %vecinit = insertelement <8 x half> undef, half %a, i32 0
  %vecinit1 = insertelement <8 x half> %vecinit, half %a, i32 1
  %vecinit2 = insertelement <8 x half> %vecinit1, half %a, i32 2
  %vecinit3 = insertelement <8 x half> %vecinit2, half %a, i32 3
  %vecinit4 = insertelement <8 x half> %vecinit3, half %a, i32 4
  %vecinit5 = insertelement <8 x half> %vecinit4, half %a, i32 5
  %vecinit6 = insertelement <8 x half> %vecinit5, half %a, i32 6
  %vecinit7 = insertelement <8 x half> %vecinit6, half %a, i32 7
  ret <8 x half> %vecinit7
}


define <4 x half> @dup_lane_64(<4 x half> %a) #0 {
entry:


  %shuffle = shufflevector <4 x half> %a, <4 x half> undef, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  ret <4 x half> %shuffle
}


define <8 x half> @dup_lane_128(<4 x half> %a) #0 {
entry:


  %shuffle = shufflevector <4 x half> %a, <4 x half> undef, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  ret <8 x half> %shuffle
}


define <4 x half> @dup_laneq_64(<8 x half> %a) #0 {
entry:


  %shuffle = shufflevector <8 x half> %a, <8 x half> undef, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  ret <4 x half> %shuffle
}


define <8 x half> @dup_laneq_128(<8 x half> %a) #0 {
entry:


  %shuffle = shufflevector <8 x half> %a, <8 x half> undef, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  ret <8 x half> %shuffle
}


define <8 x half> @vcombine(<4 x half> %a, <4 x half> %b) #0 {
entry:


  %shuffle.i = shufflevector <4 x half> %a, <4 x half> %b, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  ret <8 x half> %shuffle.i
}


define <4 x half> @get_high(<8 x half> %a) #0 {


entry:
  %shuffle.i = shufflevector <8 x half> %a, <8 x half> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  ret <4 x half> %shuffle.i
}



define <4 x half> @get_low(<8 x half> %a) #0 {


entry:
  %shuffle.i = shufflevector <8 x half> %a, <8 x half> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x half> %shuffle.i
}


define <4 x half> @set_lane_64(<4 x half> %a, half %b) #0 {



entry:
  %0 = bitcast half %b to i16
  %1 = bitcast <4 x half> %a to <4 x i16>
  %vset_lane = insertelement <4 x i16> %1, i16 %0, i32 2
  %2 = bitcast <4 x i16> %vset_lane to <4 x half>
  ret <4 x half> %2
}



define <8 x half> @set_lane_128(<8 x half> %a, half %b) #0 {



entry:
  %0 = bitcast half %b to i16
  %1 = bitcast <8 x half> %a to <8 x i16>
  %vset_lane = insertelement <8 x i16> %1, i16 %0, i32 2
  %2 = bitcast <8 x i16> %vset_lane to <8 x half>
  ret <8 x half> %2
}


define half @get_lane_64(<4 x half> %a) #0 {



entry:
  %0 = bitcast <4 x half> %a to <4 x i16>
  %vget_lane = extractelement <4 x i16> %0, i32 2
  %1 = bitcast i16 %vget_lane to half
  ret half %1
}


define half @get_lane_128(<8 x half> %a) #0 {



entry:
  %0 = bitcast <8 x half> %a to <8 x i16>
  %vgetq_lane = extractelement <8 x i16> %0, i32 2
  %1 = bitcast i16 %vgetq_lane to half
  ret half %1
}
