




define i64 @mod128(i128 %x) {
  
  
  
  

  
  
  
  
  
  
  
  
  
  

  %1 = srem i128 %x, 3
  %2 = trunc i128 %1 to i64
  ret i64 %2
}
