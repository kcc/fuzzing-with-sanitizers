


define i32 @test(i32* %arg) {
entry:
        %tmp2 = load i32, i32* %arg, align 1024      
        ret i32 %tmp2
}
