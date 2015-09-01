


define i32 @test0(i32 %X, i32 %Y) {
        %C = icmp eq i32 %X, %Y
        br i1 %C, label %T, label %F, !prof !0





T:
        ret i32 12
F:
        ret i32 123
}

define i32 @test1(i32 %X, i32 %Y) {
        %C = icmp ne i32 %X, %Y
        br i1 %C, label %T, label %F, !prof !1





T:
        ret i32 12
F:
        ret i32 123
}

define i32 @test2(i32 %X, i32 %Y) {
        %C = icmp ule i32 %X, %Y
        br i1 %C, label %T, label %F, !prof !2





T:
        ret i32 12
F:
        ret i32 123
}

define i32 @test3(i32 %X, i32 %Y) {
        %C = icmp uge i32 %X, %Y
        br i1 %C, label %T, label %F, !prof !3





T:
        ret i32 12
F:
        ret i32 123
}

!0 = !{!"branch_weights", i32 1, i32 2}
!1 = !{!"branch_weights", i32 3, i32 4}
!2 = !{!"branch_weights", i32 5, i32 6}
!3 = !{!"branch_weights", i32 7, i32 8}






