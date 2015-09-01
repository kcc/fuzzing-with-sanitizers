




define i32 @test1() {
        %A = sext i1 true to i32                
        ret i32 %A
}

define i32 @test2() {
        %A = zext i1 true to i32                
        ret i32 %A
}

