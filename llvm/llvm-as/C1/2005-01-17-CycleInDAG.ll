






@GLOBAL = external global i32           

define i32 @test(i32* %P1, i32* %P2, i32* %P3) nounwind {
        %L = load i32, i32* @GLOBAL          
        store i32 12, i32* %P2
        %Y = load i32, i32* %P3              
        %Z = sub i32 %Y, %L             
        ret i32 %Z
}

