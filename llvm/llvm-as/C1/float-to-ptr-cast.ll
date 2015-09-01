

define i32* @test1() {
        %X = inttoptr i64 0 to i32*             
        ret i32* %X
}



define i32* @test2() {
        ret i32* null
}



