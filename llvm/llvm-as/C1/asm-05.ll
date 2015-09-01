



define void @f1(i64 %base) {



  %addr = inttoptr i64 %base to i64 *
  call void asm "blah $0", "=*m" (i64 *%addr)
  ret void
}



