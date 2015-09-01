





define i32 @f1(i32 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i32
  %ptr1 = and i32 %orig, -256
  %or = or i32 %ptr1, %ptr2
  ret i32 %or
}


define i32 @f2(i32 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i32
  %ptr1 = and i32 %orig, -256
  %or = or i32 %ptr2, %ptr1
  ret i32 %or
}



define i32 @f3(i32 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i32
  %ptr1 = and i32 %orig, -512
  %or = or i32 %ptr1, %ptr2
  ret i32 %or
}


define i32 @f4(i32 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i32
  %ptr1 = and i32 %orig, -512
  %or = or i32 %ptr2, %ptr1
  ret i32 %or
}


define i32 @f5(i32 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i32
  %ptr1 = shl i32 %orig, 8
  %or = or i32 %ptr1, %ptr2
  ret i32 %or
}


define i32 @f6(i32 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i32
  %ptr1 = shl i32 %orig, 8
  %or = or i32 %ptr2, %ptr1
  ret i32 %or
}


define i32 @f7(i32 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i32
  %or = or i32 %ptr2, 256
  ret i32 %or
}


define i32 @f8(i32 %orig, i8 *%ptr) {




  %val = load i8 , i8 *%ptr
  %ptr2 = zext i8 %val to i32
  %or = or i32 256, %ptr2
  ret i32 %or
}


define i32 @f9(i32 %orig, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 4095
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i32
  %src1 = and i32 %orig, -256
  %or = or i32 %src2, %src1
  ret i32 %or
}


define i32 @f10(i32 %orig, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 4096
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i32
  %src1 = and i32 %orig, -256
  %or = or i32 %src2, %src1
  ret i32 %or
}


define i32 @f11(i32 %orig, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 524287
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i32
  %src1 = and i32 %orig, -256
  %or = or i32 %src2, %src1
  ret i32 %or
}



define i32 @f12(i32 %orig, i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 524288
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i32
  %src1 = and i32 %orig, -256
  %or = or i32 %src2, %src1
  ret i32 %or
}


define i32 @f13(i32 %orig, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -1
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i32
  %src1 = and i32 %orig, -256
  %or = or i32 %src2, %src1
  ret i32 %or
}


define i32 @f14(i32 %orig, i8 *%src) {



  %ptr = getelementptr i8, i8 *%src, i64 -524288
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i32
  %src1 = and i32 %orig, -256
  %or = or i32 %src2, %src1
  ret i32 %or
}



define i32 @f15(i32 %orig, i8 *%src) {




  %ptr = getelementptr i8, i8 *%src, i64 -524289
  %val = load i8 , i8 *%ptr
  %src2 = zext i8 %val to i32
  %src1 = and i32 %orig, -256
  %or = or i32 %src2, %src1
  ret i32 %or
}


define i32 @f16(i32 %orig, i8 *%src, i64 %index) {



  %ptr1 = getelementptr i8, i8 *%src, i64 %index
  %ptr2 = getelementptr i8, i8 *%ptr1, i64 4095
  %val = load i8 , i8 *%ptr2
  %src2 = zext i8 %val to i32
  %src1 = and i32 %orig, -256
  %or = or i32 %src2, %src1
  ret i32 %or
}


define i32 @f17(i32 %orig, i8 *%src, i64 %index) {



  %ptr1 = getelementptr i8, i8 *%src, i64 %index
  %ptr2 = getelementptr i8, i8 *%ptr1, i64 4096
  %val = load i8 , i8 *%ptr2
  %src2 = zext i8 %val to i32
  %src1 = and i32 %orig, -256
  %or = or i32 %src2, %src1
  ret i32 %or
}
