





define i64 @MACLongTest1(i32 %a, i32 %b, i64 %c) {


  %conv = zext i32 %a to i64
  %conv1 = zext i32 %b to i64
  %mul = mul i64 %conv1, %conv
  %add = add i64 %mul, %c
  ret i64 %add
}

define i64 @MACLongTest2(i32 %a, i32 %b, i64 %c)  {


  %conv = sext i32 %a to i64
  %conv1 = sext i32 %b to i64
  %mul = mul nsw i64 %conv1, %conv
  %add = add nsw i64 %mul, %c
  ret i64 %add
}

define i64 @MACLongTest3(i32 %a, i32 %b, i32 %c) {


  %conv = zext i32 %b to i64
  %conv1 = zext i32 %a to i64
  %mul = mul i64 %conv, %conv1
  %conv2 = zext i32 %c to i64
  %add = add i64 %mul, %conv2
  ret i64 %add
}

define i64 @MACLongTest4(i32 %a, i32 %b, i32 %c) {


  %conv = sext i32 %b to i64
  %conv1 = sext i32 %a to i64
  %mul = mul nsw i64 %conv, %conv1
  %conv2 = sext i32 %c to i64
  %add = add nsw i64 %mul, %conv2
  ret i64 %add
}









define i64 @MACLongTest5(i64 %c, i32 %a, i32 %b) {













  %conv.trunc = trunc i64 %c to i32
  %conv = zext i32 %conv.trunc to i64
  %conv1 = zext i32 %b to i64
  %mul = mul i64 %conv, %conv
  %add = add i64 %mul, %c
  ret i64 %add
}

define i64 @MACLongTest6(i32 %a, i32 %b, i32 %c, i32 %d) {



  %conv = sext i32 %a to i64
  %conv1 = sext i32 %b to i64
  %mul = mul nsw i64 %conv1, %conv
  %conv2 = sext i32 %c to i64
  %conv3 = sext i32 %d to i64
  %mul4 = mul nsw i64 %conv3, %conv2
  %add = add nsw i64 %mul4, %mul
  ret i64 %add
}

define i64 @MACLongTest7(i64 %acc, i32 %lhs, i32 %rhs) {


  %conv = sext i32 %lhs to i64
  %conv1 = sext i32 %rhs to i64
  %mul = mul nsw i64 %conv1, %conv
  %shl = shl i64 %mul, 32
  %shr = lshr i64 %mul, 32
  %or = or i64 %shl, %shr
  %add = add i64 %or, %acc
  ret i64 %add
}

define i64 @MACLongTest8(i64 %acc, i32 %lhs, i32 %rhs) {


  %conv = zext i32 %lhs to i64
  %conv1 = zext i32 %rhs to i64
  %mul = mul nuw i64 %conv1, %conv
  %and = and i64 %mul, 4294967295
  %shl = shl i64 %mul, 32
  %or = or i64 %and, %shl
  %add = add i64 %or, %acc
  ret i64 %add
}

