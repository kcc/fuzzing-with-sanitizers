

define i32 @extend2bit_v2(i32 %val) {
entry:
  %0 = trunc i32 %val to i2                       
  %1 = sext i2 %0 to i32                          
  %2 = icmp eq i32 %1, 3                          
  %3 = zext i1 %2 to i32                          
  ret i32 %3
}




