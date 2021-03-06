



declare i64 @llvm.bswap.i64(i64 %a)


define i64 @f1(i64 *%src) {



  %a = load i64 , i64 *%src
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  ret i64 %swapped
}


define i64 @f2(i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 65535
  %a = load i64 , i64 *%ptr
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  ret i64 %swapped
}



define i64 @f3(i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 65536
  %a = load i64 , i64 *%ptr
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  ret i64 %swapped
}


define i64 @f4(i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -1
  %a = load i64 , i64 *%ptr
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  ret i64 %swapped
}


define i64 @f5(i64 *%src) {



  %ptr = getelementptr i64, i64 *%src, i64 -65536
  %a = load i64 , i64 *%ptr
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  ret i64 %swapped
}



define i64 @f6(i64 *%src) {




  %ptr = getelementptr i64, i64 *%src, i64 -65537
  %a = load i64 , i64 *%ptr
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  ret i64 %swapped
}


define i64 @f7(i64 %src, i64 %index) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i64 *
  %a = load i64 , i64 *%ptr
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  ret i64 %swapped
}



define i64 @f8(i64 *%src) {




  %a = load volatile i64 , i64 *%src
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  ret i64 %swapped
}



define void @f9(i64 *%ptr) {



  %val0 = load volatile i64 , i64 *%ptr
  %val1 = load volatile i64 , i64 *%ptr
  %val2 = load volatile i64 , i64 *%ptr
  %val3 = load volatile i64 , i64 *%ptr
  %val4 = load volatile i64 , i64 *%ptr
  %val5 = load volatile i64 , i64 *%ptr
  %val6 = load volatile i64 , i64 *%ptr
  %val7 = load volatile i64 , i64 *%ptr
  %val8 = load volatile i64 , i64 *%ptr
  %val9 = load volatile i64 , i64 *%ptr
  %val10 = load volatile i64 , i64 *%ptr
  %val11 = load volatile i64 , i64 *%ptr
  %val12 = load volatile i64 , i64 *%ptr
  %val13 = load volatile i64 , i64 *%ptr
  %val14 = load volatile i64 , i64 *%ptr
  %val15 = load volatile i64 , i64 *%ptr

  %swapped0 = call i64 @llvm.bswap.i64(i64 %val0)
  %swapped1 = call i64 @llvm.bswap.i64(i64 %val1)
  %swapped2 = call i64 @llvm.bswap.i64(i64 %val2)
  %swapped3 = call i64 @llvm.bswap.i64(i64 %val3)
  %swapped4 = call i64 @llvm.bswap.i64(i64 %val4)
  %swapped5 = call i64 @llvm.bswap.i64(i64 %val5)
  %swapped6 = call i64 @llvm.bswap.i64(i64 %val6)
  %swapped7 = call i64 @llvm.bswap.i64(i64 %val7)
  %swapped8 = call i64 @llvm.bswap.i64(i64 %val8)
  %swapped9 = call i64 @llvm.bswap.i64(i64 %val9)
  %swapped10 = call i64 @llvm.bswap.i64(i64 %val10)
  %swapped11 = call i64 @llvm.bswap.i64(i64 %val11)
  %swapped12 = call i64 @llvm.bswap.i64(i64 %val12)
  %swapped13 = call i64 @llvm.bswap.i64(i64 %val13)
  %swapped14 = call i64 @llvm.bswap.i64(i64 %val14)
  %swapped15 = call i64 @llvm.bswap.i64(i64 %val15)

  store volatile i64 %val0, i64 *%ptr
  store volatile i64 %val1, i64 *%ptr
  store volatile i64 %val2, i64 *%ptr
  store volatile i64 %val3, i64 *%ptr
  store volatile i64 %val4, i64 *%ptr
  store volatile i64 %val5, i64 *%ptr
  store volatile i64 %val6, i64 *%ptr
  store volatile i64 %val7, i64 *%ptr
  store volatile i64 %val8, i64 *%ptr
  store volatile i64 %val9, i64 *%ptr
  store volatile i64 %val10, i64 *%ptr
  store volatile i64 %val11, i64 *%ptr
  store volatile i64 %val12, i64 *%ptr
  store volatile i64 %val13, i64 *%ptr
  store volatile i64 %val14, i64 *%ptr
  store volatile i64 %val15, i64 *%ptr

  store volatile i64 %swapped0, i64 *%ptr
  store volatile i64 %swapped1, i64 *%ptr
  store volatile i64 %swapped2, i64 *%ptr
  store volatile i64 %swapped3, i64 *%ptr
  store volatile i64 %swapped4, i64 *%ptr
  store volatile i64 %swapped5, i64 *%ptr
  store volatile i64 %swapped6, i64 *%ptr
  store volatile i64 %swapped7, i64 *%ptr
  store volatile i64 %swapped8, i64 *%ptr
  store volatile i64 %swapped9, i64 *%ptr
  store volatile i64 %swapped10, i64 *%ptr
  store volatile i64 %swapped11, i64 *%ptr
  store volatile i64 %swapped12, i64 *%ptr
  store volatile i64 %swapped13, i64 *%ptr
  store volatile i64 %swapped14, i64 *%ptr
  store volatile i64 %swapped15, i64 *%ptr

  ret void
}
