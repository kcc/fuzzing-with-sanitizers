

@x = external global i32                

define i32 @test() {
        %tmp.0 = load i32, i32* @x           
        %tmp.1 = shl i32 %tmp.0, 1              
        ret i32 %tmp.1
}

