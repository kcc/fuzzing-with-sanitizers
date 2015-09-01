



declare void @llvm.memcpy.p0i8.p0i8.i32(i8 *nocapture, i8 *nocapture, i32, i32, i1) nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8 *nocapture, i8 *nocapture, i64, i32, i1) nounwind
declare void @foo(i8 *, i8 *)


define void @f1(i8 *%dest, i8 *%src) {




  call void @llvm.memcpy.p0i8.p0i8.i32(i8 *%dest, i8 *%src, i32 0, i32 1,
                                       i1 false)
  ret void
}


define void @f2(i8 *%dest, i8 *%src) {




  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 0, i32 1,
                                       i1 false)
  ret void
}


define void @f3(i8 *%dest, i8 *%src) {



  call void @llvm.memcpy.p0i8.p0i8.i32(i8 *%dest, i8 *%src, i32 1, i32 1,
                                       i1 false)
  ret void
}


define void @f4(i8 *%dest, i8 *%src) {



  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 1, i32 1,
                                       i1 false)
  ret void
}


define void @f5(i8 *%dest, i8 *%src) {



  call void @llvm.memcpy.p0i8.p0i8.i32(i8 *%dest, i8 *%src, i32 256, i32 1,
                                       i1 false)
  ret void
}


define void @f6(i8 *%dest, i8 *%src) {



  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 256, i32 1,
                                       i1 false)
  ret void
}


define void @f7(i8 *%dest, i8 *%src) {




  call void @llvm.memcpy.p0i8.p0i8.i32(i8 *%dest, i8 *%src, i32 257, i32 1,
                                       i1 false)
  ret void
}


define void @f8(i8 *%dest, i8 *%src) {




  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 511, i32 1,
                                       i1 false)
  ret void
}


define void @f9(i8 *%dest, i8 *%src) {




  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 512, i32 1,
                                       i1 false)
  ret void
}


define void @f10(i8 *%dest, i8 *%src) {







  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 1279, i32 1,
                                       i1 false)
  ret void
}


define void @f11(i8 *%srcbase, i8 *%destbase) {









  %dest = getelementptr i8, i8 *%srcbase, i64 4000
  %src = getelementptr i8, i8* %destbase, i64 3500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 1279, i32 1,
                                       i1 false)
  ret void
}


define void @f12() {










  %arr = alloca [6000 x i8]
  %dest = getelementptr [6000 x i8], [6000 x i8] *%arr, i64 0, i64 3900
  %src = getelementptr [6000 x i8], [6000 x i8] *%arr, i64 0, i64 1924
  call void @foo(i8 *%dest, i8 *%src)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 1279, i32 1,
                                       i1 false)
  call void @foo(i8 *%dest, i8 *%src)
  ret void
}


define void @f13() {










  %arr = alloca [6000 x i8]
  %dest = getelementptr [6000 x i8], [6000 x i8] *%arr, i64 0, i64 24
  %src = getelementptr [6000 x i8], [6000 x i8] *%arr, i64 0, i64 3650
  call void @foo(i8 *%dest, i8 *%src)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 1279, i32 1,
                                       i1 false)
  call void @foo(i8 *%dest, i8 *%src)
  ret void
}


define void @f14(i8 *%dest, i8 *%src) {








  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 1536, i32 1,
                                       i1 false)
  ret void
}


define void @f15(i8 *%dest, i8 *%src) {










  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 1537, i32 1,
                                       i1 false)
  ret void
}



define void @f16() {












  %arr = alloca [3200 x i8]
  %dest = getelementptr [3200 x i8], [3200 x i8] *%arr, i64 0, i64 1600
  %src = getelementptr [3200 x i8], [3200 x i8] *%arr, i64 0, i64 0
  call void @foo(i8 *%dest, i8 *%src)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8 *%dest, i8 *%src, i64 1537, i32 1,
                                       i1 false)
  call void @foo(i8 *%dest, i8 *%src)
  ret void
}
