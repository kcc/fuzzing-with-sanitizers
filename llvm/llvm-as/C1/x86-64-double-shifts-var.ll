


























define i64 @lshift(i64 %a, i64 %b, i32 %c) nounwind readnone {
entry:

  %sh_prom = zext i32 %c to i64
  %shl = shl i64 %a, %sh_prom
  %sub = sub nsw i32 64, %c
  %sh_prom1 = zext i32 %sub to i64
  %shr = lshr i64 %b, %sh_prom1
  %or = or i64 %shr, %shl
  ret i64 %or
}






define i64 @rshift(i64 %a, i64 %b, i32 %c) nounwind readnone {
entry:

  %sh_prom = zext i32 %c to i64
  %shr = lshr i64 %a, %sh_prom
  %sub = sub nsw i32 64, %c
  %sh_prom1 = zext i32 %sub to i64
  %shl = shl i64 %b, %sh_prom1
  %or = or i64 %shl, %shr
  ret i64 %or
}


