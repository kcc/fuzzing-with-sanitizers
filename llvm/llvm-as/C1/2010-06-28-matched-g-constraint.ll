


define i32 @foo() nounwind ssp {
entry:

  %_r = alloca i32, align 4                       
  call void asm "/* GCROOT $0 */", "=*imr,0,~{dirflag},~{fpsr},~{flags}"(i32* %_r, i32 4) nounwind
  %0 = load i32, i32* %_r, align 4                     
  ret i32 %0
}
