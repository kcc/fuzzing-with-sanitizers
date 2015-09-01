

define i32 @test1(i1 %C) {
entry:
        br i1 %C, label %T, label %F
T:              
        ret i32 1
F:              
        ret i32 0
}

define void @test2(i1 %C) {
        br i1 %C, label %T, label %F
T:              
        ret void
F:              
        ret void
}

