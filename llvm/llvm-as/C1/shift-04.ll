




define i32 @f1(i32 %a) {



  %parta = shl i32 %a, 1
  %partb = lshr i32 %a, 31
  %or = or i32 %parta, %partb
  ret i32 %or
}


define i32 @f2(i32 %a) {



  %parta = shl i32 %a, 31
  %partb = lshr i32 %a, 1
  %or = or i32 %parta, %partb
  ret i32 %or
}


define i32 @f3(i32 %a) {



  %parta = shl i32 %a, 32
  %partb = lshr i32 %a, 0
  %or = or i32 %parta, %partb
  ret i32 %or
}


define i32 @f4(i32 %a, i32 %amt) {



  %amtb = sub i32 32, %amt
  %parta = shl i32 %a, %amt
  %partb = lshr i32 %a, %amtb
  %or = or i32 %parta, %partb
  ret i32 %or
}


define i32 @f5(i32 %a, i32 %amt) {



  %add = add i32 %amt, 10
  %sub = sub i32 32, %add
  %parta = shl i32 %a, %add
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}


define i32 @f6(i32 %a, i64 %amt) {



  %add = add i64 %amt, 10
  %addtrunc = trunc i64 %add to i32
  %sub = sub i32 32, %addtrunc
  %parta = shl i32 %a, %addtrunc
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}


define i32 @f7(i32 %a, i64 %amt) {



  %add = add i64 %amt, 10
  %sub = sub i64 32, %add
  %addtrunc = trunc i64 %add to i32
  %subtrunc = trunc i64 %sub to i32
  %parta = shl i32 %a, %addtrunc
  %partb = lshr i32 %a, %subtrunc
  %or = or i32 %parta, %partb
  ret i32 %or
}



define i32 @f8(i32 %a, i32 %amt) {



  %add = add i32 %amt, 524287
  %sub = sub i32 32, %add
  %parta = shl i32 %a, %add
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}



define i32 @f9(i32 %a, i32 %amt) {




  %add = add i32 %amt, 524288
  %sub = sub i32 32, %add
  %parta = shl i32 %a, %add
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}


define i32 @f10(i32 %a, i32 %amt) {



  %suba = sub i32 %amt, 1
  %subb = sub i32 32, %suba
  %parta = shl i32 %a, %suba
  %partb = lshr i32 %a, %subb
  %or = or i32 %parta, %partb
  ret i32 %or
}



define i32 @f11(i32 %a, i32 %amt) {



  %suba = sub i32 %amt, 524288
  %subb = sub i32 32, %suba
  %parta = shl i32 %a, %suba
  %partb = lshr i32 %a, %subb
  %or = or i32 %parta, %partb
  ret i32 %or
}



define i32 @f12(i32 %a, i32 %amt) {




  %suba = sub i32 %amt, 524289
  %subb = sub i32 32, %suba
  %parta = shl i32 %a, %suba
  %partb = lshr i32 %a, %subb
  %or = or i32 %parta, %partb
  ret i32 %or
}


define i32 @f13(i32 %a, i32 %b, i32 %c) {




  %add = add i32 %b, %c
  %sub = sub i32 32, %add
  %parta = shl i32 %a, %add
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}


define i32 @f14(i32 %a, i32 *%ptr) {




  %amt = load i32 , i32 *%ptr
  %amtb = sub i32 32, %amt
  %parta = shl i32 %a, %amt
  %partb = lshr i32 %a, %amtb
  %or = or i32 %parta, %partb
  ret i32 %or
}



define i32 @f15(i32 %a, i32 %amt) {



  %add = add i32 %amt, 10
  %sub = sub i32 22, %amt
  %parta = shl i32 %a, %add
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}


define i32 @f16(i32 %a, i64 %amt) {



  %add = add i64 %amt, 10
  %sub = sub i64 22, %amt
  %addtrunc = trunc i64 %add to i32
  %subtrunc = trunc i64 %sub to i32
  %parta = shl i32 %a, %addtrunc
  %partb = lshr i32 %a, %subtrunc
  %or = or i32 %parta, %partb
  ret i32 %or
}


define i32 @f17(i32 %x, i32 %y) {



entry:
  %shl = shl i32 %x, %y
  %sub = sub i32 0, %y
  %and = and i32 %sub, 31
  %shr = lshr i32 %x, %and
  %or = or i32 %shr, %shl
  ret i32 %or
}


define i32 @f18(i32 %x, i32 %y) {



entry:
  %shl = shl i32 %x, %y
  %sub = sub i32 32, %y
  %and = and i32 %sub, 31
  %shr = lshr i32 %x, %and
  %or = or i32 %shr, %shl
  ret i32 %or
}


define i32 @f19(i32 %x, i32 %y) {



entry:
  %shl = shl i32 %x, %y
  %sub = sub i32 16, %y
  %and = and i32 %sub, 31
  %shr = lshr i32 %x, %and
  %or = or i32 %shr, %shl
  ret i32 %or
}


define i32 @f20(i32 %x, i32 %y) {



entry:
  %add = add i32 %y, 199
  %shl = shl i32 %x, %add
  %sub = sub i32 0, %add
  %and = and i32 %sub, 31
  %shr = lshr i32 %x, %and
  %or = or i32 %shr, %shl
  ret i32 %or
}


define i32 @f21(i32 %x, i32 %y) {



entry:
  %add = add i32 %y, 199
  %shl = shl i32 %x, %add
  %sub = sub i32 -199, %y
  %and = and i32 %sub, 31
  %shr = lshr i32 %x, %and
  %or = or i32 %shr, %shl
  ret i32 %or
}
