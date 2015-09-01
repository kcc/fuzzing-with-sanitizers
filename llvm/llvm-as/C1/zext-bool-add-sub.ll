


define i32 @a(i1 zeroext %x, i1 zeroext %y) {
entry:




  %conv = zext i1 %x to i32
  %conv3 = zext i1 %y to i32
  %conv3.neg = sub i32 0, %conv3
  %sub = add i32 %conv, 1
  %add = add i32 %sub, %conv3.neg
  ret i32 %add
}
