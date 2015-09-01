




declare i32 @foo()


define i32 @f1(i32 %a, i32 %b) {



  %or = or i32 %a, %b
  ret i32 %or
}


define i32 @f2(i32 %a, i32 *%src) {



  %b = load i32 , i32 *%src
  %or = or i32 %a, %b
  ret i32 %or
}


define i32 @f3(i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 1023
  %b = load i32 , i32 *%ptr
  %or = or i32 %a, %b
  ret i32 %or
}


define i32 @f4(i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 1024
  %b = load i32 , i32 *%ptr
  %or = or i32 %a, %b
  ret i32 %or
}


define i32 @f5(i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 131071
  %b = load i32 , i32 *%ptr
  %or = or i32 %a, %b
  ret i32 %or
}



define i32 @f6(i32 %a, i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 131072
  %b = load i32 , i32 *%ptr
  %or = or i32 %a, %b
  ret i32 %or
}


define i32 @f7(i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -1
  %b = load i32 , i32 *%ptr
  %or = or i32 %a, %b
  ret i32 %or
}


define i32 @f8(i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -131072
  %b = load i32 , i32 *%ptr
  %or = or i32 %a, %b
  ret i32 %or
}



define i32 @f9(i32 %a, i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 -131073
  %b = load i32 , i32 *%ptr
  %or = or i32 %a, %b
  ret i32 %or
}


define i32 @f10(i32 %a, i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4092
  %ptr = inttoptr i64 %add2 to i32 *
  %b = load i32 , i32 *%ptr
  %or = or i32 %a, %b
  ret i32 %or
}


define i32 @f11(i32 %a, i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 4096
  %ptr = inttoptr i64 %add2 to i32 *
  %b = load i32 , i32 *%ptr
  %or = or i32 %a, %b
  ret i32 %or
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

  %or0 = or i32 %ret, %val0
  %or1 = or i32 %or0, %val1
  %or2 = or i32 %or1, %val2
  %or3 = or i32 %or2, %val3
  %or4 = or i32 %or3, %val4
  %or5 = or i32 %or4, %val5
  %or6 = or i32 %or5, %val6
  %or7 = or i32 %or6, %val7
  %or8 = or i32 %or7, %val8
  %or9 = or i32 %or8, %val9

  ret i32 %or9
}
