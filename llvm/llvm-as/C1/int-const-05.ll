




define void @f1(i32 *%a) {



  store i32 0, i32 *%a
  ret void
}


define void @f2(i32 *%a) {



  store i32 32767, i32 *%a
  ret void
}


define void @f3(i32 *%a) {



  store i32 32768, i32 *%a
  ret void
}


define void @f4(i32 *%a) {



  store i32 -1, i32 *%a
  ret void
}


define void @f5(i32 *%a) {



  store i32 -32768, i32 *%a
  ret void
}


define void @f6(i32 *%a) {



  store i32 -32769, i32 *%a
  ret void
}


define void @f7(i32 *%a) {



  %ptr = getelementptr i32, i32 *%a, i64 1023
  store i32 42, i32 *%ptr
  ret void
}


define void @f8(i32 *%a) {




  %ptr = getelementptr i32, i32 *%a, i64 1024
  store i32 42, i32 *%ptr
  ret void
}


define void @f9(i32 *%a) {




  %ptr = getelementptr i32, i32 *%a, i64 -1
  store i32 42, i32 *%ptr
  ret void
}


define void @f10(i64 %src, i64 %index) {




  %add = add i64 %src, %index
  %ptr = inttoptr i64 %add to i32 *
  store i32 42, i32 *%ptr
  ret void
}
