





define i64 @f1(i64 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i64
  %ptr1 = and i64 %orig, -256
  %or = or i64 %ptr1, %ptr2
  ret i64 %or
}


define i64 @f2(i64 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i64
  %ptr1 = and i64 %orig, -256
  %or = or i64 %ptr2, %ptr1
  ret i64 %or
}



define i64 @f3(i64 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i64
  %ptr1 = and i64 %orig, -512
  %or = or i64 %ptr1, %ptr2
  ret i64 %or
}


define i64 @f4(i64 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i64
  %ptr1 = and i64 %orig, -512
  %or = or i64 %ptr2, %ptr1
  ret i64 %or
}


define i64 @f5(i64 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i64
  %ptr1 = shl i64 %orig, 8
  %or = or i64 %ptr1, %ptr2
  ret i64 %or
}


define i64 @f6(i64 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i64
  %ptr1 = shl i64 %orig, 8
  %or = or i64 %ptr2, %ptr1
  ret i64 %or
}


define i64 @f7(i64 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i64
  %or = or i64 %ptr2, 256
  ret i64 %or
}


define i64 @f8(i64 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i64
  %or = or i64 256, %ptr2
  ret i64 %or
}


define i64 @f9(i64 %orig, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 4095
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i64
  %src1 = and i64 %orig, -256
  %or = or i64 %src2, %src1
  ret i64 %or
}


define i64 @f10(i64 %orig, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 4096
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i64
  %src1 = and i64 %orig, -256
  %or = or i64 %src2, %src1
  ret i64 %or
}


define i64 @f11(i64 %orig, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 524287
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i64
  %src1 = and i64 %orig, -256
  %or = or i64 %src2, %src1
  ret i64 %or
}



define i64 @f12(i64 %orig, i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 524288
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i64
  %src1 = and i64 %orig, -256
  %or = or i64 %src2, %src1
  ret i64 %or
}


define i64 @f13(i64 %orig, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -1
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i64
  %src1 = and i64 %orig, -256
  %or = or i64 %src2, %src1
  ret i64 %or
}


define i64 @f14(i64 %orig, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -524288
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i64
  %src1 = and i64 %orig, -256
  %or = or i64 %src2, %src1
  ret i64 %or
}



define i64 @f15(i64 %orig, i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 -524289
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i64
  %src1 = and i64 %orig, -256
  %or = or i64 %src2, %src1
  ret i64 %or
}


define i64 @f16(i64 %orig, i8 *%src, i64 %index) {



  %ptr1 = getelementptr i8, i8 *%src, i64 %index
  %ptr2 = getelementptr i8, i8 *%ptr1, i64 4095
  %val = load i8 , i8 *%ptr2
  %src2 = zext i8 %val to i64
  %src1 = and i64 %orig, -256
  %or = or i64 %src2, %src1
  ret i64 %or
}


define i64 @f17(i64 %orig, i8 *%src, i64 %index) {



  %ptr1 = getelementptr i8, i8 *%src, i64 %index
  %ptr2 = getelementptr i8, i8 *%ptr1, i64 4096
  %val = load i8 , i8 *%ptr2
  %src2 = zext i8 %val to i64
  %src1 = and i64 %orig, -256
  %or = or i64 %src2, %src1
  ret i64 %or
}
