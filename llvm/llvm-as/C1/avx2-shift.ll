




define <4 x i32> @variable_shl0(<4 x i32> %x, <4 x i32> %y) {
  %k = shl <4 x i32> %x, %y
  ret <4 x i32> %k
}



define <8 x i32> @variable_shl1(<8 x i32> %x, <8 x i32> %y) {
  %k = shl <8 x i32> %x, %y
  ret <8 x i32> %k
}



define <2 x i64> @variable_shl2(<2 x i64> %x, <2 x i64> %y) {
  %k = shl <2 x i64> %x, %y
  ret <2 x i64> %k
}



define <4 x i64> @variable_shl3(<4 x i64> %x, <4 x i64> %y) {
  %k = shl <4 x i64> %x, %y
  ret <4 x i64> %k
}



define <4 x i32> @variable_srl0(<4 x i32> %x, <4 x i32> %y) {
  %k = lshr <4 x i32> %x, %y
  ret <4 x i32> %k
}



define <8 x i32> @variable_srl1(<8 x i32> %x, <8 x i32> %y) {
  %k = lshr <8 x i32> %x, %y
  ret <8 x i32> %k
}



define <2 x i64> @variable_srl2(<2 x i64> %x, <2 x i64> %y) {
  %k = lshr <2 x i64> %x, %y
  ret <2 x i64> %k
}



define <4 x i64> @variable_srl3(<4 x i64> %x, <4 x i64> %y) {
  %k = lshr <4 x i64> %x, %y
  ret <4 x i64> %k
}




define <4 x i32> @variable_sra0(<4 x i32> %x, <4 x i32> %y) {
  %k = ashr <4 x i32> %x, %y
  ret <4 x i32> %k
}



define <8 x i32> @variable_sra1(<8 x i32> %x, <8 x i32> %y) {
  %k = ashr <8 x i32> %x, %y
  ret <8 x i32> %k
}



define <8 x i32> @vshift00(<8 x i32> %a) nounwind readnone {
  %s = shl <8 x i32> %a, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32
2>
  ret <8 x i32> %s
}


define <16 x i16> @vshift01(<16 x i16> %a) nounwind readnone {
  %s = shl <16 x i16> %a, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  ret <16 x i16> %s
}


define <4 x i64> @vshift02(<4 x i64> %a) nounwind readnone {
  %s = shl <4 x i64> %a, <i64 2, i64 2, i64 2, i64 2>
  ret <4 x i64> %s
}



define <8 x i32> @vshift03(<8 x i32> %a) nounwind readnone {
  %s = lshr <8 x i32> %a, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32
2>
  ret <8 x i32> %s
}


define <16 x i16> @vshift04(<16 x i16> %a) nounwind readnone {
  %s = lshr <16 x i16> %a, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  ret <16 x i16> %s
}


define <4 x i64> @vshift05(<4 x i64> %a) nounwind readnone {
  %s = lshr <4 x i64> %a, <i64 2, i64 2, i64 2, i64 2>
  ret <4 x i64> %s
}



define <8 x i32> @vshift06(<8 x i32> %a) nounwind readnone {
  %s = ashr <8 x i32> %a, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32
2>
  ret <8 x i32> %s
}


define <16 x i16> @vshift07(<16 x i16> %a) nounwind readnone {
  %s = ashr <16 x i16> %a, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  ret <16 x i16> %s
}




define <4 x i32> @variable_sra0_load(<4 x i32> %x, <4 x i32>* %y) {
  %y1 = load <4 x i32>, <4 x i32>* %y
  %k = ashr <4 x i32> %x, %y1
  ret <4 x i32> %k
}




define <8 x i32> @variable_sra1_load(<8 x i32> %x, <8 x i32>* %y) {
  %y1 = load <8 x i32>, <8 x i32>* %y
  %k = ashr <8 x i32> %x, %y1
  ret <8 x i32> %k
}




define <4 x i32> @variable_shl0_load(<4 x i32> %x, <4 x i32>* %y) {
  %y1 = load <4 x i32>, <4 x i32>* %y
  %k = shl <4 x i32> %x, %y1
  ret <4 x i32> %k
}



define <8 x i32> @variable_shl1_load(<8 x i32> %x, <8 x i32>* %y) {
  %y1 = load <8 x i32>, <8 x i32>* %y
  %k = shl <8 x i32> %x, %y1
  ret <8 x i32> %k
}



define <2 x i64> @variable_shl2_load(<2 x i64> %x, <2 x i64>* %y) {
  %y1 = load <2 x i64>, <2 x i64>* %y
  %k = shl <2 x i64> %x, %y1
  ret <2 x i64> %k
}



define <4 x i64> @variable_shl3_load(<4 x i64> %x, <4 x i64>* %y) {
  %y1 = load <4 x i64>, <4 x i64>* %y
  %k = shl <4 x i64> %x, %y1
  ret <4 x i64> %k
}



define <4 x i32> @variable_srl0_load(<4 x i32> %x, <4 x i32>* %y) {
  %y1 = load <4 x i32>, <4 x i32>* %y
  %k = lshr <4 x i32> %x, %y1
  ret <4 x i32> %k
}



define <8 x i32> @variable_srl1_load(<8 x i32> %x, <8 x i32>* %y) {
  %y1 = load <8 x i32>, <8 x i32>* %y
  %k = lshr <8 x i32> %x, %y1
  ret <8 x i32> %k
}



define <2 x i64> @variable_srl2_load(<2 x i64> %x, <2 x i64>* %y) {
  %y1 = load <2 x i64>, <2 x i64>* %y
  %k = lshr <2 x i64> %x, %y1
  ret <2 x i64> %k
}



define <4 x i64> @variable_srl3_load(<4 x i64> %x, <4 x i64>* %y) {
  %y1 = load <4 x i64>, <4 x i64>* %y
  %k = lshr <4 x i64> %x, %y1
  ret <4 x i64> %k
}

define <32 x i8> @shl9(<32 x i8> %A) nounwind {
  %B = shl <32 x i8> %A, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  ret <32 x i8> %B




}

define <32 x i8> @shr9(<32 x i8> %A) nounwind {
  %B = lshr <32 x i8> %A, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  ret <32 x i8> %B




}

define <32 x i8> @sra_v32i8_7(<32 x i8> %A) nounwind {
  %B = ashr <32 x i8> %A, <i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7>
  ret <32 x i8> %B




}

define <32 x i8> @sra_v32i8(<32 x i8> %A) nounwind {
  %B = ashr <32 x i8> %A, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  ret <32 x i8> %B






}





define <16 x i16> @sext_v16i16(<16 x i16> %a) nounwind {
  %b = trunc <16 x i16> %a to <16 x i8>
  %c = sext <16 x i8> %b to <16 x i16>
  ret <16 x i16> %c
}





define <8 x i32> @sext_v8i32(<8 x i32> %a) nounwind {
  %b = trunc <8 x i32> %a to <8 x i16>
  %c = sext <8 x i16> %b to <8 x i32>
  ret <8 x i32> %c
}

define <8 x i16> @variable_shl16(<8 x i16> %lhs, <8  x i16> %rhs) {






  %res = shl <8 x i16> %lhs, %rhs
  ret <8 x i16> %res
}

define <8 x i16> @variable_ashr16(<8 x i16> %lhs, <8  x i16> %rhs) {






  %res = ashr <8 x i16> %lhs, %rhs
  ret <8 x i16> %res
}

define <8 x i16> @variable_lshr16(<8 x i16> %lhs, <8  x i16> %rhs) {






  %res = lshr <8 x i16> %lhs, %rhs
  ret <8 x i16> %res
}