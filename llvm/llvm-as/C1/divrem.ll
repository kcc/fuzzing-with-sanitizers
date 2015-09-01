

























@g0 = common global i32 0, align 4
@g1 = common global i32 0, align 4

define i32 @sdiv1(i32 signext %a0, i32 signext %a1) nounwind readnone {
entry:





















  %div = sdiv i32 %a0, %a1
  ret i32 %div
}

define i32 @srem1(i32 signext %a0, i32 signext %a1) nounwind readnone {
entry:





















  %rem = srem i32 %a0, %a1
  ret i32 %rem
}

define i32 @udiv1(i32 zeroext %a0, i32 zeroext %a1) nounwind readnone {
entry:




















  %div = udiv i32 %a0, %a1
  ret i32 %div
}

define i32 @urem1(i32 zeroext %a0, i32 zeroext %a1) nounwind readnone {
entry:





















  %rem = urem i32 %a0, %a1
  ret i32 %rem
}

define i32 @sdivrem1(i32 signext %a0, i32 signext %a1, i32* nocapture %r) nounwind {
entry:

































  %rem = srem i32 %a0, %a1
  store i32 %rem, i32* %r, align 4
  %div = sdiv i32 %a0, %a1
  ret i32 %div
}

define i32 @udivrem1(i32 zeroext %a0, i32 zeroext %a1, i32* nocapture %r) nounwind {
entry:


































  %rem = urem i32 %a0, %a1
  store i32 %rem, i32* %r, align 4
  %div = udiv i32 %a0, %a1
  ret i32 %div
}


define i32 @killFlags() {
entry:
  %0 = load i32, i32* @g0, align 4
  %1 = load i32, i32* @g1, align 4
  %div = sdiv i32 %0, %1
  ret i32 %div
}

define i64 @sdiv2(i64 %a0, i64 %a1) nounwind readnone {
entry:

















  %div = sdiv i64 %a0, %a1
  ret i64 %div
}

define i64 @srem2(i64 %a0, i64 %a1) nounwind readnone {
entry:

















  %rem = srem i64 %a0, %a1
  ret i64 %rem
}

define i64 @udiv2(i64 %a0, i64 %a1) nounwind readnone {
entry:
















  %div = udiv i64 %a0, %a1
  ret i64 %div
}

define i64 @urem2(i64 %a0, i64 %a1) nounwind readnone {
entry:

















  %rem = urem i64 %a0, %a1
  ret i64 %rem
}

define i64 @sdivrem2(i64 %a0, i64 %a1, i64* nocapture %r) nounwind {
entry:



























  %rem = srem i64 %a0, %a1
  store i64 %rem, i64* %r, align 8
  %div = sdiv i64 %a0, %a1
  ret i64 %div
}

define i64 @udivrem2(i64 %a0, i64 %a1, i64* nocapture %r) nounwind {
entry:



























  %rem = urem i64 %a0, %a1
  store i64 %rem, i64* %r, align 8
  %div = udiv i64 %a0, %a1
  ret i64 %div
}
