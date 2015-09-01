

@p = weak global i32 0          

define i32 @test(i32 %x) {
        %y = mul i32 %x, ptrtoint (i32* @p to i32)              
        ret i32 %y
}

