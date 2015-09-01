

















define i8 @zext_1_8(i1 %a) nounwind ssp {




  %r = zext i1 %a to i8
  ret i8 %r
}

define i16 @zext_1_16(i1 %a) nounwind ssp {




  %r = zext i1 %a to i16
  ret i16 %r
}

define i32 @zext_1_32(i1 %a) nounwind ssp {




  %r = zext i1 %a to i32
  ret i32 %r
}

define i16 @zext_8_16(i8 %a) nounwind ssp {




  %r = zext i8 %a to i16
  ret i16 %r
}

define i32 @zext_8_32(i8 %a) nounwind ssp {




  %r = zext i8 %a to i32
  ret i32 %r
}

define i32 @zext_16_32(i16 %a) nounwind ssp {





  %r = zext i16 %a to i32
  ret i32 %r
}



define i8 @sext_1_8(i1 %a) nounwind ssp {






  %r = sext i1 %a to i8
  ret i8 %r
}

define i16 @sext_1_16(i1 %a) nounwind ssp {






  %r = sext i1 %a to i16
  ret i16 %r
}

define i32 @sext_1_32(i1 %a) nounwind ssp {






  %r = sext i1 %a to i32
  ret i32 %r
}

define i16 @sext_8_16(i8 %a) nounwind ssp {





  %r = sext i8 %a to i16
  ret i16 %r
}

define i32 @sext_8_32(i8 %a) nounwind ssp {





  %r = sext i8 %a to i32
  ret i32 %r
}

define i32 @sext_16_32(i16 %a) nounwind ssp {





  %r = sext i16 %a to i32
  ret i32 %r
}
