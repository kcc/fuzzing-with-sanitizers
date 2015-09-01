




define i32 @test(i32 %A) {
        
        %B = mul i32 %A, 8              
        
        %C = add i32 %B, 7              
        
        %D = and i32 %C, -8             
        ret i32 %D
}

