

define i32 @test() {
entry:
        ret i32 7
Test:           
        %A = call i32 @test( )          
        %B = call i32 @test( )          
        %C = add i32 %A, %B             
        ret i32 %C
}

