

define void @testLeftGood(<16 x i8> %src1, <16 x i8> %src2, <16 x i8>* %dest) nounwind {


  %and.i = and <16 x i8> %src1, <i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252>
  %vshl_n = shl <16 x i8> %src2, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  %result = or <16 x i8> %and.i, %vshl_n
  store <16 x i8> %result, <16 x i8>* %dest, align 16
  ret void
}

define void @testLeftBad(<16 x i8> %src1, <16 x i8> %src2, <16 x i8>* %dest) nounwind {


  %and.i = and <16 x i8> %src1, <i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165>
  %vshl_n = shl <16 x i8> %src2, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %result = or <16 x i8> %and.i, %vshl_n
  store <16 x i8> %result, <16 x i8>* %dest, align 16
  ret void
}

define void @testRightGood(<16 x i8> %src1, <16 x i8> %src2, <16 x i8>* %dest) nounwind {


  %and.i = and <16 x i8> %src1, <i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252, i8 252>
  %vshl_n = lshr <16 x i8> %src2, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  %result = or <16 x i8> %and.i, %vshl_n
  store <16 x i8> %result, <16 x i8>* %dest, align 16
  ret void
}

define void @testRightBad(<16 x i8> %src1, <16 x i8> %src2, <16 x i8>* %dest) nounwind {


  %and.i = and <16 x i8> %src1, <i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165, i8 165>
  %vshl_n = lshr <16 x i8> %src2, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %result = or <16 x i8> %and.i, %vshl_n
  store <16 x i8> %result, <16 x i8>* %dest, align 16
  ret void
}
