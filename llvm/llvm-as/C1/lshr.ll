







































define signext i1 @lshr_i1(i1 signext %a, i1 signext %b) {
entry:


  

  %r = lshr i1 %a, %b
  ret i1 %r
}

define zeroext i8 @lshr_i8(i8 zeroext %a, i8 zeroext %b) {
entry:


  
  

  %r = lshr i8 %a, %b
  ret i8 %r
}

define zeroext i16 @lshr_i16(i16 zeroext %a, i16 zeroext %b) {
entry:


  
  

  %r = lshr i16 %a, %b
  ret i16 %r
}

define signext i32 @lshr_i32(i32 signext %a, i32 signext %b) {
entry:


  

  %r = lshr i32 %a, %b
  ret i32 %r
}

define signext i64 @lshr_i64(i64 signext %a, i64 signext %b) {
entry:


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
  
  
  
  
  
  

  

  %r = lshr i64 %a, %b
  ret i64 %r
}

define signext i128 @lshr_i128(i128 signext %a, i128 signext %b) {
entry:


  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  

  %r = lshr i128 %a, %b
  ret i128 %r
}
