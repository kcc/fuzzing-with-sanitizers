



define i32 @icmp_i16_signed(i16 %a, i16 %b) nounwind {
entry:








  %cmp = icmp slt i16 %a, %b
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

define i32 @icmp_i16_unsigned(i16 %a, i16 %b) nounwind {
entry:








  %cmp = icmp ult i16 %a, %b
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

define i32 @icmp_i8_signed(i8 %a, i8 %b) nounwind {
entry:








  %cmp = icmp sgt i8 %a, %b
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

define i32 @icmp_i8_unsigned(i8 %a, i8 %b) nounwind {
entry:








  %cmp = icmp ugt i8 %a, %b
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

define i32 @icmp_i1_unsigned(i1 %a, i1 %b) nounwind {
entry:








  %cmp = icmp ult i1 %a, %b
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}
