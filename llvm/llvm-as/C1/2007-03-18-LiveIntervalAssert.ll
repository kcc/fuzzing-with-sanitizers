


define void @test() {
        %tmp2 = call i32 asm "...", "=r,~{dirflag},~{fpsr},~{flags},~{dx},~{cx},~{ax}"( )
        unreachable
}
