



declare i64 @foo()


define void @f1(i64 %dummy, i64 %a, i64 %b, i64 *%dest) {





  %div = sdiv i64 %a, %b
  store i64 %div, i64 *%dest
  ret void
}


define void @f2(i64 %dummy, i64 %a, i64 %b, i64 *%dest) {





  %rem = srem i64 %a, %b
  store i64 %rem, i64 *%dest
  ret void
}


define i64 @f3(i64 %dummy1, i64 %a, i64 %b) {






  %div = sdiv i64 %a, %b
  %rem = srem i64 %a, %b
  %or = or i64 %rem, %div
  ret i64 %or
}


define void @f4(i64 %dummy, i64 %a, i64 *%src, i64 *%dest) {





  %b = load i64 , i64 *%src
  %div = sdiv i64 %a, %b
  store i64 %div, i64 *%dest
  ret void
}


define void @f5(i64 %dummy, i64 %a, i64 *%src, i64 *%dest) {





  %b = load i64 , i64 *%src
  %rem = srem i64 %a, %b
  store i64 %rem, i64 *%dest
  ret void
}


define i64 @f6(i64 %dummy, i64 %a, i64 *%src) {






  %b = load i64 , i64 *%src
  %div = sdiv i64 %a, %b
  %rem = srem i64 %a, %b
  %or = or i64 %rem, %div
  ret i64 %or
}


define i64 @f7(i64 %dummy, i64 %a, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 65535
  %b = load i64 , i64 *%ptr
  %rem = srem i64 %a, %b
  ret i64 %rem
}



define i64 @f8(i64 %dummy, i64 %a, i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 65536
  %b = load i64 , i64 *%ptr
  %rem = srem i64 %a, %b
  ret i64 %rem
}


define i64 @f9(i64 %dummy, i64 %a, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -1
  %b = load i64 , i64 *%ptr
  %rem = srem i64 %a, %b
  ret i64 %rem
}


define i64 @f10(i64 %dummy, i64 %a, i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -65536
  %b = load i64 , i64 *%ptr
  %rem = srem i64 %a, %b
  ret i64 %rem
}



define i64 @f11(i64 %dummy, i64 %a, i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 -65537
  %b = load i64 , i64 *%ptr
  %rem = srem i64 %a, %b
  ret i64 %rem
}


define i64 @f12(i64 %dummy, i64 %a, i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i64 *
  %b = load i64 , i64 *%ptr
  %rem = srem i64 %a, %b
  ret i64 %rem
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
  %ptr10 = getelementptr i64, i64 *%ptr0, i64 20

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
  %val10 = load i64 , i64 *%ptr10

  %ret = call i64 @foo()

  %div0 = sdiv i64 %ret, %val0
  %div1 = sdiv i64 %div0, %val1
  %div2 = sdiv i64 %div1, %val2
  %div3 = sdiv i64 %div2, %val3
  %div4 = sdiv i64 %div3, %val4
  %div5 = sdiv i64 %div4, %val5
  %div6 = sdiv i64 %div5, %val6
  %div7 = sdiv i64 %div6, %val7
  %div8 = sdiv i64 %div7, %val8
  %div9 = sdiv i64 %div8, %val9
  %div10 = sdiv i64 %div9, %val10

  ret i64 %div10
}
