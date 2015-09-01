




define i64 @f1(i64 %a, i64 %b, i64 %c, i64 %d, i64 *%ptr) {




  %x1 = insertelement <2 x i64> undef, i64 %b, i32 0
  %x2 = insertelement <2 x i64> %x1, i64 %c, i32 1
  %x = bitcast <2 x i64> %x2 to i128
  %y2 = insertelement <2 x i64> %x1, i64 %d, i32 1
  %y = bitcast <2 x i64> %y2 to i128
  %sub = sub i128 %x, %y
  %subv = bitcast i128 %sub to <2 x i64>
  %high = extractelement <2 x i64> %subv, i32 0
  store i64 %high, i64 *%ptr
  %low = extractelement <2 x i64> %subv, i32 1
  ret i64 %low
}
