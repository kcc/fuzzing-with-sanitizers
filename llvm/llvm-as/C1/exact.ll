



define i32 @sdiv1(i32 %x) {
  %y = sdiv i32 %x, 8
  ret i32 %y
}



define i32 @sdiv2(i32 %x) {
  %y = sdiv exact i32 %x, 8
  ret i32 %y
}





define i32 @sdiv3(i32 %x) {
  %y = sdiv i32 %x, 3
  %z = mul i32 %y, 3
  ret i32 %z
}



define i32 @sdiv4(i32 %x) {
  %y = sdiv exact i32 %x, 3
  %z = mul i32 %y, 3
  ret i32 %z
}





define i32 @sdiv5(i32 %x) {
  %y = sdiv i32 %x, 3
  %z = mul i32 %y, -3
  ret i32 %z
}




define i32 @sdiv6(i32 %x) {
  %y = sdiv exact i32 %x, 3
  %z = mul i32 %y, -3
  ret i32 %z
}



define i32 @udiv1(i32 %x, i32 %w) {
  %y = udiv exact i32 %x, %w
  %z = mul i32 %y, %w
  ret i32 %z
}




define i32 @udiv2(i32 %x, i32 %w) {
  %y = shl i32 1, %w
  %z = udiv exact i32 %x, %y
  ret i32 %z
}




define i64 @ashr1(i64 %X) nounwind {
  %A = shl i64 %X, 8
  %B = ashr i64 %A, 2   
  ret i64 %B
}





define i1 @ashr_icmp1(i64 %X) nounwind {
  %A = ashr exact i64 %X, 2   
  %B = icmp eq i64 %A, 0
  ret i1 %B
}




define i1 @ashr_icmp2(i64 %X) nounwind {
 %Y = ashr exact i64 %X, 2  
 %Z = icmp slt i64 %Y, 4    
 ret i1 %Z
}







define i1 @pr9998(i32 %V) nounwind {
entry:
  %W = shl i32 %V, 31
  %X = ashr exact i32 %W, 31
  %Y = sext i32 %X to i64
  %Z = icmp ugt i64 %Y, 7297771788697658747
  ret i1 %Z
}





define i1 @udiv_icmp1(i64 %X) nounwind {
  %A = udiv exact i64 %X, 5   
  %B = icmp ne i64 %A, 0
  ret i1 %B
}



define i1 @sdiv_icmp1(i64 %X) nounwind {
  %A = sdiv exact i64 %X, 5   
  %B = icmp eq i64 %A, 0
  ret i1 %B
}



define i1 @sdiv_icmp2(i64 %X) nounwind {
  %A = sdiv exact i64 %X, 5   
  %B = icmp eq i64 %A, 1
  ret i1 %B
}



define i1 @sdiv_icmp3(i64 %X) nounwind {
  %A = sdiv exact i64 %X, 5   
  %B = icmp eq i64 %A, -1
  ret i1 %B
}



define i1 @sdiv_icmp4(i64 %X) nounwind {
  %A = sdiv exact i64 %X, -5   
  %B = icmp eq i64 %A, 0
  ret i1 %B
}



define i1 @sdiv_icmp5(i64 %X) nounwind {
  %A = sdiv exact i64 %X, -5   
  %B = icmp eq i64 %A, 1
  ret i1 %B
}



define i1 @sdiv_icmp6(i64 %X) nounwind {
  %A = sdiv exact i64 %X, -5   
  %B = icmp eq i64 %A, -1
  ret i1 %B
}

