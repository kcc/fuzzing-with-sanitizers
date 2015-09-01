

@X = global i32 5               

define i64 @test() {
        %C = add i64 1, 2               
        %V = add i64 ptrtoint (i32* @X to i64), %C              
        ret i64 %V
}

