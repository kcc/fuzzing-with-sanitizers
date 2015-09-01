


define void @xor_sse_2(i64 %bytes, i64* %p1, i64* %p2) {
entry:
        %p2_addr = alloca i64*          
        %lines = alloca i32             
        store i64* %p2, i64** %p2_addr, align 8
        %tmp1 = lshr i64 %bytes, 8              
        %tmp12 = trunc i64 %tmp1 to i32         
        store i32 %tmp12, i32* %lines, align 4
        %tmp6 = call i64* asm sideeffect "foo",
"=r,=*r,=*r,r,0,1,2,~{dirflag},~{fpsr},~{flags},~{memory}"( i64** %p2_addr,
i32* %lines, i64 256, i64* %p1, i64* %p2, i32 %tmp12 )              
        ret void
}
