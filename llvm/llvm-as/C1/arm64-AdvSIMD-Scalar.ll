




define <2 x i64> @bar(<2 x i64> %a, <2 x i64> %b) nounwind readnone {



























  %add = add <2 x i64> %a, %b
  %vgetq_lane = extractelement <2 x i64> %add, i32 0
  %vgetq_lane2 = extractelement <2 x i64> %b, i32 0
  %add3 = add i64 %vgetq_lane, %vgetq_lane2
  %sub = sub i64 %vgetq_lane, %vgetq_lane2
  %vecinit = insertelement <2 x i64> undef, i64 %add3, i32 0
  %vecinit8 = insertelement <2 x i64> %vecinit, i64 %sub, i32 1
  ret <2 x i64> %vecinit8
}

define double @subdd_su64(<2 x i64> %a, <2 x i64> %b) nounwind readnone {






  %vecext = extractelement <2 x i64> %a, i32 0
  %vecext1 = extractelement <2 x i64> %b, i32 0
  %sub.i = sub nsw i64 %vecext1, %vecext
  %retval = bitcast i64 %sub.i to double
  ret double %retval
}

define double @vaddd_su64(<2 x i64> %a, <2 x i64> %b) nounwind readnone {






  %vecext = extractelement <2 x i64> %a, i32 0
  %vecext1 = extractelement <2 x i64> %b, i32 0
  %add.i = add nsw i64 %vecext1, %vecext
  %retval = bitcast i64 %add.i to double
  ret double %retval
}


define double @add_sub_su64(<2 x i64> %a, <2 x i64> %b) nounwind readnone {








  %vecext = extractelement <2 x i64> %a, i32 0
  %vecext1 = extractelement <2 x i64> %b, i32 0
  %add.i = add i64 %vecext1, %vecext
  %sub.i = sub i64 0, %add.i
  %retval = bitcast i64 %sub.i to double
  ret double %retval
}
define double @and_su64(<2 x i64> %a, <2 x i64> %b) nounwind readnone {






  %vecext = extractelement <2 x i64> %a, i32 0
  %vecext1 = extractelement <2 x i64> %b, i32 0
  %or.i = and i64 %vecext1, %vecext
  %retval = bitcast i64 %or.i to double
  ret double %retval
}

define double @orr_su64(<2 x i64> %a, <2 x i64> %b) nounwind readnone {






  %vecext = extractelement <2 x i64> %a, i32 0
  %vecext1 = extractelement <2 x i64> %b, i32 0
  %or.i = or i64 %vecext1, %vecext
  %retval = bitcast i64 %or.i to double
  ret double %retval
}

define double @xorr_su64(<2 x i64> %a, <2 x i64> %b) nounwind readnone {






  %vecext = extractelement <2 x i64> %a, i32 0
  %vecext1 = extractelement <2 x i64> %b, i32 0
  %xor.i = xor i64 %vecext1, %vecext
  %retval = bitcast i64 %xor.i to double
  ret double %retval
}
