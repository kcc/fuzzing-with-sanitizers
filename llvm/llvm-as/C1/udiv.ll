


























define zeroext i1 @udiv_i1(i1 zeroext %a, i1 zeroext %b) {
entry:


  
  
  

  
  

  %r = udiv i1 %a, %b
  ret i1 %r
}

define zeroext i8 @udiv_i8(i8 zeroext %a, i8 zeroext %b) {
entry:


  
  
  

  
  

  %r = udiv i8 %a, %b
  ret i8 %r
}

define zeroext i16 @udiv_i16(i16 zeroext %a, i16 zeroext %b) {
entry:


  
  
  

  
  

  %r = udiv i16 %a, %b
  ret i16 %r
}

define signext i32 @udiv_i32(i32 signext %a, i32 signext %b) {
entry:


  
  
  

  
  

  %r = udiv i32 %a, %b
  ret i32 %r
}

define signext i64 @udiv_i64(i64 signext %a, i64 signext %b) {
entry:


  

  
  
  

  
  

  %r = udiv i64 %a, %b
  ret i64 %r
}

define signext i128 @udiv_i128(i128 signext %a, i128 signext %b) {
entry:


  

  
  

  %r = udiv i128 %a, %b
  ret i128 %r
}
