







define i64 @test(i64 %X, i1 %Cond ) {
entry:
        %divisor1 = select i1 %Cond, i64 16, i64 8
        %quotient1 = udiv i64 %X, %divisor1
        %divisor2 = select i1 %Cond, i64 8, i64 0
        %quotient2 = udiv i64 %X, %divisor2
        %sum = add i64 %quotient1, %quotient2
        ret i64 %sum
}
