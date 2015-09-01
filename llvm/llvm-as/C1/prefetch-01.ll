



declare void @llvm.prefetch(i8*, i32, i32, i32)

@g = global [4096 x i8] zeroinitializer


define void @f1(i8 *%ptr) {



  call void @llvm.prefetch(i8 *%ptr, i32 0, i32 0, i32 0)
  ret void
}


define void @f2(i8 *%ptr) {



  call void @llvm.prefetch(i8 *%ptr, i32 1, i32 0, i32 0)
  ret void
}


define void @f3(i8 *%ptr) {



  call void @llvm.prefetch(i8 *%ptr, i32 0, i32 0, i32 1)
  ret void
}


define void @f4(i8 *%ptr) {



  call void @llvm.prefetch(i8 *%ptr, i32 1, i32 0, i32 1)
  ret void
}


define void @f5(i8 *%base, i64 %index) {



  %add = add i64 %index, -524288
  %ptr = getelementptr i8, i8 *%base, i64 %add
  call void @llvm.prefetch(i8 *%ptr, i32 1, i32 0, i32 1)
  ret void
}


define void @f6(i8 *%base, i64 %index) {



  %add = add i64 %index, 524287
  %ptr = getelementptr i8, i8 *%base, i64 %add
  call void @llvm.prefetch(i8 *%ptr, i32 1, i32 0, i32 1)
  ret void
}


define void @f7(i8 *%base, i64 %index) {




  %add = add i64 %index, 524288
  %ptr = getelementptr i8, i8 *%base, i64 %add
  call void @llvm.prefetch(i8 *%ptr, i32 1, i32 0, i32 1)
  ret void
}


define void @f8() {



  %ptr = getelementptr [4096 x i8], [4096 x i8] *@g, i64 0, i64 0
  call void @llvm.prefetch(i8 *%ptr, i32 1, i32 0, i32 1)
  ret void
}
