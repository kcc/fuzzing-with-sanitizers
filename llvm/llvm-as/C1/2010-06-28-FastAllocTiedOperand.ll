

target triple = "i386-apple-darwin10"
%asmtype = type { i32, i8*, i32, i32 }










define i32 @func(i8* %s) nounwind ssp {
entry:
  %0 = tail call %asmtype asm "arg0 $0\0A\09arg1 $1\0A\09arg2 $2\0A\09arg3 $3\0A\09arg4 $4", "={ax},=r,=r,=r,1,~{dirflag},~{fpsr},~{flags}"(i8* %s) nounwind, !srcloc !0 
  %asmresult = extractvalue %asmtype %0, 0              
  ret i32 %asmresult
}

!0 = !{i32 108}
