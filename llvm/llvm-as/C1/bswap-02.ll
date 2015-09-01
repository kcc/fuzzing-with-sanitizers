



declare i32 @llvm.bswap.i32(i32 %a)


define i32 @f1(i32 *%src) {



  %a = load i32 , i32 *%src
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  ret i32 %swapped
}


define i32 @f2(i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 131071
  %a = load i32 , i32 *%ptr
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  ret i32 %swapped
}



define i32 @f3(i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 131072
  %a = load i32 , i32 *%ptr
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  ret i32 %swapped
}


define i32 @f4(i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -1
  %a = load i32 , i32 *%ptr
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  ret i32 %swapped
}


define i32 @f5(i32 *%src) {



  %ptr = getelementptr i32, i32 *%src, i64 -131072
  %a = load i32 , i32 *%ptr
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  ret i32 %swapped
}



define i32 @f6(i32 *%src) {




  %ptr = getelementptr i32, i32 *%src, i64 -131073
  %a = load i32 , i32 *%ptr
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  ret i32 %swapped
}


define i32 @f7(i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i32 *
  %a = load i32 , i32 *%ptr
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  ret i32 %swapped
}



define i32 @f8(i32 *%src) {




  %a = load volatile i32 , i32 *%src
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  ret i32 %swapped
}



define void @f9(i32 *%ptr) {



  %val0 = load volatile i32 , i32 *%ptr
  %val1 = load volatile i32 , i32 *%ptr
  %val2 = load volatile i32 , i32 *%ptr
  %val3 = load volatile i32 , i32 *%ptr
  %val4 = load volatile i32 , i32 *%ptr
  %val5 = load volatile i32 , i32 *%ptr
  %val6 = load volatile i32 , i32 *%ptr
  %val7 = load volatile i32 , i32 *%ptr
  %val8 = load volatile i32 , i32 *%ptr
  %val9 = load volatile i32 , i32 *%ptr
  %val10 = load volatile i32 , i32 *%ptr
  %val11 = load volatile i32 , i32 *%ptr
  %val12 = load volatile i32 , i32 *%ptr
  %val13 = load volatile i32 , i32 *%ptr
  %val14 = load volatile i32 , i32 *%ptr
  %val15 = load volatile i32 , i32 *%ptr

  %swapped0 = call i32 @llvm.bswap.i32(i32 %val0)
  %swapped1 = call i32 @llvm.bswap.i32(i32 %val1)
  %swapped2 = call i32 @llvm.bswap.i32(i32 %val2)
  %swapped3 = call i32 @llvm.bswap.i32(i32 %val3)
  %swapped4 = call i32 @llvm.bswap.i32(i32 %val4)
  %swapped5 = call i32 @llvm.bswap.i32(i32 %val5)
  %swapped6 = call i32 @llvm.bswap.i32(i32 %val6)
  %swapped7 = call i32 @llvm.bswap.i32(i32 %val7)
  %swapped8 = call i32 @llvm.bswap.i32(i32 %val8)
  %swapped9 = call i32 @llvm.bswap.i32(i32 %val9)
  %swapped10 = call i32 @llvm.bswap.i32(i32 %val10)
  %swapped11 = call i32 @llvm.bswap.i32(i32 %val11)
  %swapped12 = call i32 @llvm.bswap.i32(i32 %val12)
  %swapped13 = call i32 @llvm.bswap.i32(i32 %val13)
  %swapped14 = call i32 @llvm.bswap.i32(i32 %val14)
  %swapped15 = call i32 @llvm.bswap.i32(i32 %val15)

  store volatile i32 %val0, i32 *%ptr
  store volatile i32 %val1, i32 *%ptr
  store volatile i32 %val2, i32 *%ptr
  store volatile i32 %val3, i32 *%ptr
  store volatile i32 %val4, i32 *%ptr
  store volatile i32 %val5, i32 *%ptr
  store volatile i32 %val6, i32 *%ptr
  store volatile i32 %val7, i32 *%ptr
  store volatile i32 %val8, i32 *%ptr
  store volatile i32 %val9, i32 *%ptr
  store volatile i32 %val10, i32 *%ptr
  store volatile i32 %val11, i32 *%ptr
  store volatile i32 %val12, i32 *%ptr
  store volatile i32 %val13, i32 *%ptr
  store volatile i32 %val14, i32 *%ptr
  store volatile i32 %val15, i32 *%ptr

  store volatile i32 %swapped0, i32 *%ptr
  store volatile i32 %swapped1, i32 *%ptr
  store volatile i32 %swapped2, i32 *%ptr
  store volatile i32 %swapped3, i32 *%ptr
  store volatile i32 %swapped4, i32 *%ptr
  store volatile i32 %swapped5, i32 *%ptr
  store volatile i32 %swapped6, i32 *%ptr
  store volatile i32 %swapped7, i32 *%ptr
  store volatile i32 %swapped8, i32 *%ptr
  store volatile i32 %swapped9, i32 *%ptr
  store volatile i32 %swapped10, i32 *%ptr
  store volatile i32 %swapped11, i32 *%ptr
  store volatile i32 %swapped12, i32 *%ptr
  store volatile i32 %swapped13, i32 *%ptr
  store volatile i32 %swapped14, i32 *%ptr
  store volatile i32 %swapped15, i32 *%ptr

  ret void
}
