


























define signext i1 @add_i1(i1 signext %a, i1 signext %b) {
entry:


  
  
  

  %r = add i1 %a, %b
  ret i1 %r
}

define signext i8 @add_i8(i8 signext %a, i8 signext %b) {
entry:


  
  
  

  
  

  %r = add i8 %a, %b
  ret i8 %r
}

define signext i16 @add_i16(i16 signext %a, i16 signext %b) {
entry:


  
  
  

  
  

  %r = add i16 %a, %b
  ret i16 %r
}

define signext i32 @add_i32(i32 signext %a, i32 signext %b) {
entry:


  

  %r = add i32 %a, %b
  ret i32 %r
}

define signext i64 @add_i64(i64 signext %a, i64 signext %b) {
entry:


  
  
  
  

  

  %r = add i64 %a, %b
  ret i64 %r
}

define signext i128 @add_i128(i128 signext %a, i128 signext %b) {
entry:


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
  

  %r = add i128 %a, %b
  ret i128 %r
}
