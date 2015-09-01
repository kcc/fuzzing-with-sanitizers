






define i32 @test(i1 %C) {
        %X = alloca i32         
        %X2 = alloca i32                
        store i32 1, i32* %X
        store i32 2, i32* %X2
        %Y = select i1 %C, i32* %X, i32* %X2            
        store i32 3, i32* %X
        %Z = load i32, i32* %Y               
        ret i32 %Z
}

