

define i128 @shl(i128 %r, i128 %s) nounwind readnone {














  %shl = shl i128 %r, %s
  ret i128 %shl
}

define i128 @ashr(i128 %r, i128 %s) nounwind readnone {















  %shr = ashr i128 %r, %s
  ret i128 %shr
}

define i128 @lshr(i128 %r, i128 %s) nounwind readnone {














  %shr = lshr i128 %r, %s
  ret i128 %shr
}
