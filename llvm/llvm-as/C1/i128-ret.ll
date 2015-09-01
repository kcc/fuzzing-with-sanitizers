




define i128 @test(i128 *%P) {
        %A = load i128, i128* %P
        ret i128 %A
}

