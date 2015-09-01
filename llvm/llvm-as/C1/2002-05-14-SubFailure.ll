




define i32 @test(i32 %i, i32 %j) {
        %A = mul i32 %i, %j
        %B = sub i32 2, %A
        ret i32 %B
}

