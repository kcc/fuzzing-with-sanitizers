




define i64 @f1(i64 %a) {



  %or = or i64 %a, 1
  ret i64 %or
}


define i64 @f2(i64 %a) {



  %or = or i64 %a, 65535
  ret i64 %or
}


define i64 @f3(i64 %a) {



  %or = or i64 %a, 65536
  ret i64 %or
}


define i64 @f4(i64 %a) {



  %or = or i64 %a, 4294901759
  ret i64 %or
}


define i64 @f5(i64 %a) {



  %or = or i64 %a, 4294901760
  ret i64 %or
}


define i64 @f6(i64 %a) {



  %or = or i64 %a, 4294967295
  ret i64 %or
}


define i64 @f7(i64 %a) {



  %or = or i64 %a, 4294967296
  ret i64 %or
}


define i64 @f8(i64 %a) {




  %or = or i64 %a, 4294967297
  ret i64 %or
}


define i64 @f9(i64 %a) {




  %or = or i64 %a, 4295032831
  ret i64 %or
}


define i64 @f10(i64 %a) {




  %or = or i64 %a, 4295032832
  ret i64 %or
}


define i64 @f11(i64 %a) {




  %or = or i64 %a, 4295032833
  ret i64 %or
}


define i64 @f12(i64 %a) {



  %or = or i64 %a, 281470681743360
  ret i64 %or
}



define i64 @f13(i64 %a) {




  %or = or i64 %a, 281474976710655
  ret i64 %or
}


define i64 @f14(i64 %a) {



  %or = or i64 %a, 281474976710656
  ret i64 %or
}


define i64 @f15(i64 %a) {




  %or = or i64 %a, 281474976710657
  ret i64 %or
}


define i64 @f16(i64 %a) {



  %or = or i64 %a, 281479271677952
  ret i64 %or
}


define i64 @f17(i64 %a) {



  %or = or i64 %a, 18446462598732840960
  ret i64 %or
}


define i64 @f18(i64 %a) {



  %or = or i64 %a, -4294967296
  ret i64 %or
}


define i64 @f19(i64 %a) {




  %or = or i64 %a, -2
  ret i64 %or
}
