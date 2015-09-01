



declare void @foo(i32, i32, i32, i32)


define i32 @f1() {



  ret i32 0
}


define i32 @f2() {



  ret i32 32767
}


define i32 @f3() {



  ret i32 32768
}


define i32 @f4() {



  ret i32 65535
}


define i32 @f5() {



  ret i32 65536
}


define i32 @f6() {



  ret i32 65537
}


define i32 @f7() {



  ret i32 -65536
}


define i32 @f8() {



  ret i32 -65535
}


define i32 @f9() {



  ret i32 -32769
}


define i32 @f10() {



  ret i32 -32768
}


define i32 @f11() {



  ret i32 -1
}


define i32 @f12() {













  call void @foo(i32 42, i32 32768, i32 65536, i32 65537)
  call void @foo(i32 42, i32 32768, i32 65536, i32 65537)
  ret i32 42
}
