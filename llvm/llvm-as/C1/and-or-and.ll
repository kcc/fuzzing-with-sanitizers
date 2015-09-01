













define i32 @test1(i32 %X, i32 %Y) {
        %A = and i32 %X, 7              
        %B = and i32 %Y, 8              
        %C = or i32 %A, %B              
        
        %D = and i32 %C, 7              
        ret i32 %D
}

define i32 @test2(i32 %X, i8 %Y) {
        %B = zext i8 %Y to i32          
        %C = or i32 %X, %B              
        
        %D = and i32 %C, 65536          
        ret i32 %D
}

define i32 @test3(i32 %X, i32 %Y) {
        %B = shl i32 %Y, 1              
        %C = or i32 %X, %B              
        
        %D = and i32 %C, 1              
        ret i32 %D
}

define i32 @test4(i32 %X, i32 %Y) {
        %B = lshr i32 %Y, 31            
        %C = or i32 %X, %B              
        
        %D = and i32 %C, 2              
        ret i32 %D
}

define i32 @or_test1(i32 %X, i32 %Y) {
        %A = and i32 %X, 1              
        
        %B = or i32 %A, 1               
        ret i32 %B
}

define i8 @or_test2(i8 %X, i8 %Y) {
        %A = shl i8 %X, 7               
        
        %B = or i8 %A, -128             
        ret i8 %B
}

