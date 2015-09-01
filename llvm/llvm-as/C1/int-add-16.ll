




define i64 @f1(i64 %a, i64 %b, i64 %c, i64 %d, i64 *%ptr) {




  %x1 = insertelement <2 x i64> undef, i64 %b, i32 0
  %x2 = insertelement <2 x i64> %x1, i64 %c, i32 1
  %x = bitcast <2 x i64> %x2 to i128
  %y2 = insertelement <2 x i64> %x1, i64 %d, i32 1
  %y = bitcast <2 x i64> %y2 to i128
  %add = add i128 %x, %y
  %addv = bitcast i128 %add to <2 x i64>
  %high = extractelement <2 x i64> %addv, i32 0
  store i64 %high, i64 *%ptr
  %low = extractelement <2 x i64> %addv, i32 1
  ret i64 %low
}


define void @f2(i64 %a, i64 %b, i128 *%ptr) {




  %x1 = insertelement <2 x i64> undef, i64 %a, i32 0
  %x2 = insertelement <2 x i64> %x1, i64 %b, i32 1
  %x = bitcast <2 x i64> %x2 to i128
  %add = add i128 %x, 1
  store i128 %add, i128 *%ptr
  ret void
}


define void @f3(i64 %a, i64 %b, i128 *%ptr) {




  %x1 = insertelement <2 x i64> undef, i64 %a, i32 0
  %x2 = insertelement <2 x i64> %x1, i64 %b, i32 1
  %x = bitcast <2 x i64> %x2 to i128
  %add = add i128 %x, 32767
  store i128 %add, i128 *%ptr
  ret void
}


define void @f4(i64 %a, i64 %b, i128 *%ptr) {




  %x1 = insertelement <2 x i64> undef, i64 %a, i32 0
  %x2 = insertelement <2 x i64> %x1, i64 %b, i32 1
  %x = bitcast <2 x i64> %x2 to i128
  %add = add i128 %x, 32768
  store i128 %add, i128 *%ptr
  ret void
}


define void @f5(i64 %a, i64 %b, i128 *%ptr) {




  %x1 = insertelement <2 x i64> undef, i64 %a, i32 0
  %x2 = insertelement <2 x i64> %x1, i64 %b, i32 1
  %x = bitcast <2 x i64> %x2 to i128
  %add = add i128 %x, -32768
  store i128 %add, i128 *%ptr
  ret void
}


define void @f6(i64 %a, i64 %b, i128 *%ptr) {





  %x1 = insertelement <2 x i64> undef, i64 %a, i32 0
  %x2 = insertelement <2 x i64> %x1, i64 %b, i32 1
  %x = bitcast <2 x i64> %x2 to i128
  %add = add i128 %x, -32769
  store i128 %add, i128 *%ptr
  ret void
}
