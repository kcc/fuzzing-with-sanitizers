



declare void @llvm.memset.p0i8.i32(i8 *nocapture, i8, i32, i32, i1) nounwind
declare void @llvm.memset.p0i8.i64(i8 *nocapture, i8, i64, i32, i1) nounwind


define void @f1(i8 *%dest) {



  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 0, i32 1, i1 false)
  ret void
}


define void @f2(i8 *%dest) {



  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 0, i32 1, i1 false)
  ret void
}


define void @f3(i8 *%dest) {



  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 1, i32 1, i1 false)
  ret void
}


define void @f4(i8 *%dest) {



  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 1, i32 1, i1 false)
  ret void
}


define void @f5(i8 *%dest) {



  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 2, i32 1, i1 false)
  ret void
}


define void @f6(i8 *%dest) {



  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 2, i32 1, i1 false)
  ret void
}


define void @f7(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 3, i32 1, i1 false)
  ret void
}


define void @f8(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 3, i32 1, i1 false)
  ret void
}


define void @f9(i8 *%dest) {



  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 4, i32 1, i1 false)
  ret void
}


define void @f10(i8 *%dest) {



  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 4, i32 1, i1 false)
  ret void
}


define void @f11(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 5, i32 1, i1 false)
  ret void
}


define void @f12(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 5, i32 1, i1 false)
  ret void
}


define void @f13(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 6, i32 1, i1 false)
  ret void
}


define void @f14(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 6, i32 1, i1 false)
  ret void
}


define void @f15(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 7, i32 1, i1 false)
  ret void
}


define void @f16(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 7, i32 1, i1 false)
  ret void
}


define void @f17(i8 *%dest) {



  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 8, i32 1, i1 false)
  ret void
}


define void @f18(i8 *%dest) {



  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 8, i32 1, i1 false)
  ret void
}


define void @f19(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 9, i32 1, i1 false)
  ret void
}


define void @f20(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 9, i32 1, i1 false)
  ret void
}


define void @f21(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 10, i32 1, i1 false)
  ret void
}


define void @f22(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 10, i32 1, i1 false)
  ret void
}


define void @f23(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 11, i32 1, i1 false)
  ret void
}


define void @f24(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 11, i32 1, i1 false)
  ret void
}


define void @f25(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 12, i32 1, i1 false)
  ret void
}


define void @f26(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 12, i32 1, i1 false)
  ret void
}


define void @f27(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 13, i32 1, i1 false)
  ret void
}


define void @f28(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 13, i32 1, i1 false)
  ret void
}


define void @f29(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 14, i32 1, i1 false)
  ret void
}


define void @f30(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 14, i32 1, i1 false)
  ret void
}


define void @f31(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 15, i32 1, i1 false)
  ret void
}


define void @f32(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 15, i32 1, i1 false)
  ret void
}


define void @f33(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 16, i32 1, i1 false)
  ret void
}


define void @f34(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 16, i32 1, i1 false)
  ret void
}


define void @f35(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 17, i32 1, i1 false)
  ret void
}


define void @f36(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 17, i32 1, i1 false)
  ret void
}


define void @f37(i8 *%dest) {




  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 257, i32 1, i1 false)
  ret void
}


define void @f38(i8 *%dest) {




  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 257, i32 1, i1 false)
  ret void
}


define void @f39(i8 *%dest) {





  call void @llvm.memset.p0i8.i32(i8 *%dest, i8 -1, i32 258, i32 1, i1 false)
  ret void
}


define void @f40(i8 *%dest) {





  call void @llvm.memset.p0i8.i64(i8 *%dest, i8 -1, i64 258, i32 1, i1 false)
  ret void
}
