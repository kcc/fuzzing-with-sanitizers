
target datalayout = "e-p:32:32"

define i32* @test(i32* %P) {
        %V = ptrtoint i32* %P to i32            
        %P2 = inttoptr i32 %V to i32*           
        ret i32* %P2

}

