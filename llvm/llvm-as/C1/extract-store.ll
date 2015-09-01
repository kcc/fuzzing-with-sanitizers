



define void @extract_i8(i8* nocapture %dst, <16 x i8> %foo) {




  %vecext = extractelement <16 x i8> %foo, i32 15
  store i8 %vecext, i8* %dst, align 1
  ret void
}


define void @extract_i16(i16* nocapture %dst, <8 x i16> %foo) {




  %vecext = extractelement <8 x i16> %foo, i32 7
  store i16 %vecext, i16* %dst, align 1
  ret void
}


define void @extract_i8_undef(i8* nocapture %dst, <16 x i8> %foo) {




  %vecext = extractelement <16 x i8> %foo, i32 16 
  store i8 %vecext, i8* %dst, align 1
  ret void
}


define void @extract_i16_undef(i16* nocapture %dst, <8 x i16> %foo) {




  %vecext = extractelement <8 x i16> %foo, i32 9 
  store i16 %vecext, i16* %dst, align 1
  ret void
}
