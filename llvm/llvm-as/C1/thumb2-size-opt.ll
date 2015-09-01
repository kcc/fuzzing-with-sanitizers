


define i32 @and(i32 %a, i32 %b) nounwind readnone {



entry:
  %and = and i32 %b, %a
  ret i32 %and
}

define i32 @asr-imm(i32 %a) nounwind readnone {



entry:
  %shr = ashr i32 %a, 13
  ret i32 %shr
}

define i32 @asr-reg(i32 %a, i32 %b) nounwind readnone {



entry:
  %shr = ashr i32 %a, %b
  ret i32 %shr
}

define i32 @bic(i32 %a, i32 %b) nounwind readnone {



entry:
  %neg = xor i32 %b, -1
  %and = and i32 %neg, %a
  ret i32 %and
}

define i32 @eor(i32 %a, i32 %b) nounwind readnone {



entry:
  %eor = xor i32 %a, %b
  ret i32 %eor
}

define i32 @lsl-imm(i32 %a) nounwind readnone {



entry:
  %shl = shl i32 %a, 13
  ret i32 %shl
}

define i32 @lsl-reg(i32 %a, i32 %b) nounwind readnone {



entry:
  %shl = shl i32 %a, %b
  ret i32 %shl
}

define i32 @lsr-imm(i32 %a) nounwind readnone {



entry:
  %shr = lshr i32 %a, 13
  ret i32 %shr
}

define i32 @lsr-reg(i32 %a, i32 %b) nounwind readnone {



entry:
  %shr = lshr i32 %a, %b
  ret i32 %shr
}
