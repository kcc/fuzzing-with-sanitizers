



declare i32 @foo()


define void @f1(i32 %dummy, i32 %a, i32 %b, i32 *%dest) {







  %div = udiv i32 %a, %b
  store i32 %div, i32 *%dest
  ret void
}


define void @f2(i32 %dummy, i32 %a, i32 %b, i32 *%dest) {







  %rem = urem i32 %a, %b
  store i32 %rem, i32 *%dest
  ret void
}


define i32 @f3(i32 %dummy1, i32 %a, i32 %b) {








  %div = udiv i32 %a, %b
  %rem = urem i32 %a, %b
  %or = or i32 %rem, %div
  ret i32 %or
}


define void @f4(i32 %dummy, i32 %a, i32 *%src, i32 *%dest) {







  %b = load i32 , i32 *%src
  %div = udiv i32 %a, %b
  store i32 %div, i32 *%dest
  ret void
}


define void @f5(i32 %dummy, i32 %a, i32 *%src, i32 *%dest) {







  %b = load i32 , i32 *%src
  %rem = urem i32 %a, %b
  store i32 %rem, i32 *%dest
  ret void
}


define i32 @f6(i32 %dummy, i32 %a, i32 *%src) {








  %b = load i32 , i32 *%src
  %div = udiv i32 %a, %b
  %rem = urem i32 %a, %b
  %or = or i32 %rem, %div
  ret i32 %or
}


define i32 @f7(i32 %dummy, i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 131071
  %b = load i32 , i32 *%ptr
  %rem = urem i32 %a, %b
  ret i32 %rem
}



define i32 @f8(i32 %dummy, i32 %a, i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 131072
  %b = load i32 , i32 *%ptr
  %rem = urem i32 %a, %b
  ret i32 %rem
}


define i32 @f9(i32 %dummy, i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -1
  %b = load i32 , i32 *%ptr
  %rem = urem i32 %a, %b
  ret i32 %rem
}


define i32 @f10(i32 %dummy, i32 %a, i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -131072
  %b = load i32 , i32 *%ptr
  %rem = urem i32 %a, %b
  ret i32 %rem
}



define i32 @f11(i32 %dummy, i32 %a, i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 -131073
  %b = load i32 , i32 *%ptr
  %rem = urem i32 %a, %b
  ret i32 %rem
}


define i32 @f12(i32 %dummy, i32 %a, i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i32 *
  %b = load i32 , i32 *%ptr
  %rem = urem i32 %a, %b
  ret i32 %rem
}


define i32 @f13(i32 *%ptr0) {




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

  %div0 = udiv i32 %ret, %val0
  %div1 = udiv i32 %div0, %val1
  %div2 = udiv i32 %div1, %val2
  %div3 = udiv i32 %div2, %val3
  %div4 = udiv i32 %div3, %val4
  %div5 = udiv i32 %div4, %val5
  %div6 = udiv i32 %div5, %val6
  %div7 = udiv i32 %div6, %val7
  %div8 = udiv i32 %div7, %val8
  %div9 = udiv i32 %div8, %val9

  ret i32 %div9
}
