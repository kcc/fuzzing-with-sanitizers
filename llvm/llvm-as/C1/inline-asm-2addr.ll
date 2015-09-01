

define i64 @t(i64 %a, i64 %b) nounwind ssp {
entry:
	%asmtmp = tail call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 1, i64 %a) nounwind		
	%asmtmp1 = tail call i64 asm "rorq $1,$0", "=r,J,0,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 1, i64 %b) nounwind		
	%0 = add i64 %asmtmp1, %asmtmp		
	ret i64 %0
}
