


define i32 @pure(i32 %X) {
        %Y = add i32 %X, 1              
        ret i32 %Y
}

define i32 @test1(i32 %X) {


        %A = call i32 @pure( i32 %X )           
        %B = call i32 @pure( i32 %X )           
        %C = sub i32 %A, %B             
        ret i32 %C
}

define i32 @test2(i32 %X, i32* %P) {



        %A = call i32 @pure( i32 %X )           
        store i32 %X, i32* %P 
        %B = call i32 @pure( i32 %X )           
        %C = sub i32 %A, %B             
        ret i32 %C
}
