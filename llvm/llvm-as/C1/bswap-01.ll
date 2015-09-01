



declare i32 @llvm.bswap.i32(i32 %a)
declare i64 @llvm.bswap.i64(i64 %a)


define i32 @f1(i32 %a) {



  %swapped = call i32 @llvm.bswap.i32(i32 %a)
  ret i32 %swapped
}


define i64 @f2(i64 %a) {



  %swapped = call i64 @llvm.bswap.i64(i64 %a)
  ret i64 %swapped
}
