




define void @f1(i32 zeroext %r2, i64 *%r3) {




  %conv = zext i32 %r2 to i64
  store i64 %conv, i64* %r3
  ret void
}


define void @f2(i32 signext %r2, i64 *%r3) {




  %conv = sext i32 %r2 to i64
  store i64 %conv, i64* %r3
  ret void
}


define void @f3(i32 zeroext %r2, i64 *%r3) {




  %conv = sext i32 %r2 to i64
  store i64 %conv, i64* %r3
  ret void
}


define void @f4(i32 signext %r2, i64 *%r3) {




  %conv = zext i32 %r2 to i64
  store i64 %conv, i64* %r3
  ret void
}
