



	%0 = type { i32, i32 }		

define void @bn_sqr_comba8(i32* nocapture %r, i32* %a) nounwind {
entry:
	%asmtmp23 = tail call %0 asm "mulq $3", "={ax},={dx},{ax},*m,~{dirflag},~{fpsr},~{flags},~{cc}"(i32 0, i32* %a) nounwind		
	%asmresult25 = extractvalue %0 %asmtmp23, 1		
	%asmtmp26 = tail call %0 asm "addq $0,$0
	%asmresult27 = extractvalue %0 %asmtmp26, 0		
	%asmtmp29 = tail call %0 asm "addq $0,$0
	ret void
}
