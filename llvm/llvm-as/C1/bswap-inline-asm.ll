

define i32 @t1(i32 %x) nounwind {



  %asmtmp = tail call i32 asm "rev $0, $1\0A", "=l,l"(i32 %x) nounwind
  ret i32 %asmtmp
}
