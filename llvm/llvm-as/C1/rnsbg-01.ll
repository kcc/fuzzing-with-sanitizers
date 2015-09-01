




define i32 @f1(i32 %a, i32 %b) {



  %orb = or i32 %b, 96
  %and = and i32 %a, %orb
  ret i32 %and
}


define i64 @f2(i64 %a, i64 %b) {



  %orb = or i64 %b, 96
  %and = and i64 %a, %orb
  ret i64 %and
}


define i32 @f3(i32 %a, i32 %b) {



  %orb = or i32 %b, -61
  %and = and i32 %a, %orb
  ret i32 %and
}


define i64 @f4(i64 %a, i64 %b) {



  %orb = or i64 %b, -61
  %and = and i64 %a, %orb
  ret i64 %and
}


define i32 @f6(i32 %a, i32 %b) {




  %shrb = shl i32 %b, 20
  %and = and i32 %a, %shrb
  ret i32 %and
}


define i64 @f7(i64 %a, i64 %b) {




  %shrb = shl i64 %b, 20
  %and = and i64 %a, %shrb
  ret i64 %and
}


define i32 @f8(i32 %a, i32 %b) {




  %shlb = shl i32 %b, 22
  %shrb = lshr i32 %b, 10
  %rotlb = or i32 %shlb, %shrb
  %and = and i32 %a, %rotlb
  ret i32 %and
}


define i64 @f9(i64 %a, i64 %b) {



  %shlb = shl i64 %b, 44
  %shrb = lshr i64 %b, 20
  %rotlb = or i64 %shlb, %shrb
  %and = and i64 %a, %rotlb
  ret i64 %and
}



define i32 @f10(i32 %a, i32 %b) {



  %shlb = shl i32 %b, 7
  %orb = or i32 %shlb, 127
  %and = and i32 %a, %orb
  ret i32 %and
}


define i64 @f11(i64 %a, i64 %b) {



  %shlb = shl i64 %b, 7
  %orb = or i64 %shlb, 127
  %and = and i64 %a, %orb
  ret i64 %and
}




define i32 @f12(i32 %a, i32 %b) {




  %shlb = shl i32 %b, 7
  %orb = or i32 %shlb, 63
  %and = and i32 %a, %orb
  ret i32 %and
}


define i64 @f13(i64 %a, i64 %b) {




  %shlb = shl i64 %b, 7
  %orb = or i64 %shlb, 63
  %and = and i64 %a, %orb
  ret i64 %and
}



define i32 @f14(i32 %a, i32 %b) {



  %shrb = lshr i32 %b, 27
  %orb = or i32 %shrb, -16
  %and = and i32 %a, %orb
  ret i32 %and
}


define i64 @f15(i64 %a, i64 %b) {



  %shrb = lshr i64 %b, 59
  %orb = or i64 %shrb, -16
  %and = and i64 %a, %orb
  ret i64 %and
}




define i32 @f16(i32 %a, i32 %b) {




  %shrb = lshr i32 %b, 29
  %orb = or i32 %shrb, -16
  %and = and i32 %a, %orb
  ret i32 %and
}


define i64 @f17(i64 %a, i64 %b) {




  %shrb = lshr i64 %b, 61
  %orb = or i64 %shrb, -16
  %and = and i64 %a, %orb
  ret i64 %and
}



define i32 @f18(i32 %a, i32 %b, i32 *%dest) {




  %ashrb = ashr i32 %b, 4
  store i32 %ashrb, i32 *%dest
  %shlb = shl i32 %ashrb, 1
  %orb = or i32 %shlb, 1
  %and = and i32 %a, %orb
  ret i32 %and
}


define i64 @f19(i64 %a, i64 %b, i64 *%dest) {




  %ashrb = ashr i64 %b, 34
  store i64 %ashrb, i64 *%dest
  %shlb = shl i64 %ashrb, 1
  %orb = or i64 %shlb, 1
  %and = and i64 %a, %orb
  ret i64 %and
}


define i32 @f20(i32 %a, i32 %b, i32 *%dest) {



  %ashrb = ashr i32 %b, 17
  store i32 %ashrb, i32 *%dest
  %shlb = shl i32 %ashrb, 1
  %orb = or i32 %shlb, -65535
  %and = and i32 %a, %orb
  ret i32 %and
}


define i64 @f21(i64 %a, i64 %b, i64 *%dest) {



  %ashrb = ashr i64 %b, 49
  store i64 %ashrb, i64 *%dest
  %shlb = shl i64 %ashrb, 1
  %orb = or i64 %shlb, -65535
  %and = and i64 %a, %orb
  ret i64 %and
}


define i64 @f22(i64 %a, i64 %b) {



  %shlb = shl i64 %b, 5
  %orb = or i64 %shlb, 31
  %shlorb = shl i64 %orb, 4
  %shrorb = lshr i64 %orb, 60
  %rotlorb = or i64 %shlorb, %shrorb
  %and = and i64 %a, %rotlorb
  ret i64 %and
}


define i64 @f23(i64 %a, i32 %b) {



  %add = add i32 %b, 1
  %ext = zext i32 %add to i64
  %and = and i64 %a, %ext
  ret i64 %and
}
