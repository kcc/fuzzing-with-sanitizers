




define void @f1(i64 *%a) {



  store i64 0, i64 *%a
  ret void
}


define void @f2(i64 *%a) {



  store i64 32767, i64 *%a
  ret void
}


define void @f3(i64 *%a) {



  store i64 32768, i64 *%a
  ret void
}


define void @f4(i64 *%a) {



  store i64 -1, i64 *%a
  ret void
}


define void @f5(i64 *%a) {



  store i64 -32768, i64 *%a
  ret void
}


define void @f6(i64 *%a) {



  store i64 -32769, i64 *%a
  ret void
}


define void @f7(i64 *%a) {



  %ptr = getelementptr i64, i64 *%a, i64 511
  store i64 42, i64 *%ptr
  ret void
}



define void @f8(i64 *%a) {




  %ptr = getelementptr i64, i64 *%a, i64 512
  store i64 42, i64 *%ptr
  ret void
}


define void @f9(i64 *%a) {




  %ptr = getelementptr i64, i64 *%a, i64 -1
  store i64 42, i64 *%ptr
  ret void
}


define void @f10(i64 %src, i64 %index) {




  %add = add i64 %src, %index
  %ptr = inttoptr i64 %add to i64 *
  store i64 42, i64 *%ptr
  ret void
}
