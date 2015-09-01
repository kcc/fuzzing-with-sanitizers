

define i64 @test(i64 %A) {




    %B = lshr i64 %A, 56
    %C = shl i64 %B, 2
    ret i64 %C
}
