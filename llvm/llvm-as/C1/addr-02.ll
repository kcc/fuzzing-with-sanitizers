






define void @f1(i64 %addr, i64 %index, i8 **%dst) {



  %add = add i64 %addr, %index
  %ptr = inttoptr i64 %add to i8 *
  %a = load volatile i8 , i8 *%ptr
  store volatile i8 *%ptr, i8 **%dst
  ret void
}


define void @f2(i64 %addr, i64 %index, i8 **%dst) {



  %add1 = add i64 %addr, %index
  %add2 = add i64 %add1, 100
  %ptr = inttoptr i64 %add2 to i8 *
  %a = load volatile i8 , i8 *%ptr
  store volatile i8 *%ptr, i8 **%dst
  ret void
}


define void @f3(i64 %addr, i64 %index, i8 **%dst) {



  %add1 = add i64 %addr, 100
  %add2 = add i64 %add1, %index
  %ptr = inttoptr i64 %add2 to i8 *
  %a = load volatile i8 , i8 *%ptr
  store volatile i8 *%ptr, i8 **%dst
  ret void
}


define void @f4(i64 %addr, i64 %index, i8 **%dst) {



  %add1 = add i64 %addr, %index
  %add2 = sub i64 %add1, 100
  %ptr = inttoptr i64 %add2 to i8 *
  %a = load volatile i8 , i8 *%ptr
  store volatile i8 *%ptr, i8 **%dst
  ret void
}


define void @f5(i64 %addr, i64 %index, i8 **%dst) {



  %add1 = sub i64 %addr, 100
  %add2 = add i64 %add1, %index
  %ptr = inttoptr i64 %add2 to i8 *
  %a = load volatile i8 , i8 *%ptr
  store volatile i8 *%ptr, i8 **%dst
  ret void
}


define void @f6(i64 %addr, i64 %index, i8 **%dst) {




  %aligned = and i64 %addr, -8
  %or = or i64 %aligned, 6
  %add = add i64 %or, %index
  %ptr = inttoptr i64 %add to i8 *
  %a = load volatile i8 , i8 *%ptr
  store volatile i8 *%ptr, i8 **%dst
  ret void
}


define void @f7(i64 %addr, i64 %index, i8 **%dst) {




  %or = or i64 %addr, 6
  %add = add i64 %or, %index
  %ptr = inttoptr i64 %add to i8 *
  %a = load volatile i8 , i8 *%ptr
  store volatile i8 *%ptr, i8 **%dst
  ret void
}



define void @f8(i64 %addr, i64 %index, i8 **%dst) {






  %aligned = and i64 %addr, -8
  %add = add i64 %aligned, %index
  %or = or i64 %add, 6
  %ptr = inttoptr i64 %or to i8 *
  %a = load volatile i8 , i8 *%ptr
  store volatile i8 *%ptr, i8 **%dst
  ret void
}
