

define i64 @foo(i32 %sum) {
entry:
  %conv = sext i32 %sum to i64
  %shr = lshr i64 %conv, 2
  %or = or i64 4611686018360279040, %shr
  ret i64 %or
}







