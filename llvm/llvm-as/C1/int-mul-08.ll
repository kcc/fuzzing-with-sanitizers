



declare i64 @foo()


define i64 @f1(i64 %dummy, i64 %a, i64 %b) {




  %ax = zext i64 %a to i128
  %bx = zext i64 %b to i128
  %mulx = mul i128 %ax, %bx
  %highx = lshr i128 %mulx, 64
  %high = trunc i128 %highx to i64
  ret i64 %high
}



define i64 @f2(i64 %dummy, i64 %a, i64 %b) {









  %ax = sext i64 %a to i128
  %bx = sext i64 %b to i128
  %mulx = mul i128 %ax, %bx
  %highx = lshr i128 %mulx, 64
  %high = trunc i128 %highx to i64
  ret i64 %high
}



define i64 @f3(i64 %dummy, i64 %a, i64 %b) {





  %ax = zext i64 %a to i128
  %bx = zext i64 %b to i128
  %mulx = mul i128 %ax, %bx
  %highx = lshr i128 %mulx, 67
  %high = trunc i128 %highx to i64
  ret i64 %high
}



define i64 @f4(i64 %dummy, i64 %a, i64 %b) {





  %ax = zext i64 %a to i128
  %bx = zext i64 %b to i128
  %mulx = mul i128 %ax, %bx
  %highx = lshr i128 %mulx, 64
  %high = trunc i128 %highx to i64
  %low = trunc i128 %mulx to i64
  %or = or i64 %high, %low
  ret i64 %or
}


define i64 @f5(i64 %dummy, i64 %a) {




  %res = udiv i64 %a, 1234
  ret i64 %res
}


define i64 @f6(i64 %dummy, i64 %a, i64 *%src) {




  %b = load i64 , i64 *%src
  %ax = zext i64 %a to i128
  %bx = zext i64 %b to i128
  %mulx = mul i128 %ax, %bx
  %highx = lshr i128 %mulx, 64
  %high = trunc i128 %highx to i64
  ret i64 %high
}


define i64 @f7(i64 %dummy, i64 %a, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 65535
  %b = load i64 , i64 *%ptr
  %ax = zext i64 %a to i128
  %bx = zext i64 %b to i128
  %mulx = mul i128 %ax, %bx
  %highx = lshr i128 %mulx, 64
  %high = trunc i128 %highx to i64
  ret i64 %high
}



define i64 @f8(i64 %dummy, i64 %a, i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 65536
  %b = load i64 , i64 *%ptr
  %ax = zext i64 %a to i128
  %bx = zext i64 %b to i128
  %mulx = mul i128 %ax, %bx
  %highx = lshr i128 %mulx, 64
  %high = trunc i128 %highx to i64
  ret i64 %high
}


define i64 @f9(i64 %dummy, i64 %a, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -1
  %b = load i64 , i64 *%ptr
  %ax = zext i64 %a to i128
  %bx = zext i64 %b to i128
  %mulx = mul i128 %ax, %bx
  %highx = lshr i128 %mulx, 64
  %high = trunc i128 %highx to i64
  ret i64 %high
}


define i64 @f10(i64 %dummy, i64 %a, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -65536
  %b = load i64 , i64 *%ptr
  %ax = zext i64 %a to i128
  %bx = zext i64 %b to i128
  %mulx = mul i128 %ax, %bx
  %highx = lshr i128 %mulx, 64
  %high = trunc i128 %highx to i64
  ret i64 %high
}



define i64 @f11(i64 *%dest, i64 %a, i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 -65537
  %b = load i64 , i64 *%ptr
  %ax = zext i64 %a to i128
  %bx = zext i64 %b to i128
  %mulx = mul i128 %ax, %bx
  %highx = lshr i128 %mulx, 64
  %high = trunc i128 %highx to i64
  ret i64 %high
}


define i64 @f12(i64 *%dest, i64 %a, i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i64 *
  %b = load i64 , i64 *%ptr
  %ax = zext i64 %a to i128
  %bx = zext i64 %b to i128
  %mulx = mul i128 %ax, %bx
  %highx = lshr i128 %mulx, 64
  %high = trunc i128 %highx to i64
  ret i64 %high
}


define i64 @f13(i64 *%ptr0) {




  %ptr1 = getelementptr i64, i64 *%ptr0, i64 2
  %ptr2 = getelementptr i64, i64 *%ptr0, i64 4
  %ptr3 = getelementptr i64, i64 *%ptr0, i64 6
  %ptr4 = getelementptr i64, i64 *%ptr0, i64 8
  %ptr5 = getelementptr i64, i64 *%ptr0, i64 10
  %ptr6 = getelementptr i64, i64 *%ptr0, i64 12
  %ptr7 = getelementptr i64, i64 *%ptr0, i64 14
  %ptr8 = getelementptr i64, i64 *%ptr0, i64 16
  %ptr9 = getelementptr i64, i64 *%ptr0, i64 18

  %val0 = load i64 , i64 *%ptr0
  %val1 = load i64 , i64 *%ptr1
  %val2 = load i64 , i64 *%ptr2
  %val3 = load i64 , i64 *%ptr3
  %val4 = load i64 , i64 *%ptr4
  %val5 = load i64 , i64 *%ptr5
  %val6 = load i64 , i64 *%ptr6
  %val7 = load i64 , i64 *%ptr7
  %val8 = load i64 , i64 *%ptr8
  %val9 = load i64 , i64 *%ptr9

  %ret = call i64 @foo()

  %retx = zext i64 %ret to i128
  %val0x = zext i64 %val0 to i128
  %mul0d = mul i128 %retx, %val0x
  %mul0x = lshr i128 %mul0d, 64

  %val1x = zext i64 %val1 to i128
  %mul1d = mul i128 %mul0x, %val1x
  %mul1x = lshr i128 %mul1d, 64

  %val2x = zext i64 %val2 to i128
  %mul2d = mul i128 %mul1x, %val2x
  %mul2x = lshr i128 %mul2d, 64

  %val3x = zext i64 %val3 to i128
  %mul3d = mul i128 %mul2x, %val3x
  %mul3x = lshr i128 %mul3d, 64

  %val4x = zext i64 %val4 to i128
  %mul4d = mul i128 %mul3x, %val4x
  %mul4x = lshr i128 %mul4d, 64

  %val5x = zext i64 %val5 to i128
  %mul5d = mul i128 %mul4x, %val5x
  %mul5x = lshr i128 %mul5d, 64

  %val6x = zext i64 %val6 to i128
  %mul6d = mul i128 %mul5x, %val6x
  %mul6x = lshr i128 %mul6d, 64

  %val7x = zext i64 %val7 to i128
  %mul7d = mul i128 %mul6x, %val7x
  %mul7x = lshr i128 %mul7d, 64

  %val8x = zext i64 %val8 to i128
  %mul8d = mul i128 %mul7x, %val8x
  %mul8x = lshr i128 %mul8d, 64

  %val9x = zext i64 %val9 to i128
  %mul9d = mul i128 %mul8x, %val9x
  %mul9x = lshr i128 %mul9d, 64

  %mul9 = trunc i128 %mul9x to i64
  ret i64 %mul9
}
