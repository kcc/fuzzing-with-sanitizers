


define i32 @shl() nounwind ssp {
entry:


  %shl = shl i32 -1, 2
  ret i32 %shl
}

define i32 @shl_reg(i32 %src1, i32 %src2) nounwind ssp {
entry:


  %shl = shl i32 %src1, %src2
  ret i32 %shl
}

define i32 @lshr() nounwind ssp {
entry:


  %lshr = lshr i32 -1, 2
  ret i32 %lshr
}

define i32 @lshr_reg(i32 %src1, i32 %src2) nounwind ssp {
entry:


  %lshr = lshr i32 %src1, %src2
  ret i32 %lshr
}

define i32 @ashr() nounwind ssp {
entry:


  %ashr = ashr i32 -1, 2
  ret i32 %ashr
}

define i32 @ashr_reg(i32 %src1, i32 %src2) nounwind ssp {
entry:


  %ashr = ashr i32 %src1, %src2
  ret i32 %ashr
}

