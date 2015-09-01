





define i32 @t(i32 %mask) nounwind readnone ssp {
entry:


  %sub = add i32 %mask, -65535
  %shr = lshr i32 %sub, 23
  %and = and i32 %mask, 1
  %add = add i32 %shr, %and
  ret i32 %add
}
