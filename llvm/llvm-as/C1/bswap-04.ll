



declare i32 @llvm.bswap.i32(i32 %a)


define void @f1(i32 *%dst, i32 %a) {



  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  store i32 %swapped, i32 *%dst
  ret void
}


define void @f2(i32 *%dst, i32 %a) {



  %ptr = getelementptr i32, i32 *%dst, i64 131071
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  store i32 %swapped, i32 *%ptr
  ret void
}



define void @f3(i32 *%dst, i32 %a) {




  %ptr = getelementptr i32, i32 *%dst, i64 131072
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  store i32 %swapped, i32 *%ptr
  ret void
}


define void @f4(i32 *%dst, i32 %a) {



  %ptr = getelementptr i32, i32 *%dst, i64 -1
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  store i32 %swapped, i32 *%ptr
  ret void
}


define void @f5(i32 *%dst, i32 %a) {



  %ptr = getelementptr i32, i32 *%dst, i64 -131072
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  store i32 %swapped, i32 *%ptr
  ret void
}



define void @f6(i32 *%dst, i32 %a) {




  %ptr = getelementptr i32, i32 *%dst, i64 -131073
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  store i32 %swapped, i32 *%ptr
  ret void
}


define void @f7(i64 %src, i64 %index, i32 %a) {



  %add1 = add i64 %src, %index
  %add2 = add i64 %add1, 524287
  %ptr = inttoptr i64 %add2 to i32 *
  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  store i32 %swapped, i32 *%ptr
  ret void
}



define void @f8(i32 *%dst, i32 %a) {




  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  store volatile i32 %swapped, i32 *%dst
  ret void
}
