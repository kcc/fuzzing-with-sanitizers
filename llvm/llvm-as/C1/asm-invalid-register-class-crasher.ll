



define i64 @t1(i64* %p, i64 %val) #0 {
entry:
  %0 = tail call i64 asm sideeffect "xaddq $0, $1", "=q,*m,0,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %p, i64 %val)
  ret i64 %0
}
