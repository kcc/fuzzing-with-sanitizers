


























define signext i1 @xor_i1(i1 signext %a, i1 signext %b) {
entry:


  

  %r = xor i1 %a, %b
  ret i1 %r
}

define signext i8 @xor_i8(i8 signext %a, i8 signext %b) {
entry:


  

  %r = xor i8 %a, %b
  ret i8 %r
}

define signext i16 @xor_i16(i16 signext %a, i16 signext %b) {
entry:


  

  %r = xor i16 %a, %b
  ret i16 %r
}

define signext i32 @xor_i32(i32 signext %a, i32 signext %b) {
entry:


  

  
  

  %r = xor i32 %a, %b
  ret i32 %r
}

define signext i64 @xor_i64(i64 signext %a, i64 signext %b) {
entry:


  
  

  

  %r = xor i64 %a, %b
  ret i64 %r
}

define signext i128 @xor_i128(i128 signext %a, i128 signext %b) {
entry:


  
  
  
  
  
  
  
  

  
  

  %r = xor i128 %a, %b
  ret i128 %r
}
