

define i8 @test21(i8 %A) {
        
        %C = ashr i8 %A, 7              
        
        %D = and i8 %C, 1               
        ret i8 %D
}

