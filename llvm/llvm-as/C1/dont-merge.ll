



@T1G1 = internal constant i32 1, section "foo"
@T1G2 = internal constant i32 1, section "bar"
@T1G3 = internal constant i32 1, section "bar"





define void @test1(i32** %P1, i32** %P2, i32** %P3) {
        store i32* @T1G1, i32** %P1
        store i32* @T1G2, i32** %P2
        store i32* @T1G3, i32** %P3
        ret void
}

@T2a = internal constant i32 224
@T2b = internal addrspace(30) constant i32 224




define void @test2(i32** %P1, i32 addrspace(30)** %P2) {
        store i32* @T2a, i32** %P1
        store i32 addrspace(30)*  @T2b, i32 addrspace(30)** %P2
        ret void
}





@T3A = internal constant i32 0
@T3B = internal constant i32 0
@llvm.used = appending global [2 x i32*] [i32* @T3A, i32* @T3B], section
"llvm.metadata"

define void @test3() {
  call void asm sideeffect "T3A, T3B",""() 
  ret void
}
