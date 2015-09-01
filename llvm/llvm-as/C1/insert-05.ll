




define i64 @f1(i64 %a) {




  %and = and i64 %a, 18446744069414584320
  %or = or i64 %and, 1
  ret i64 %or
}


define i64 @f2(i64 %a) {




  %and = and i64 %a, 18446744069414584320
  %or = or i64 %and, 32767
  ret i64 %or
}


define i64 @f3(i64 %a) {




  %and = and i64 %a, 18446744069414584320
  %or = or i64 %and, 32768
  ret i64 %or
}


define i64 @f4(i64 %a) {




  %and = and i64 %a, 18446744069414584320
  %or = or i64 %and, 65536
  ret i64 %or
}


define i64 @f5(i64 %a) {




  %and = and i64 %a, 18446744069414584320
  %or = or i64 %and, 4294934527
  ret i64 %or
}


define i64 @f6(i64 %a) {




  %and = and i64 %a, 18446744069414584320
  %or = or i64 %and, 4294934528
  ret i64 %or
}



define i64 @f7(i64 %a) {




  %and = and i64 %a, 18446744069414584320
  %or = or i64 %and, 4294967294
  ret i64 %or
}



define i64 @f8(i64 %a) {




  %shifted = lshr i64 %a, 1
  %and = and i64 %shifted, 18446744069414584320
  %or = or i64 %and, 32768
  ret i64 %or
}


define i64 @f9(i64 %a) {




  %shifted = lshr i64 %a, 1
  %and = and i64 %shifted, 18446744069414584320
  %or = add i64 %and, 32768
  ret i64 %or
}


define i64 @f10(i64 %a) {




  %shifted = lshr i64 %a, 1
  %and = and i64 %shifted, 9223372032559808512
  %or = or i64 %and, 32768
  ret i64 %or
}


define i64 @f11(i64 %a) {




  %shifted = lshr i64 %a, 1
  %and = and i64 %shifted, 9223372032559808512
  %or = add i64 %and, 32768
  ret i64 %or
}


define i64 @f12(i64 %a) {




  %and = and i64 %a, 4294967295
  %or = or i64 %and, 4294967296
  ret i64 %or
}


define i64 @f13(i64 %a) {




  %and = and i64 %a, 4294967295
  %or = or i64 %and, 9223372036854775808
  ret i64 %or
}


define i64 @f14(i64 %a) {




  %and = and i64 %a, 4294967295
  %or = or i64 %and, 18446744065119617024
  ret i64 %or
}



define i64 @f15(i64 %a) {




  %shifted = shl i64 %a, 1
  %and = and i64 %shifted, 4294967295
  %or = or i64 %and, 4294967296
  ret i64 %or
}


define i64 @f16(i64 %a) {




  %shifted = shl i64 %a, 1
  %and = and i64 %shifted, 4294967294
  %or = or i64 %and, 4294967296
  ret i64 %or
}


define i64 @f17(i32 %a) {




  %mul = mul i32 %a, %a
  %ext = zext i32 %mul to i64
  %or = or i64 %ext, 4294967296
  ret i64 %or
}


define i64 @f18(i32 %a) {




  %mul = mul i32 %a, %a
  %ext = zext i32 %mul to i64
  %or = or i64 4294967296, %ext
  ret i64 %or
}


define i64 @f19(i32 %a) {




  %trunc = trunc i32 %a to i8
  %ext = zext i8 %trunc to i64
  %or = or i64 %ext, 4294967296
  ret i64 %or
}
