

define i64 @dext(i64 %i) nounwind readnone {
entry:

  %shr = lshr i64 %i, 5
  %and = and i64 %shr, 1023
  ret i64 %and
}

define i64 @dextm(i64 %i) nounwind readnone {
entry:

  %shr = lshr i64 %i, 5
  %and = and i64 %shr, 17179869183
  ret i64 %and
}

define i64 @dextu(i64 %i) nounwind readnone {
entry:

  %shr = lshr i64 %i, 34
  %and = and i64 %shr, 63
  ret i64 %and
}

define i64 @dins(i64 %i, i64 %j) nounwind readnone {
entry:

  %shl2 = shl i64 %j, 8
  %and = and i64 %shl2, 261888
  %and3 = and i64 %i, -261889
  %or = or i64 %and3, %and
  ret i64 %or
}

define i64 @dinsm(i64 %i, i64 %j) nounwind readnone {
entry:

  %shl4 = shl i64 %j, 10
  %and = and i64 %shl4, 8796093021184
  %and5 = and i64 %i, -8796093021185
  %or = or i64 %and5, %and
  ret i64 %or
}

define i64 @dinsu(i64 %i, i64 %j) nounwind readnone {
entry:

  %shl4 = shl i64 %j, 40
  %and = and i64 %shl4, 9006099743113216
  %and5 = and i64 %i, -9006099743113217
  %or = or i64 %and5, %and
  ret i64 %or
}
