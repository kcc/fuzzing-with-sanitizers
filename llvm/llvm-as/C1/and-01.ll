




declare i32 @foo()


define i32 @f1(i32 %a, i32 %b) {



  %and = and i32 %a, %b
  ret i32 %and
}


define i32 @f2(i32 %a, i32 *%src) {



  %b = load i32 , i32 *%src
  %and = and i32 %a, %b
  ret i32 %and
}


define i32 @f3(i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 1023
  %b = load i32 , i32 *%ptr
  %and = and i32 %a, %b
  ret i32 %and
}


define i32 @f4(i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 1024
  %b = load i32 , i32 *%ptr
  %and = and i32 %a, %b
  ret i32 %and
}


define i32 @f5(i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 131071
  %b = load i32 , i32 *%ptr
  %and = and i32 %a, %b
  ret i32 %and
}



define i32 @f6(i32 %a, i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 131072
  %b = load i32 , i32 *%ptr
  %and = and i32 %a, %b
  ret i32 %and
}


define i32 @f7(i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -1
  %b = load i32 , i32 *%ptr
  %and = and i32 %a, %b
  ret i32 %and
}


define i32 @f8(i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -131072
  %b = load i32 , i32 *%ptr
  %and = and i32 %a, %b
  ret i32 %and
}



define i32 @f9(i32 %a, i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 -131073
  %b = load i32 , i32 *%ptr
  %and = and i32 %a, %b
  ret i32 %and
}


define i32 @f10(i32 %a, i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4092
  %ptr = inttoptr i64 %add2 to i32 *
  %b = load i32 , i32 *%ptr
  %and = and i32 %a, %b
  ret i32 %and
}


define i32 @f11(i32 %a, i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i32 *
  %b = load i32 , i32 *%ptr
  %and = and i32 %a, %b
  ret i32 %and
}


define i32 @f12(i32 *%ptr0) {




  %ptr1 = getelementptr i32, i32 *%ptr0, i64 2
  %ptr2 = getelementptr i32, i32 *%ptr0, i64 4
  %ptr3 = getelementptr i32, i32 *%ptr0, i64 6
  %ptr4 = getelementptr i32, i32 *%ptr0, i64 8
  %ptr5 = getelementptr i32, i32 *%ptr0, i64 10
  %ptr6 = getelementptr i32, i32 *%ptr0, i64 12
  %ptr7 = getelementptr i32, i32 *%ptr0, i64 14
  %ptr8 = getelementptr i32, i32 *%ptr0, i64 16
  %ptr9 = getelementptr i32, i32 *%ptr0, i64 18

  %val0 = load i32 , i32 *%ptr0
  %val1 = load i32 , i32 *%ptr1
  %val2 = load i32 , i32 *%ptr2
  %val3 = load i32 , i32 *%ptr3
  %val4 = load i32 , i32 *%ptr4
  %val5 = load i32 , i32 *%ptr5
  %val6 = load i32 , i32 *%ptr6
  %val7 = load i32 , i32 *%ptr7
  %val8 = load i32 , i32 *%ptr8
  %val9 = load i32 , i32 *%ptr9

  %ret = call i32 @foo()

  %and0 = and i32 %ret, %val0
  %and1 = and i32 %and0, %val1
  %and2 = and i32 %and1, %val2
  %and3 = and i32 %and2, %val3
  %and4 = and i32 %and3, %val4
  %and5 = and i32 %and4, %val5
  %and6 = and i32 %and5, %val6
  %and7 = and i32 %and6, %val7
  %and8 = and i32 %and7, %val8
  %and9 = and i32 %and8, %val9

  ret i32 %and9
}
