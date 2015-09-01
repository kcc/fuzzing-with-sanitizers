



declare void @foo(i64, i64, i64, i64)


define i64 @f1() {



  ret i64 0
}


define i64 @f2() {



  ret i64 32767
}


define i64 @f3() {



  ret i64 32768
}


define i64 @f4() {



  ret i64 65535
}


define i64 @f5() {



  ret i64 65536
}


define i64 @f6() {



  ret i64 65537
}


define i64 @f7() {



  ret i64 2147483647
}


define i64 @f8() {



  ret i64 2147483648
}


define i64 @f9() {



  ret i64 2147483649
}


define i64 @f10() {



  ret i64 4294901760
}


define i64 @f11() {



  ret i64 4294901761
}


define i64 @f12() {



  ret i64 4294967295
}


define i64 @f13() {



  ret i64 4294967296
}


define i64 @f14() {




  ret i64 4294967297
}


define i64 @f15() {




  ret i64 4295032831
}


define i64 @f16() {




  ret i64 4295032832
}


define i64 @f17() {




  ret i64 4295032833
}


define i64 @f18() {




  ret i64 8589869056
}


define i64 @f19() {




  ret i64 8589934591
}


define i64 @f20() {



  ret i64 281470681743360
}


define i64 @f21() {



  ret i64 281474976710656
}


define i64 @f22() {



  ret i64 281479271677952
}


define i64 @f23() {



  ret i64 -281474976710656
}


define i64 @f24() {




  ret i64 -281474976710655
}


define i64 @f25() {



  ret i64 -4294967296
}


define i64 @f26() {



  ret i64 -1
}


define i64 @f27() {



  ret i64 -32768
}


define i64 @f28() {



  ret i64 -32769
}


define i64 @f29() {



  ret i64 -2147483648
}


define i64 @f30() {




  ret i64 -2147483649
}


define i64 @f31() {























  call void @foo(i64 42, i64 65537, i64 2147483649, i64 281479271677952)
  call void @foo(i64 32768, i64 65536, i64 4294967296, i64 281474976710656)
  call void @foo(i64 42, i64 65537, i64 2147483649, i64 281479271677952)
  call void @foo(i64 32768, i64 65536, i64 4294967296, i64 281474976710656)
  ret i64 42
}
