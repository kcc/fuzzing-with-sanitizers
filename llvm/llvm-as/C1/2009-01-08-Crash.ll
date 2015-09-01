




define i32 @test(i32 %bar) nounwind readnone {
entry:
        %bar_addr = alloca i32
        %0 = getelementptr i32, i32* %bar_addr, i32 -1
        %1 = load i32, i32* %0, align 4
        ret i32 %1
}
