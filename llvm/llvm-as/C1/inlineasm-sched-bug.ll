




define i32 @foo(i32 %treemap) nounwind uwtable {
entry:
  %sub = sub i32 0, %treemap
  %and = and i32 %treemap, %sub
  %0 = tail call i32 asm "bsfl $1,$0\0A\09", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i32 %and) nounwind
  ret i32 %0
}

