




define i64 @f1(i64 %a) {



  %parta = shl i64 %a, 1
  %partb = lshr i64 %a, 63
  %or = or i64 %parta, %partb
  ret i64 %or
}


define i64 @f2(i64 %a) {



  %parta = shl i64 %a, 63
  %partb = lshr i64 %a, 1
  %or = or i64 %parta, %partb
  ret i64 %or
}


define i64 @f3(i64 %a) {



  %parta = shl i64 %a, 64
  %partb = lshr i64 %a, 0
  %or = or i64 %parta, %partb
  ret i64 %or
}


define i64 @f4(i64 %a, i64 %amt) {



  %amtb = sub i64 64, %amt
  %parta = shl i64 %a, %amt
  %partb = lshr i64 %a, %amtb
  %or = or i64 %parta, %partb
  ret i64 %or
}


define i64 @f5(i64 %a, i64 %amt) {



  %add = add i64 %amt, 10
  %sub = sub i64 64, %add
  %parta = shl i64 %a, %add
  %partb = lshr i64 %a, %sub
  %or = or i64 %parta, %partb
  ret i64 %or
}


define i64 @f6(i64 %a, i32 %amt) {



  %add = add i32 %amt, 10
  %sub = sub i32 64, %add
  %addext = sext i32 %add to i64
  %subext = sext i32 %sub to i64
  %parta = shl i64 %a, %addext
  %partb = lshr i64 %a, %subext
  %or = or i64 %parta, %partb
  ret i64 %or
}


define i64 @f7(i64 %a, i32 %amt) {



  %add = add i32 %amt, 10
  %sub = sub i32 64, %add
  %addext = zext i32 %add to i64
  %subext = zext i32 %sub to i64
  %parta = shl i64 %a, %addext
  %partb = lshr i64 %a, %subext
  %or = or i64 %parta, %partb
  ret i64 %or
}



define i64 @f8(i64 %a, i64 %amt) {



  %add = add i64 %amt, 524287
  %sub = sub i64 64, %add
  %parta = shl i64 %a, %add
  %partb = lshr i64 %a, %sub
  %or = or i64 %parta, %partb
  ret i64 %or
}



define i64 @f9(i64 %a, i64 %amt) {




  %add = add i64 %amt, 524288
  %sub = sub i64 64, %add
  %parta = shl i64 %a, %add
  %partb = lshr i64 %a, %sub
  %or = or i64 %parta, %partb
  ret i64 %or
}


define i64 @f10(i64 %a, i64 %amt) {



  %suba = sub i64 %amt, 1
  %subb = sub i64 64, %suba
  %parta = shl i64 %a, %suba
  %partb = lshr i64 %a, %subb
  %or = or i64 %parta, %partb
  ret i64 %or
}



define i64 @f11(i64 %a, i64 %amt) {



  %suba = sub i64 %amt, 524288
  %subb = sub i64 64, %suba
  %parta = shl i64 %a, %suba
  %partb = lshr i64 %a, %subb
  %or = or i64 %parta, %partb
  ret i64 %or
}



define i64 @f12(i64 %a, i64 %amt) {




  %suba = sub i64 %amt, 524289
  %subb = sub i64 64, %suba
  %parta = shl i64 %a, %suba
  %partb = lshr i64 %a, %subb
  %or = or i64 %parta, %partb
  ret i64 %or
}


define i64 @f13(i64 %a, i64 %b, i64 %c) {




  %add = add i64 %b, %c
  %sub = sub i64 64, %add
  %parta = shl i64 %a, %add
  %partb = lshr i64 %a, %sub
  %or = or i64 %parta, %partb
  ret i64 %or
}


define i64 @f14(i64 %a, i64 *%ptr) {




  %amt = load i64 , i64 *%ptr
  %amtb = sub i64 64, %amt
  %parta = shl i64 %a, %amt
  %partb = lshr i64 %a, %amtb
  %or = or i64 %parta, %partb
  ret i64 %or
}
