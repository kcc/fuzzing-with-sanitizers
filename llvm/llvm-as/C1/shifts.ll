

define zeroext i8 @lshr8(i8 zeroext %a, i8 zeroext %cnt) nounwind readnone {
entry:


  %shr = lshr i8 %a, %cnt
  ret i8 %shr
}

define signext i8 @ashr8(i8 signext %a, i8 zeroext %cnt) nounwind readnone {
entry:


  %shr = ashr i8 %a, %cnt
  ret i8 %shr
}

define zeroext i8 @shl8(i8 zeroext %a, i8 zeroext %cnt) nounwind readnone {
entry:


  %shl = shl i8 %a, %cnt
  ret i8 %shl
}

define zeroext i16 @lshr16(i16 zeroext %a, i16 zeroext %cnt) nounwind readnone {
entry:


  %shr = lshr i16 %a, %cnt
  ret i16 %shr
}

define signext i16 @ashr16(i16 signext %a, i16 zeroext %cnt) nounwind readnone {
entry:


  %shr = ashr i16 %a, %cnt
  ret i16 %shr
}

define zeroext i16 @shl16(i16 zeroext %a, i16 zeroext %cnt) nounwind readnone {
entry:


  %shl = shl i16 %a, %cnt
  ret i16 %shl
}

define zeroext i32 @lshr32(i32 zeroext %a, i32 zeroext %cnt) nounwind readnone {
entry:



  %shr = lshr i32 %a, %cnt
  ret i32 %shr
}

define signext i32 @ashr32(i32 signext %a, i32 zeroext %cnt) nounwind readnone {
entry:


  %shr = ashr i32 %a, %cnt
  ret i32 %shr
}

define zeroext i32 @shl32(i32 zeroext %a, i32 zeroext %cnt) nounwind readnone {
entry:


  %shl = shl i32 %a, %cnt
  ret i32 %shl
}

define zeroext i64 @lshr64(i64 zeroext %a, i64 zeroext %cnt) nounwind readnone {
entry:


  %shr = lshr i64 %a, %cnt
  ret i64 %shr
}

define signext i64 @ashr64(i64 signext %a, i64 zeroext %cnt) nounwind readnone {
entry:


  %shr = ashr i64 %a, %cnt
  ret i64 %shr
}

define zeroext i64 @shl64(i64 zeroext %a, i64 zeroext %cnt) nounwind readnone {
entry:




  %shl = shl i64 %a, %cnt
  ret i64 %shl
}
