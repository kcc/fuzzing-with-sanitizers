



declare i64 @llvm.bswap.i64(i64 %a)


define void @f1(i64 *%dst, i64 %a) {



  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  store i64 %swapped, i64 *%dst
  ret void
}


define void @f2(i64 *%dst, i64 %a) {



  %ptr = getelementptr i64, i64 *%dst, i64 65535
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  store i64 %swapped, i64 *%ptr
  ret void
}



define void @f3(i64 *%dst, i64 %a) {




  %ptr = getelementptr i64, i64 *%dst, i64 65536
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  store i64 %swapped, i64 *%ptr
  ret void
}


define void @f4(i64 *%dst, i64 %a) {



  %ptr = getelementptr i64, i64 *%dst, i64 -1
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  store i64 %swapped, i64 *%ptr
  ret void
}


define void @f5(i64 *%dst, i64 %a) {



  %ptr = getelementptr i64, i64 *%dst, i64 -65536
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  store i64 %swapped, i64 *%ptr
  ret void
}



define void @f6(i64 *%dst, i64 %a) {




  %ptr = getelementptr i64, i64 *%dst, i64 -65537
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  store i64 %swapped, i64 *%ptr
  ret void
}


define void @f7(i64 %src, i64 %index, i64 %a) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i64 *
  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  store i64 %swapped, i64 *%ptr
  ret void
}



define void @f8(i64 *%dst, i64 %a) {




  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  store volatile i64 %swapped, i64 *%dst
  ret void
}
