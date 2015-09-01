


define i64 @test() {
	%tmp.i5 = call i64 asm sideeffect "rdtsc", "=A,~{dirflag},~{fpsr},~{flags}"( )		
	ret i64 %tmp.i5
}

