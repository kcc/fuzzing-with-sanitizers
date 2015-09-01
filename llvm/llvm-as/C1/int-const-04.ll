




define void @f1(i16 *%ptr) {



  store i16 0, i16 *%ptr
  ret void
}


define void @f2(i16 *%ptr) {



  store i16 32767, i16 *%ptr
  ret void
}


define void @f3(i16 *%ptr) {



  store i16 -32768, i16 *%ptr
  ret void
}


define void @f4(i16 *%ptr) {



  store i16 65535, i16 *%ptr
  ret void
}


define void @f5(i16 *%ptr) {



  store i16 -1, i16 *%ptr
  ret void
}


define void @f6(i16 *%ptr) {



  store i16 -32768, i16 *%ptr
  ret void
}


define void @f7(i16 *%ptr) {



  store i16 -32769, i16 *%ptr
  ret void
}


define void @f8(i16 *%a) {



  %ptr = getelementptr i16, i16 *%a, i64 2047
  store i16 42, i16 *%ptr
  ret void
}



define void @f9(i16 *%a) {




  %ptr = getelementptr i16, i16 *%a, i64 2048
  store i16 42, i16 *%ptr
  ret void
}


define void @f10(i16 *%a) {




  %ptr = getelementptr i16, i16 *%a, i64 -1
  store i16 42, i16 *%ptr
  ret void
}


define void @f11(i64 %src, i64 %index) {




  %add = add i64 %src, %index
  %ptr = inttoptr i64 %add to i16 *
  store i16 42, i16 *%ptr
  ret void
}
