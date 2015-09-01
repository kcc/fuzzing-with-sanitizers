





define i32 @f1(i32 %foo) {



  %shr = lshr i32 %foo, 10
  %and = and i32 %shr, 1
  ret i32 %and
}


define i64 @f2(i64 %foo) {



  %shr = lshr i64 %foo, 10
  %and = and i64 %shr, 1
  ret i64 %and
}


define i32 @f3(i32 %foo) {



  %shr = lshr i32 %foo, 22
  %and = and i32 %shr, 12
  ret i32 %and
}


define i64 @f4(i64 %foo) {



  %shr = lshr i64 %foo, 22
  %and = and i64 %shr, 12
  ret i64 %and
}



define i32 @f5(i32 %foo) {



  %shr = lshr i32 %foo, 2
  %and = and i32 %shr, -8
  ret i32 %and
}


define i64 @f6(i64 %foo) {



  %shr = lshr i64 %foo, 2
  %and = and i64 %shr, -8
  ret i64 %and
}



define i32 @f7(i32 %foo) {




  %shr = lshr i32 %foo, 2
  %and = and i32 %shr, -7
  ret i32 %and
}


define i64 @f8(i64 %foo) {




  %shr = lshr i64 %foo, 2
  %and = and i64 %shr, -7
  ret i64 %and
}



define i32 @f9(i32 %foo) {



  %shr = shl i32 %foo, 2
  %and = and i32 %shr, 255
  ret i32 %and
}


define i64 @f10(i64 %foo) {



  %shr = shl i64 %foo, 2
  %and = and i64 %shr, 255
  ret i64 %and
}



define i32 @f11(i32 %foo) {




  %shr = shl i32 %foo, 2
  %and = and i32 %shr, -241
  ret i32 %and
}


define i64 @f12(i64 %foo) {




  %shr = shl i64 %foo, 2
  %and = and i64 %shr, -241
  ret i64 %and
}




define i32 @f13(i32 %foo) {



  %parta = shl i32 %foo, 14
  %partb = lshr i32 %foo, 18
  %rotl = or i32 %parta, %partb
  %and = and i32 %rotl, 248
  ret i32 %and
}


define i64 @f14(i64 %foo) {



  %parta = shl i64 %foo, 14
  %partb = lshr i64 %foo, 50
  %rotl = or i64 %parta, %partb
  %and = and i64 %rotl, 248
  ret i64 %and
}


define i32 @f15(i32 %foo) {



  %parta = shl i32 %foo, 14
  %partb = lshr i32 %foo, 18
  %rotl = or i32 %parta, %partb
  %and = and i32 %rotl, 114688
  ret i32 %and
}


define i64 @f16(i64 %foo) {



  %parta = shl i64 %foo, 14
  %partb = lshr i64 %foo, 50
  %rotl = or i64 %parta, %partb
  %and = and i64 %rotl, 114688
  ret i64 %and
}



define i32 @f17(i32 %foo) {




  %parta = shl i32 %foo, 4
  %partb = lshr i32 %foo, 28
  %rotl = or i32 %parta, %partb
  %and = and i32 %rotl, 126
  ret i32 %and
}


define i64 @f18(i64 %foo) {



  %parta = shl i64 %foo, 4
  %partb = lshr i64 %foo, 60
  %rotl = or i64 %parta, %partb
  %and = and i64 %rotl, 126
  ret i64 %and
}



define i32 @f19(i32 %foo) {




  %shr = ashr i32 %foo, 28
  %and = and i32 %shr, 30
  ret i32 %and
}


define i64 @f20(i64 %foo) {




  %shr = ashr i64 %foo, 60
  %and = and i64 %shr, 30
  ret i64 %and
}




define i32 @f21(i32 %foo, i32 *%dest) {



  %shr = ashr i32 %foo, 28
  store i32 %shr, i32 *%dest
  %and = and i32 %shr, 14
  ret i32 %and
}


define i64 @f22(i64 %foo, i64 *%dest) {



  %shr = ashr i64 %foo, 60
  store i64 %shr, i64 *%dest
  %and = and i64 %shr, 14
  ret i64 %and
}



define i64 @f23(i64 %foo) {



  %shr = lshr i64 %foo, 2
  %and = and i64 %shr, 255
  ret i64 %and
}



define i32 @f24(i32 %foo) {




  %and = and i32 %foo, 254
  %parta = lshr i32 %and, 3
  %partb = shl i32 %and, 29
  %rotl = or i32 %parta, %partb
  ret i32 %rotl
}


define i64 @f25(i64 %foo) {



  %and = and i64 %foo, 14
  %parta = shl i64 %and, 3
  %partb = lshr i64 %and, 61
  %rotl = or i64 %parta, %partb
  ret i64 %rotl
}



define i32 @f26(i32 %foo) {



  %and = and i32 %foo, -49
  %parta = shl i32 %and, 5
  %partb = lshr i32 %and, 27
  %rotl = or i32 %parta, %partb
  ret i32 %rotl
}


define i64 @f27(i64 %foo) {



  %and = and i64 %foo, -49
  %parta = shl i64 %and, 5
  %partb = lshr i64 %and, 59
  %rotl = or i64 %parta, %partb
  ret i64 %rotl
}


define i32 @f28(i32 %foo) {



  %and = and i32 %foo, 32766
  %shl = shl i32 %and, 17
  ret i32 %shl
}


define i64 @f29(i64 %foo) {



  %and = and i64 %foo, 32766
  %shl = shl i64 %and, 49
  ret i64 %shl
}


define i32 @f30(i32 %foo) {



  %and = and i32 %foo, 32766
  %shl = shl i32 %and, 18
  ret i32 %shl
}


define i64 @f31(i64 %foo) {



  %and = and i64 %foo, 32766
  %shl = shl i64 %and, 50
  ret i64 %shl
}



define i32 @f32(i32 %foo) {



  %and = and i32 %foo, -7
  %shl = shl i32 %and, 10
  ret i32 %shl
}


define i64 @f33(i64 %foo) {



  %and = and i64 %foo, -7
  %shl = shl i64 %and, 10
  ret i64 %shl
}


define i32 @f34(i32 %foo) {



  %and = and i32 %foo, 65535
  %shl = lshr i32 %and, 9
  ret i32 %shl
}


define i64 @f35(i64 %foo) {



  %and = and i64 %foo, 65535
  %shl = lshr i64 %and, 9
  ret i64 %shl
}



define i32 @f36(i32 %foo) {



  %and = and i32 %foo, -25
  %shl = lshr i32 %and, 1
  ret i32 %shl
}


define i64 @f37(i64 %foo) {



  %and = and i64 %foo, -25
  %shl = lshr i64 %and, 1
  ret i64 %shl
}



define i64 @f38(i64 %foo) {




  %ashr = ashr i64 %foo, 32
  %shl = shl i64 %ashr, 5
  ret i64 %shl
}


define i64 @f39(i64 %foo, i64 *%dest) {




  %ashr = ashr i64 %foo, 35
  store i64 %ashr, i64 *%dest
  %shl = shl i64 %ashr, 2
  %and = and i64 %shl, 2147483647
  ret i64 %and
}


define i64 @f40(i64 %foo, i64 *%dest) {




  %ashr = ashr i64 %foo, 36
  store i64 %ashr, i64 *%dest
  %shl = shl i64 %ashr, 2
  %and = and i64 %shl, 2147483647
  ret i64 %and
}


define i64 @f41(i32 %a) {



  %shl = shl i32 %a, 2
  %shr = lshr i32 %shl, 4
  %ext = zext i32 %shr to i64
  ret i64 %ext
}




define i64 @f42(i1 %x) {





  %ext = sext i1 %x to i8
  %ext2 = zext i8 %ext to i64
  ret i64 %ext2
}
